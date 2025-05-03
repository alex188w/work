<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Ustanovka;
use App\Models\UstanovkaWork;
use App\Models\Gazoprovod;
use Illuminate\Contracts\View\Factory;
use Illuminate\View\View;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Carbon\Carbon;
use Log;

class UstanovkaController extends Controller
{
    // Метод для подстановки названия УКЗ после введения id
    public function getUstanovkaName($id)
    {
        $ustanovka = Ustanovka::find($id);
        return response()->json(['name' => $ustanovka ? $ustanovka->name : '']);
    }

    public function index()
    {
        // var_dump('$ustanovkas');
        
        $ustanovkas = Ustanovka::all(); // Получаем все установки 
        $gazoprovods = Gazoprovod::with('ustanovkas')->get();

        $startOfWeek = Carbon::now()->startOfWeek(); // Понедельник
        $endOfWeek = Carbon::now()->endOfWeek(); // Воскресенье
    
        foreach ($ustanovkas as $ustanovka) {
            $tableName = 'ukz_' . $ustanovka->id;
            if (Schema::hasTable($tableName)) {
                $workModel = $ustanovka->getWorkTable();
    
                // Все запланированные работы
                $ustanovka->all_works = $workModel->newQuery()->get();
    
                // Работы на текущий месяц
                $ustanovka->month_works = $workModel->newQuery()
                    ->whereMonth('work_date', Carbon::now()->month)
                    ->whereYear('work_date', Carbon::now()->year)
                    ->get();
    
                // Работы на текущую неделю
                $ustanovka->week_works = $workModel->newQuery()
                    ->whereBetween('work_date', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])
                    ->get();
    
                // Просроченные работы (до текущей недели и не выполненные)
                $ustanovka->past_works = $workModel->newQuery()
                    ->where('is_done', 0)
                    ->where('work_date', '<', Carbon::now()->startOfWeek())
                    ->get();                    
            } else {
                // Устанавливаем пустые коллекции, если таблицы нет
                $ustanovka->all_works = collect();
                $ustanovka->month_works = collect();
                $ustanovka->week_works = collect();
                $ustanovka->past_works = collect();
            }
        }
        return view('index', compact('ustanovkas', 'gazoprovods'));
    }

    public function worksList()
    {
        $ustanovkas = Ustanovka::all(); // Получаем все установки
    
        foreach ($ustanovkas as $ustanovka) {
            $tableName = 'ukz_' . $ustanovka->id;
            if (Schema::hasTable($tableName)) {
                $workModel = $ustanovka->getWorkTable();
    
                // Все запланированные работы
                $ustanovka->all_works = $workModel->newQuery()->get();
    
                // Работы на текущий месяц
                $ustanovka->month_works = $workModel->newQuery()
                    ->whereMonth('work_date', Carbon::now()->month)
                    ->whereYear('work_date', Carbon::now()->year)
                    ->get();
    
                // Работы на текущую неделю
                $ustanovka->week_works = $workModel->newQuery()
                    ->whereBetween('work_date', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])
                    ->get();
    
                // Просроченные работы (до текущей недели и не выполненные)
                $ustanovka->past_works = $workModel->newQuery()
                    ->where('is_done', 0)
                    ->where('work_date', '<', Carbon::now()->startOfWeek())
                    ->get();                    
            } else {
                // Устанавливаем пустые коллекции, если таблицы нет
                $ustanovka->all_works = collect();
                $ustanovka->month_works = collect();
                $ustanovka->week_works = collect();
                $ustanovka->past_works = collect();
            }
        }
        
    
        return view('works_list', compact('ustanovkas'));
    }

    public function showWork($id)
    {       
        $ustanovka = Ustanovka::find($id);
        $gazoprovodName = $ustanovka->gazoprovod->name; // Доступ к газопроводу через установку
        $ustanovkaName = $ustanovka->name;

        if (!$ustanovka) {
            return redirect()->back()->with('error', 'Установка не найдена!');
        }

        // Получаем все работы по установке
        $workModel = $ustanovka->getWorkTable();
        $works = $workModel->newQuery()->get(); // Используем объектный метод

        return view('showWork', compact('works', 'gazoprovodName', 'ustanovka'));
    }

    public function addWork($ustanovka_id)
    {

        $ustanovka = Ustanovka::find($ustanovka_id);
        $gazoprovodName = $ustanovka->gazoprovod->name; // Доступ к газопроводу через установку
        $ustanovkaName = $ustanovka->name;   

        $tableName = 'ukz_' . $ustanovka_id;

        // Создаем динамическую модель
        $workModel = new UstanovkaWork();
        $workModel->setTable($tableName);

        return view('addWork', compact('ustanovka_id', 'ustanovkaName'));
    }
    
    public function addWorkAction(Request $request, $ustanovka_id)
    {
        $text = '';
        
        $ustanovka = Ustanovka::find($request->ustanovka_id);
        $gazoprovodName = $ustanovka->gazoprovod->name; // Доступ к газопроводу через установку
        $ustanovkaName = $ustanovka->name;
        $work_date = $request->work_date;    

        if (!$ustanovka) {
            $text = 'Установка не найдена!';
            return redirect()->back()->with('text', $text);
        }

        $auto = implode(', ', array_filter([$request->auto1, $request->auto2, $request->auto3]));
        // dd($auto);  
        // Добавляем новую работу
        $data = $request->only(["ustanovka_id", "type_of_work", "work_date"]);
        $data["auto"] = $auto; // Добавляем строку авто в массив
        $ustanovka->addWork($data); 
        $text = 'Работа добавлена для ' . $ustanovkaName . ' на ' . $work_date . '!';

        return redirect()->back()->with('text', $text);
    }

    public function edit($ustanovka_id, $work_id)
    {
        $ustanovka = Ustanovka::find($ustanovka_id);
        $gazoprovodName = $ustanovka->gazoprovod->name; // Доступ к газопроводу через установку
        $ustanovkaName = $ustanovka->name;
        // Определяем таблицу
        $tableName = 'ukz_' . $ustanovka_id;

        // Создаем динамическую модель
        $workModel = new UstanovkaWork();
        $workModel->setTable($tableName);

        // Находим запись
        $work = $workModel->find($work_id);

        $files = Storage::files('works/' . $ustanovka_id);

        // var_dump($files);
        // foreach ($files as $file) {
        //     echo Storage::url($file) . "<br>";
        // }

        if (!$work) {
            return redirect()->back()->with('error', 'Запись не найдена!');
        }
        return view('editWork', compact('work', 'ustanovka_id', 'ustanovkaName', 'files'));
    }

    public function update(Request $request, $ustanovka_id, $work_id)
    {
        $text = '';
        $tableName = 'ukz_' . $ustanovka_id;
        $workModel = new UstanovkaWork();
        $workModel->setTable($tableName);

        $work_date = $request->work_date;    
        $ustanovkaName = $request->ustanovka_name;

        $work = $workModel->find($work_id);   

        if (!$work) {
            return response()->json(['success' => false, 'message' => 'Работа не найдена']);
        }

        // Загрузка изображений, получение 'image_path' осуществляется через отдельную форму и 
        // метод public function uploadImage(Request $request, $ustanovka_id, $work_id) контроллеа ImageUploadController

        $data = $request->only(["ustanovka_id", "type_of_work", "work_date", "I", "U", "Usum", "Upol", "snv", "EE", "work_performers", "work_description", "remarks", "is_done"]);
        // $work->update($request->except(['id', 'csrf_token', 'submit', '/addWork', '/work/update/2/5']));
    
        $work->update($data);   
        $text = 'Данные сохранены!'; 
       
        return redirect()->back()->with('text', $text);
        // return response()->json(['success' => false, 'message' => 'Ошибка при загрузке изображения.']);
        // return response()->json([
        //     'success' => true,
        //     'message' => 'Работа успешно обновлена',
        //     // 'image_url' => $data['image_path'] ?? null  // Возвращаем URL загруженного изображения (если оно было загружено)
        // ], 200);
    }
}

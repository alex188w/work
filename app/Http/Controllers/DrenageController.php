<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Drenage;
use App\Models\DrenageWork;
use App\Models\Gazoprovod;
use Illuminate\Contracts\View\Factory;
use Illuminate\View\View;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Carbon\Carbon;
use Log;

class DrenageController extends Controller
{
    // Метод для подстановки названия УКЗ после введения id
    public function getDrenageName($id)
    {
        $drenage = Drenage::find($id);
        return response()->json(['name' => $drenage ? $drenage->name : '']);
    }

    public function index()
    {
        $drenages = Drenage::all(); // Получаем все установки 
        $gazoprovods = Gazoprovod::with('drenages')->get();

        $startOfWeek = Carbon::now()->startOfWeek(); // Понедельник
        $endOfWeek = Carbon::now()->endOfWeek(); // Воскресенье
    
        foreach ($drenages as $drenage) {
            $tableName = 'udz_' . $drenage->id;
            if (Schema::hasTable($tableName)) {
                $workModel = $drenage->getWorkTable();
    
                // Все запланированные работы
                $drenage->all_works = $workModel->newQuery()->get();
    
                // Работы на текущий месяц
                $drenage->month_works = $workModel->newQuery()
                    ->whereMonth('work_date', Carbon::now()->month)
                    ->whereYear('work_date', Carbon::now()->year)
                    ->get();
    
                // Работы на текущую неделю
                $drenage->week_works = $workModel->newQuery()
                    ->whereBetween('work_date', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])
                    ->get();
    
                // Просроченные работы (до текущей недели и не выполненные)
                $drenage->past_works = $workModel->newQuery()
                    ->where('is_done', 0)
                    ->where('work_date', '<', Carbon::now()->startOfWeek())
                    ->get();                    
            } else {
                // Устанавливаем пустые коллекции, если таблицы нет
                $drenage->all_works = collect();
                $drenage->month_works = collect();
                $drenage->week_works = collect();
                $drenage->past_works = collect();
            }
        }
        return view('index', compact('drenages', 'gazoprovods'));
    }

    public function worksList()
    {
        $drenages = Drenage::all(); // Получаем все установки
    
        foreach ($drenages as $drenage) {
            $tableName = 'udz_' . $drenage->id;
            if (Schema::hasTable($tableName)) {
                $workModel = $drenage->getWorkTable();
    
                // Все запланированные работы
                $drenage->all_works = $workModel->newQuery()->get();
    
                // Работы на текущий месяц
                $drenage->month_works = $workModel->newQuery()
                    ->whereMonth('work_date', Carbon::now()->month)
                    ->whereYear('work_date', Carbon::now()->year)
                    ->get();
    
                // Работы на текущую неделю
                $drenage->week_works = $workModel->newQuery()
                    ->whereBetween('work_date', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])
                    ->get();
    
                // Просроченные работы (до текущей недели и не выполненные)
                $drenage->past_works = $workModel->newQuery()
                    ->where('is_done', 0)
                    ->where('work_date', '<', Carbon::now()->startOfWeek())
                    ->get();                    
            } else {
                // Устанавливаем пустые коллекции, если таблицы нет
                $drenage->all_works = collect();
                $drenage->month_works = collect();
                $drenage->week_works = collect();
                $drenage->past_works = collect();
            }
        } 
        return view('works_list', compact('drenages'));
    }

    public function showWork($id)
    {       
        $drenage = Drenage::find($id);

        // dd($drenage);
        $gazoprovodName = $drenage->gazoprovod->name; // Доступ к газопроводу через установку
        $drenageName = $drenage->name;

        if (!$drenage) {
            return redirect()->back()->with('error', 'Установка не найдена!');
        }

        // Получаем все работы по установке
        $workModel = $drenage->getWorkTable();
        $works = $workModel->newQuery()->get(); // Используем объектный метод

        return view('Drenage/showDrenage', compact('works', 'gazoprovodName', 'drenage'));
    }

    public function addDrenage($drenage_id)
    {

        $drenage = Drenage::find($drenage_id);
        // dd($drenage);
        $gazoprovodName = $drenage->gazoprovod->name; // Доступ к газопроводу через установку
        $drenageName = $drenage->name;   

        $tableName = 'udz_' . $drenage_id;

        // Создаем динамическую модель
        $workModel = new DrenageWork();
        $workModel->setTable($tableName);

        return view('Drenage/addDrenage', compact('drenage_id', 'drenageName'));
    }
    
    public function addDrenageAction(Request $request, $drenage_id)
    {
        $text = '';
        
        $drenage = Drenage::find($request->drenage_id);
        $gazoprovodName = $drenage->gazoprovod->name; // Доступ к газопроводу через установку
        $drenageName = $drenage->name;
        $work_date = $request->work_date;    

        if (!$drenage) {
            $text = 'Установка не найдена!';
            return redirect()->back()->with('text', $text);
        }

        $auto = implode(', ', array_filter([$request->auto1, $request->auto2, $request->auto3]));
        // dd($auto);  
        // Добавляем новую работу
        $data = $request->only(["drenage_id", "type_of_work", "work_date"]);
        $data["auto"] = $auto; // Добавляем строку авто в массив
        $drenage->addDrenage($data); 
        $text = 'Работа добавлена для ' . $drenageName . ' на ' . $work_date . '!';

        return redirect()->back()->with('text', $text);
    }

    public function edit($drenage_id, $work_id)
    {
        $drenage = Drenage::find($drenage_id);
        $gazoprovodName = $drenage->gazoprovod->name; // Доступ к газопроводу через установку
        $drenageName = $drenage->name;
        // Определяем таблицу
        $tableName = 'udz_' . $drenage_id;

        // Создаем динамическую модель
        $workModel = new DrenageWork();
        $workModel->setTable($tableName);

        // Находим запись
        $work = $workModel->find($work_id);
        $files = Storage::files('works/' . $drenage_id);
 
        if (!$work) {
            return redirect()->back()->with('error', 'Запись не найдена!');
        }
        return view('Drenage/editDrenage', compact('work', 'drenage_id', 'drenageName', 'files'));
    }

    public function updateDrenage(Request $request, $drenage_id, $work_id)
    {
        $text = '';
        $tableName = 'udz_' . $drenage_id;
        $workModel = new DrenageWork();
        $workModel->setTable($tableName);

        $work_date = $request->work_date;    
        $drenageName = $request->drenage_name;

        $work = $workModel->find($work_id);   

        if (!$work) {
            return response()->json(['success' => false, 'message' => 'Работа не найдена']);
        }

        // Загрузка изображений, получение 'image_path' осуществляется через отдельную форму - 
        // метод public function uploadImage(Request $request, $drenage_id, $work_id) контроллеа ImageUploadController

        $data = $request->only(["drenage_id", "type_of_work", "work_date", "Imax", "Imin", "Icp", "Utr_z", "Utr_r", "Upol", "work_performers", "work_description", "remarks", "is_done"]);
        $work->update($data);   
        $text = 'Данные сохранены!'; 
       
        return redirect()->back()->with('text', $text);        
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use App\Models\Protector;
use App\Models\ProtectorWork;
use App\Models\Gazoprovod;
use Illuminate\Contracts\View\Factory;
use Illuminate\View\View;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Carbon\Carbon;
use Log;

class ProtectorController extends Controller
{
    public function getProtectorName($id)
    {
        $protector = Protector::find($id);
        return response()->json(['name' => $protector ? $protector->name : '']);
    }

    public function index()
    {
        $protectors = Protector::all(); // Получаем все установки 
        $gazoprovods = Gazoprovod::with('protectors')->get();

        $startOfWeek = Carbon::now()->startOfWeek(); // Понедельник
        $endOfWeek = Carbon::now()->endOfWeek(); // Воскресенье
    
        foreach ($protectors as $protector) {
            $tableName = 'upz_' . $protector->id;
            if (Schema::hasTable($tableName)) {
                $workModel = $protector->getWorkTable();
    
                // Все запланированные работы
                $protector->all_works = $workModel->newQuery()->get();
    
                // Работы на текущий месяц
                $protector->month_works = $workModel->newQuery()
                    ->whereMonth('work_date', Carbon::now()->month)
                    ->whereYear('work_date', Carbon::now()->year)
                    ->get();
    
                // Работы на текущую неделю
                $protector->week_works = $workModel->newQuery()
                    ->whereBetween('work_date', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])
                    ->get();
    
                // Просроченные работы (до текущей недели и не выполненные)
                $protector->past_works = $workModel->newQuery()
                    ->where('is_done', 0)
                    ->where('work_date', '<', Carbon::now()->startOfWeek())
                    ->get();                    
            } else {
                // Устанавливаем пустые коллекции, если таблицы нет
                $protector->all_works = collect();
                $protector->month_works = collect();
                $protector->week_works = collect();
                $protector->past_works = collect();
            }
        }
        return view('index', compact('protectors', 'gazoprovods'));
    }

    public function worksList()
    {
        $protectors = Protector::all(); // Получаем все установки
    
        foreach ($protectors as $protector) {
            $tableName = 'upz_' . $protector->id;
            if (Schema::hasTable($tableName)) {
                $workModel = $protector->getWorkTable();
    
                // Все запланированные работы
                $protector->all_works = $workModel->newQuery()->get();
    
                // Работы на текущий месяц
                $protector->month_works = $workModel->newQuery()
                    ->whereMonth('work_date', Carbon::now()->month)
                    ->whereYear('work_date', Carbon::now()->year)
                    ->get();
    
                // Работы на текущую неделю
                $protector->week_works = $workModel->newQuery()
                    ->whereBetween('work_date', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])
                    ->get();
    
                // Просроченные работы (до текущей недели и не выполненные)
                $protector->past_works = $workModel->newQuery()
                    ->where('is_done', 0)
                    ->where('work_date', '<', Carbon::now()->startOfWeek())
                    ->get();                    
            } else {
                // Устанавливаем пустые коллекции, если таблицы нет
                $protector->all_works = collect();
                $protector->month_works = collect();
                $protector->week_works = collect();
                $protector->past_works = collect();
            }
        } 
        return view('works_list', compact('protectors'));
    }

    public function showWork($id)
    {       
        $protector = Protector::find($id);

        // dd($protector);
        $gazoprovodName = $protector->gazoprovod->name; // Доступ к газопроводу через установку
        $protectorName = $protector->name;

        if (!$protector) {
            return redirect()->back()->with('error', 'Установка не найдена!');
        }

        // Получаем все работы по установке
        $workModel = $protector->getWorkTable();
        $works = $workModel->newQuery()->get(); // Используем объектный метод

        return view('Protector/showProtector', compact('works', 'gazoprovodName', 'protector'));
    }

    public function addProtector($protector_id)
    {

        $protector = Protector::find($protector_id);
        // dd($protector);
        $gazoprovodName = $protector->gazoprovod->name; // Доступ к газопроводу через установку
        $protectorName = $protector->name;   

        $tableName = 'upz_' . $protector_id;

        // Создаем динамическую модель
        $workModel = new ProtectorWork();
        $workModel->setTable($tableName);

        return view('Protector/addProtector', compact('protector_id', 'protectorName'));
    }
    
    public function addProtectorAction(Request $request, $protector_id)
    {
        $text = '';
        
        $protector = Protector::find($request->protector_id);
        $gazoprovodName = $protector->gazoprovod->name; // Доступ к газопроводу через установку
        $protectorName = $protector->name;
        $work_date = $request->work_date;    

        if (!$protector) {
            $text = 'Установка не найдена!';
            return redirect()->back()->with('text', $text);
        }

        $auto = implode(', ', array_filter([$request->auto1, $request->auto2, $request->auto3]));
        // dd($auto);  
        // Добавляем новую работу
        $data = $request->only(["protector_id", "type_of_work", "work_date"]);
        $data["auto"] = $auto; // Добавляем строку авто в массив
        $protector->addProtector($data); 
        $text = 'Работа добавлена для ' . $protectorName . ' на ' . $work_date . '!';

        return redirect()->back()->with('text', $text);
    }

    public function edit($protector_id, $work_id)
    {
        $protector = Protector::find($protector_id);
        $gazoprovodName = $protector->gazoprovod->name; // Доступ к газопроводу через установку
        $protectorName = $protector->name;
        // Определяем таблицу
        $tableName = 'upz_' . $protector_id;

        // Создаем динамическую модель
        $workModel = new ProtectorWork();
        $workModel->setTable($tableName);

        // Находим запись
        $work = $workModel->find($work_id);
        $files = Storage::files('works/' . $protector_id);
 
        if (!$work) {
            return redirect()->back()->with('error', 'Запись не найдена!');
        }
        return view('Protector/editProtector', compact('work', 'protector_id', 'protectorName', 'files'));
    }

    public function updateProtector(Request $request, $protector_id, $work_id)
    {
        $text = '';
        $tableName = 'upz_' . $protector_id;
        $workModel = new ProtectorWork();
        $workModel->setTable($tableName);

        $work_date = $request->work_date;    
        $protectorName = $request->protector_name;

        $work = $workModel->find($work_id);   

        if (!$work) {
            return response()->json(['success' => false, 'message' => 'Работа не найдена']);
        }

        // Загрузка изображений, получение 'image_path' осуществляется через отдельную форму - 
        // метод public function uploadImage(Request $request, $protector_id, $work_id) контроллеа ImageUploadController

        $data = $request->only(["protector_id", "type_of_work", "work_date", "Utr_z", "Upr_z", "Upol", "Ipr", "Rpr_tr", "Ro_grunt", "work_performers", "work_description", "remarks", "is_done"]);
        $work->update($data);   
        $text = 'Данные сохранены!'; 
       
        return redirect()->back()->with('text', $text);        
    }
}

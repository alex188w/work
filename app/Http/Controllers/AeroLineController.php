<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use App\Models\AeroLine;
use App\Models\AeroLineWork;
use App\Models\Gazoprovod;
use Illuminate\Contracts\View\Factory;
use Illuminate\View\View;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Carbon\Carbon;
use Log;

class AeroLineController extends Controller
{
    public function getAeroLineName($id)
    {
        $aeroLine = AeroLine::find($id);
        return response()->json(['name' => $aeroLine ? $aeroLine->name : '']);
    }

    public function index()
    {
        $aeroLines = AeroLine::all(); // Получаем все установки 
        $gazoprovods = Gazoprovod::with('aeroLines')->get();

        $startOfWeek = Carbon::now()->startOfWeek(); // Понедельник
        $endOfWeek = Carbon::now()->endOfWeek(); // Воскресенье
    
        foreach ($aeroLines as $aeroLine) {
            $tableName = 'wl_' . $aeroLine->id;
            if (Schema::hasTable($tableName)) {
                $workModel = $aeroLine->getWorkTable();
    
                // Все запланированные работы
                $aeroLine->all_works = $workModel->newQuery()->get();
    
                // Работы на текущий месяц
                $aeroLine->month_works = $workModel->newQuery()
                    ->whereMonth('work_date', Carbon::now()->month)
                    ->whereYear('work_date', Carbon::now()->year)
                    ->get();
    
                // Работы на текущую неделю
                $aeroLine->week_works = $workModel->newQuery()
                    ->whereBetween('work_date', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])
                    ->get();
    
                // Просроченные работы (до текущей недели и не выполненные)
                $aeroLine->past_works = $workModel->newQuery()
                    ->where('is_done', 0)
                    ->where('work_date', '<', Carbon::now()->startOfWeek())
                    ->get();                    
            } else {
                // Устанавливаем пустые коллекции, если таблицы нет
                $aeroLine->all_works = collect();
                $aeroLine->month_works = collect();
                $aeroLine->week_works = collect();
                $aeroLine->past_works = collect();
            }
        }
        return view('index', compact('aeroLines', 'gazoprovods'));
    }

    public function worksList()
    {
        $aeroLines = AeroLine::all(); // Получаем все установки
    
        foreach ($aeroLines as $aeroLine) {
            $tableName = 'wl_' . $aeroLine->id;
            if (Schema::hasTable($tableName)) {
                $workModel = $aeroLine->getWorkTable();
    
                // Все запланированные работы
                $aeroLine->all_works = $workModel->newQuery()->get();
    
                // Работы на текущий месяц
                $aeroLine->month_works = $workModel->newQuery()
                    ->whereMonth('work_date', Carbon::now()->month)
                    ->whereYear('work_date', Carbon::now()->year)
                    ->get();
    
                // Работы на текущую неделю
                $aeroLine->week_works = $workModel->newQuery()
                    ->whereBetween('work_date', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])
                    ->get();
    
                // Просроченные работы (до текущей недели и не выполненные)
                $aeroLine->past_works = $workModel->newQuery()
                    ->where('is_done', 0)
                    ->where('work_date', '<', Carbon::now()->startOfWeek())
                    ->get();                    
            } else {
                // Устанавливаем пустые коллекции, если таблицы нет
                $aeroLine->all_works = collect();
                $aeroLine->month_works = collect();
                $aeroLine->week_works = collect();
                $aeroLine->past_works = collect();
            }
        } 
        return view('works_list', compact('aeroLines'));
    }

    public function showWork($id)
    {       
        $aeroLine = AeroLine::find($id);

        // dd($aeroLine);
        $gazoprovodName = $aeroLine->gazoprovod->name; // Доступ к газопроводу через установку
        $aeroLineName = $aeroLine->name;

        if (!$aeroLine) {
            return redirect()->back()->with('error', 'Установка не найдена!');
        }

        // Получаем все работы по установке
        $workModel = $aeroLine->getWorkTable();
        $works = $workModel->newQuery()->get(); // Используем объектный метод

        return view('AeroLine/showAeroLine', compact('works', 'gazoprovodName', 'aeroLine'));
    }

    public function addAeroLine($aeroLine_id)
    {

        $aeroLine = AeroLine::find($aeroLine_id);
        // dd($aeroLine);
        $gazoprovodName = $aeroLine->gazoprovod->name; // Доступ к газопроводу через установку
        $aeroLineName = $aeroLine->name;   

        $tableName = 'wl_' . $aeroLine_id;

        // Создаем динамическую модель
        $workModel = new aeroLineWork();
        $workModel->setTable($tableName);

        return view('AeroLine/addAeroLine', compact('aeroLine_id', 'aeroLineName'));
    }
    
    public function addAeroLineAction(Request $request, $aeroLine_id)
    {
        $text = '';
        
        $aeroLine = AeroLine::find($request->aeroLine_id);
        $gazoprovodName = $aeroLine->gazoprovod->name; // Доступ к газопроводу через установку
        $aeroLineName = $aeroLine->name;
        $work_date = $request->work_date;    

        if (!$aeroLine) {
            $text = 'Установка не найдена!';
            return redirect()->back()->with('text', $text);
        }

        $auto = implode(', ', array_filter([$request->auto1, $request->auto2, $request->auto3]));
        // dd($auto);  
        // Добавляем новую работу
        $data = $request->only(["aeroLine_id", "type_of_work", "work_date"]);
        $data["auto"] = $auto; // Добавляем строку авто в массив
        $aeroLine->addAeroLine($data); 
        $text = 'Работа добавлена для ' . $aeroLineName . ' на ' . $work_date . '!';

        return redirect()->back()->with('text', $text);
    }

    public function edit($aeroLine_id, $work_id)
    {
        $aeroLine = AeroLine::find($aeroLine_id);
        $gazoprovodName = $aeroLine->gazoprovod->name; // Доступ к газопроводу через установку
        $aeroLineName = $aeroLine->name;
        // Определяем таблицу
        $tableName = 'wl_' . $aeroLine_id;

        // Создаем динамическую модель
        $workModel = new AeroLineWork();
        $workModel->setTable($tableName);

        // Находим запись
        $work = $workModel->find($work_id);
        $files = Storage::files('works/' . $aeroLine_id);
 
        if (!$work) {
            return redirect()->back()->with('error', 'Запись не найдена!');
        }
        return view('AeroLine/editAeroLine', compact('work', 'aeroLine_id', 'aeroLineName', 'files'));
    }

    public function updateAeroLine(Request $request, $aeroLine_id, $work_id)
    {
        $text = '';
        $tableName = 'wl_' . $aeroLine_id;
        $workModel = new AeroLineWork();
        $workModel->setTable($tableName);

        $work_date = $request->work_date;    
        $aeroLineName = $request->aeroLine_name;

        $work = $workModel->find($work_id);   

        if (!$work) {
            return response()->json(['success' => false, 'message' => 'Работа не найдена']);
        }

        // Загрузка изображений, получение 'image_path' осуществляется через отдельную форму - 
        // метод public function uploadImage(Request $request, $aeroLine_id, $work_id) контроллеа ImageUploadController

        $data = $request->only(["aeroLine_id", "type_of_work", "work_date", "Imax", "Imin", "Icp", "Utr_z", "Utr_r", "Upol", "work_performers", "work_description", "remarks", "is_done"]);
        $work->update($data);   
        $text = 'Данные сохранены!'; 
       
        return redirect()->back()->with('text', $text);        
    }
}

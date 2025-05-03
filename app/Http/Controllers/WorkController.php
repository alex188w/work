<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Schema;
use Carbon\Carbon;
use App\Models\Ustanovka;
use App\Models\Drenage;
use App\Models\Protector;
use App\Models\AeroLine;
use App\Models\Gazoprovod;

class WorkController extends Controller
{
    public function index()
    {    
        $ustanovkas = Ustanovka::all();
        $drenages = Drenage::all();
        $protectors = Protector::all();
        $aeroLines = AeroLine::all();
        $gazoprovods = Gazoprovod::with('ustanovkas')->get();

        $startOfWeek = Carbon::now()->startOfWeek();
        $endOfWeek = Carbon::now()->endOfWeek();

        // Функция для загрузки запланированных работ по модели
        $getWorks = function ($items, $prefix) use ($startOfWeek, $endOfWeek) {
            foreach ($items as $item) {
                $tableName = $prefix . $item->id;
                if (Schema::hasTable($tableName)) {
                    $workModel = $item->getWorkTable();

                    $item->all_works = $workModel->newQuery()->get();
                    $item->month_works = $workModel->newQuery()
                        ->whereMonth('work_date', Carbon::now()->month)
                        ->whereYear('work_date', Carbon::now()->year)
                        ->get();
                    $item->week_works = $workModel->newQuery()
                        ->whereBetween('work_date', [$startOfWeek, $endOfWeek])
                        ->get();
                    $item->past_works = $workModel->newQuery()
                        ->where('is_done', 0)
                        ->where('work_date', '<', $startOfWeek)
                        ->get();
                } else {
                    $item->all_works = collect();
                    $item->month_works = collect();
                    $item->week_works = collect();
                    $item->past_works = collect();
                }
            }
        };

        // Загружаем работы по всем моделям
        $getWorks($ustanovkas, 'ukz_');
        $getWorks($drenages, 'udz_');
        $getWorks($protectors, 'upz_');
        $getWorks($aeroLines, 'wl_');

        return view('index', compact('ustanovkas', 'drenages', 'protectors', 'aeroLines', 'gazoprovods'));
    }
}
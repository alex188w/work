<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use App\Models\Ustanovka;
use App\Models\UstanovkaWork;
use App\Models\DrenageWork;
// use App\Models\Protector;
use App\Models\ProtectorWork;
// use App\Models\AeroLine;
use App\Models\AeroLineWork;

class ChartController extends Controller
{
    public function index($ustanovka_id)
    {

        $ustanovka = Ustanovka::find($ustanovka_id);
        $gazoprovodName = $ustanovka->gazoprovod->name; // Доступ к газопроводу через установку
        $ustanovkaName = $ustanovka->name;   

        $tableName = 'ukz_' . $ustanovka_id;

        // Создаем динамическую модель
        $workModel = new UstanovkaWork();
        $workModel->setTable($tableName);
        
        $data = $workModel->newQuery()
            ->select('work_date', 'I')
            ->orderBy('work_date', 'asc')
            ->get();

        return view('chart', compact('data'));
    }

    public function getChartData($ustanovka_id)
    {
        switch (true) {
            case ($ustanovka_id < 96):
                $tableName = 'ukz_' . $ustanovka_id;
                $workModel = new UstanovkaWork();
                $workModel->setTable($tableName);
        
                $data = $workModel->newQuery()
                    ->select('work_date', 'I', 'U')
                    ->orderBy('work_date', 'asc')
                    ->get();
                break;
        
            case ($ustanovka_id > 95 && $ustanovka_id < 126):
                $tableName = 'udz_' . $ustanovka_id;
                $workModel = new DrenageWork();
                $workModel->setTable($tableName);
        
                $data = $workModel->newQuery()
                    ->select('work_date', 'Imax', 'Utr_z', 'Upol')
                    ->orderBy('work_date', 'asc')
                    ->get();                
                break;

            case ($ustanovka_id > 125 && $ustanovka_id < 138):
                $tableName = 'upz_' . $ustanovka_id;
                $workModel = new ProtectorWork();
                $workModel->setTable($tableName);

                $data = $workModel->newQuery()
                    ->select('work_date', 'Ipr', 'Utr_z', 'Rpr_tr')
                    ->orderBy('work_date', 'asc')
                    ->get();
                break;

            case ($ustanovka_id > 137 && $ustanovka_id < 172):
                $tableName = 'wl_' . $ustanovka_id;
                $workModel = new ProtectorWork();
                break;
        
            default:
                // Действие, если drenage_id == 50 
                break;
        }
        return response()->json($data);
    }
}

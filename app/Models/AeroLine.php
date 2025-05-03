<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Gazoprovod;
use App\Models\AeroLineWork;

class AeroLine extends Model
{
    protected $table = 'aero_lines';

    public function gazoprovod()
    {
        return $this->belongsTo(Gazoprovod::class, 'gazoprovod_id');
    }

    public function getWorkTable()
    {
        // Создаем имя таблицы, используя id установки
        $tableName = 'wl_' . $this->id; 

        // Создаем экземпляр модели и указываем таблицу
        $workModel = new AeroLineWork();
        $workModel->setTable($tableName);
    
        return $workModel;    
    }

    // Пример добавления новой работы для этой установки
    public function addAeroLine(array $data)
    {
        $workModel = $this->getWorkTable();        
        $workModel->fill($data);
        $workModel->save();
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Gazoprovod;
use App\Models\DrenageWork;

class Drenage extends Model
{
    protected $table = 'drenages';

    public function gazoprovod()
    {
        return $this->belongsTo(Gazoprovod::class, 'gazoprovod_id');
    }

    public function getWorkTable()
    {
        // Создаем имя таблицы, используя id установки
        $tableName = 'udz_' . $this->id; 

        // Создаем экземпляр модели и указываем таблицу
        $workModel = new DrenageWork();
        $workModel->setTable($tableName);
    
        return $workModel;    
    }

    // Пример добавления новой работы для этой установки
    public function addDrenage(array $data)
    {
        $workModel = $this->getWorkTable();        
        $workModel->fill($data);
        $workModel->save();
    }
}

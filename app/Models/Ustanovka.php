<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Gazoprovod;
use App\Models\UstanovkaWork;

class Ustanovka extends Model
{
    
    /** @use HasFactory<\Database\Factories\UstanovkaFactory> */
    // use HasFactory;
    protected $table = 'ustanovkas';

    public function gazoprovod()
    {
        return $this->belongsTo(Gazoprovod::class, 'gazoprovod_id');
    }

    public function getWorkTable()
    {
        // Создаем имя таблицы, используя id установки
        $tableName = 'ukz_' . $this->id; 

        // Создаем экземпляр модели и указываем таблицу
        $workModel = new UstanovkaWork();
        $workModel->setTable($tableName);
    
        return $workModel;    
    }

    // Пример добавления новой работы для этой установки
    // public function addWork($name, $workDescription)
    public function addWork(array $data)
    {
        $workModel = $this->getWorkTable();        
        $workModel->fill($data);
        $workModel->save();
    }
}

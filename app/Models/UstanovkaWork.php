<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UstanovkaWork extends Model
{
    use HasFactory;

    protected $guarded = []; // Разрешаем массовое присвоение

    public $timestamps = false; // Если нет created_at и updated_at, отключаем

    // Отключаем автоматическое определение имени таблицы
    protected $table = null;
}

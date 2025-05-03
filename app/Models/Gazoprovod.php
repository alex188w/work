<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Ustanovka;
use App\Models\Drenage;
use App\Models\Protector;
use App\Models\AeroLine;

class Gazoprovod extends Model
{
    /** @use HasFactory<\Database\Factories\GazoprovodFactory> */
    use HasFactory;

    public function ustanovkas()
    {
        return $this->hasMany(Ustanovka::class, 'gazoprovod_id');
    }

    public function drenages()
    {
        return $this->hasMany(Drenage::class, 'gazoprovod_id');
    }

    public function protectors()
    {
        return $this->hasMany(Protector::class, 'gazoprovod_id');
    }

    public function aeroLines()
    {
        return $this->hasMany(AeroLine::class, 'gazoprovod_id');
    }

}

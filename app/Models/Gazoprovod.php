<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Ustanovka;

class Gazoprovod extends Model
{
    /** @use HasFactory<\Database\Factories\GazoprovodFactory> */
    use HasFactory;

    public function ustanovkas()
    {
        return $this->hasMany(Ustanovka::class, 'gazoprovod_id');
    }

}

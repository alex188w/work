<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\User;

class UserRole extends Model
{
    protected $table = 'user_roles'; // Указываем таблицу

    // Определяем связь с пользователем
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    // Определяем связь с ролью
    public function role()
    {
        return $this->belongsTo(Role::class, 'role_id');
    }
}

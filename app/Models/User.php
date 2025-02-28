<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use TCG\Voyager\Models\Role;
use TCG\Voyager\Models\Permission;

class User extends \TCG\Voyager\Models\User
// class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    // public function roles()
    // {
    //     return $this->belongsToMany(Role::class, 'user_roles', 'user_id', 'role_id');
    // }

    // // Связь с разрешениями через роли
    // public function permissions()
    // {
    //     return $this->belongsToMany(Permission::class, 'permission_role', 'role_id', 'permission_id')
    //         ->withPivot('permission_id', 'role_id');
    // }

    // // Проверка наличия права
    // public function hasPermission($permission)
    // {
    //     return $this->permissions->contains('name', $permission);
    // }

    // // Проверка наличия роли
    // public function hasRole($role)
    // {
    //     return $this->roles->contains('name', $role);
    // }
}

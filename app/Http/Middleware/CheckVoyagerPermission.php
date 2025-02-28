<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Auth;
use Log;


class CheckVoyagerPermission
{
    public function handle($request, Closure $next)
    {
        $user = Auth::user();
        // dd($user->role->permissions);  
        // var_dump($user->hasPermission('browse_ustanovkas'));

        // Log::debug('Has Permission:', ['has_permission' => $user->hasPermission('browse_ustanovkas')]);
        // Log::debug('User Instance:', ['user_id' => $user->id, 'user_instance' => spl_object_hash($user)]);

        // Проверяем, есть ли у пользователя нужные разрешения
        if (!($user && $user->hasPermission('browse_ustanovkas'))) {
            return abort(403, 'Access denied');
        }        
        return $next($request);
    }
}


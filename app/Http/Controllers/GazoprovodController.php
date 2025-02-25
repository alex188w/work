<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Gazoprovod;
use Illuminate\Contracts\View\Factory;
use Illuminate\View\View;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\DB;

class GazoprovodController extends Controller
{
    
    public function index()
    {   
        $gazoprovods = Gazoprovod::with('ustanovkas')->get(); // Загрузим установки сразу
        return view('index', compact('gazoprovods'));
    }
}

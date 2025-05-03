<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\WorkController;
use App\Http\Controllers\UstanovkaController;
use App\Http\Controllers\DrenageController;
use App\Http\Controllers\ProtectorController;
use App\Http\Controllers\AeroLineController;
use App\Http\Controllers\GazoprovodController;
use App\Http\Controllers\ImageUploadController;
use Illuminate\Http\Request;
use App\Http\Middleware\CheckVoyagerPermission;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\ChartController;


// Route::get('/', function () {
//     return view('welcome');
// });

Route::controller(UstanovkaController::class)
->middleware([CheckVoyagerPermission::class])
->group(function () {
    Route::get('/get-ustanovka-name/{id}', [UstanovkaController::class, 'getUstanovkaName']);
    Route::get('/get-drenage-name/{id}', [DrenageController::class, 'getDrenageName']);
    Route::get('/get-protector-name/{id}', [ProtectorController::class, 'getProtectorName']);
    Route::get('/get-aeroLine-name/{id}', [AeroLineController::class, 'getAeroLineName']);

    // Route::get('/', [UstanovkaController::class, 'index'])->name('index');
    Route::get('/', [WorkController::class, 'index'])->name('index');
    Route::get('/addWork/{ustanovka_id}', [UstanovkaController::class, 'addWork'])->name('addAction');
    Route::post('/addWork/{ustanovka_id}', [UstanovkaController::class, 'addWorkAction'])->name('addActionPost');
    Route::get('/showWork/{id}', [UstanovkaController::class, 'showWork'])->name('showWork');

    Route::get('/addDrenage/{drenage_id}', [DrenageController::class, 'addDrenage'])->name('addDrenage');
    Route::post('/addDrenage/{drenage_id}', [DrenageController::class, 'addDrenageAction'])->name('addDrenagePost');
    Route::get('/showDrenage/{id}', [DrenageController::class, 'showWork'])->name('showDrenage');
    Route::get('/editDrenage/{drenage_id}/{work_id}', [DrenageController::class, 'edit'])->name('editDrenage');
    Route::post('/updateDrenage/{drenage_id}/{work_id}', [DrenageController::class, 'updateDrenage'])->name('updateDrenage');

    Route::get('/addProtector/{protector_id}', [ProtectorController::class, 'addProtector'])->name('addProtector');
    Route::post('/addProtector/{protector_id}', [ProtectorController::class, 'addProtectorAction'])->name('addProtectorPost');
    Route::get('/showProtector/{id}', [ProtectorController::class, 'showWork'])->name('showProtector');
    Route::get('/editProtector/{protector_id}/{work_id}', [ProtectorController::class, 'edit'])->name('editProtector');
    Route::post('/updateProtector/{protector_id}/{work_id}', [ProtectorController::class, 'updateProtector'])->name('updateProtector');

    Route::get('/addAeroLine/{aeroLine_id}', [AeroLineController::class, 'addAeroLine'])->name('addAeroLine');
    Route::post('/addAeroLine/{aeroLine_id}', [AeroLineController::class, 'addAeroLineAction'])->name('addAeroLinePost');
    Route::get('/showAeroLine/{id}', [AeroLineController::class, 'showWork'])->name('showAeroLine');
    Route::get('/editAeroLine/{aeroLine_id}/{work_id}', [AeroLineController::class, 'edit'])->name('editAeroLine');
    Route::post('/updateAeroLine/{aeroLine_id}/{work_id}', [AeroLineController::class, 'updateAeroLine'])->name('updateAeroLine');

    // роут для изменения данных в таблице ukz_x (форма ввода)
    Route::get('/edit/{ustanovka_id}/{work_id}', [UstanovkaController::class, 'edit'])->name('edit');
    Route::post('/update/{ustanovka_id}/{work_id}', [UstanovkaController::class, 'update'])->name('update');
    Route::post('store', 'store')->name('store');
    Route::get('/chart/{ustanovka_id}', [ChartController::class, 'index'])->name('chart');
    Route::get('/chart-data/{ustanovka_id}', [ChartController::class, 'getChartData']);
    Route::post('/upload/{ustanovka_id}/{work_id}', [ImageUploadController::class, 'uploadImage'])
    ->name('work.upload');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

// // роут для загрузки изображений
// Route::post('/work/upload/{ustanovka_id}/{work_id}', [ImageUploadController::class, 'uploadImage'])->name('work.upload');

// // Вывод всех дат работ
// Route::get('/works-list', [UstanovkaController::class, 'worksList'])->name('works.list');


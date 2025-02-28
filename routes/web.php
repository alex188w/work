<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UstanovkaController;
use App\Http\Controllers\GazoprovodController;
use App\Http\Controllers\ImageUploadController;
use Illuminate\Http\Request;
use App\Http\Middleware\CheckVoyagerPermission;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Auth;



// Route::get('/', function () {
//     return view('welcome');
// });

Route::controller(UstanovkaController::class)
->middleware([CheckVoyagerPermission::class])
->group(function () {
    Route::get('/get-ustanovka-name/{id}', [UstanovkaController::class, 'getUstanovkaName']);
    Route::get('/', [UstanovkaController::class, 'index'])->name('index');
    Route::get('/addWork/{ustanovka_id}', [UstanovkaController::class, 'addWork'])->name('addAction');
    Route::post('/addWork/{ustanovka_id}', [UstanovkaController::class, 'addWorkAction'])->name('addAction');
    Route::get('/showWork/{id}', [UstanovkaController::class, 'showWork'])->name('showWork');
    // роут для изменения данных в таблице ukz_x (форма ввода)
    Route::get('/work/edit/{ustanovka_id}/{work_id}', [UstanovkaController::class, 'edit'])->name('edit');
    Route::post('/work/update/{ustanovka_id}/{work_id}', [UstanovkaController::class, 'update'])->name('update');
    Route::post('store', 'store')->name('store');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::post('/work/upload/{ustanovka_id}/{work_id}', [ImageUploadController::class, 'uploadImage'])
    ->name('work.upload')
    ->middleware([CheckVoyagerPermission::class]);

// Route::get('/get-ustanovka-name/{id}', [UstanovkaController::class, 'getUstanovkaName']);
// Route::get('/', [GazoprovodController::class, 'index'])->name('index');
// Route::get('/', [UstanovkaController::class, 'index'])->name('index');
// Route::get('/addWork/{ustanovka_id}', [UstanovkaController::class, 'addWork'])->name('addAction');
// Route::post('/addWork/{ustanovka_id}', [UstanovkaController::class, 'addWorkAction'])->name('addAction');
// Route::get('/showWork/{id}', [UstanovkaController::class, 'showWork'])->name('showWork');
// // роут для изменения данных в таблице ukz_x (форма ввода)
// Route::get('/work/edit/{ustanovka_id}/{work_id}', [UstanovkaController::class, 'edit'])->name('edit');
// // Route::put('/work/update/{ustanovka_id}/{work_id}', [UstanovkaController::class, 'update'])->name('update');
// Route::post('/work/update/{ustanovka_id}/{work_id}', [UstanovkaController::class, 'update'])->name('update');

// // роут для загрузки изображений
// Route::post('/work/upload/{ustanovka_id}/{work_id}', [ImageUploadController::class, 'uploadImage'])->name('work.upload');

// // Вывод всех дат работ
// Route::get('/works-list', [UstanovkaController::class, 'worksList'])->name('works.list');


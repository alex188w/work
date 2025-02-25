<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UstanovkaController;
use App\Http\Controllers\GazoprovodController;
use App\Http\Controllers\ImageUploadController;
use Illuminate\Http\Request;



// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/get-ustanovka-name/{id}', [UstanovkaController::class, 'getUstanovkaName']);

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

// Route::get('/', [GazoprovodController::class, 'index'])->name('index');
Route::get('/', [UstanovkaController::class, 'index'])->name('index');
Route::get('/addWork/{ustanovka_id}', [UstanovkaController::class, 'addWork'])->name('addAction');
Route::post('/addWork/{ustanovka_id}', [UstanovkaController::class, 'addWorkAction'])->name('addAction');
Route::get('/showWork/{id}', [UstanovkaController::class, 'showWork'])->name('showWork');
// роут для изменения данных в таблице ukz_x
Route::get('/work/edit/{ustanovka_id}/{work_id}', [UstanovkaController::class, 'edit'])->name('edit');
// Route::put('/work/update/{ustanovka_id}/{work_id}', [UstanovkaController::class, 'update'])->name('update');
Route::post('/work/update/{ustanovka_id}/{work_id}', [UstanovkaController::class, 'update'])->name('update');

// роут для загрузки изображений
Route::post('/work/upload/{ustanovka_id}/{work_id}', [ImageUploadController::class, 'uploadImage'])->name('work.upload');

// Вывод всех дат работ
Route::get('/works-list', [UstanovkaController::class, 'worksList'])->name('works.list');


// Роут для подстановки названия УКЗ после введения id
Route::get('/get-ustanovka-name/{id}', [UstanovkaController::class, 'getUstanovkaName']); 

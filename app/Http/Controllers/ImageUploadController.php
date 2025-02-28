<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Ustanovka;
use App\Models\UstanovkaWork;
use Illuminate\Contracts\View\Factory;
use Illuminate\View\View;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\DB;

class ImageUploadController extends Controller
{
    public function uploadImage(Request $request, $ustanovka_id, $work_id)
    {
        // Валидация входных данных
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $tableName = 'ukz_' . $ustanovka_id;
        $workModel = new UstanovkaWork();
        $workModel->setTable($tableName);

        $work = $workModel->find($work_id);   

        // Проверка, существует ли установка
       
        if (!$work) {
            return response()->json(['success' => false, 'message' => 'Установка не найдена.']);
        }

        // Сохранение изображения
        if ($request->file('image')) {
            // Определение пути для сохранения
            $path = $request->file('image')->store("works/{$ustanovka_id}", 'public');
            dd($path);  
            var_dump($path);

            // Обновление поля image_path в базе данных
            $work->image_path = $path;
            $work->save();

            // Возвращение успешного ответа с URL изображения
            return response()->json(['success' => true, 'image_url' => Storage::url($path)]);
        }

        return response()->json(['success' => false, 'message' => 'Ошибка при загрузке изображения.']);
    }
}


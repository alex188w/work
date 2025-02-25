<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('ukz_2', function (Blueprint $table) {
            $table->id();
            $table->integer('ustanovka_id'); // Связь с основной таблицей
            $table->string('type_of_work'); // Тип работы ТО/ТР
            $table->date('work_date');  // Дата проведения работы
            $table->float('I');
            $table->float('U');
            $table->integer('snv');
            $table->integer('EE');
            $table->float('Usum');
            $table->float('Upol');
            $table->string('work_description');  // Описание работы
            $table->string('work_performers');  //Исполнители
            $table->string('remarks');  //Замечания
            $table->boolean('is_done')->default(false); // Поле boolean с дефолтным значением  //Выполнено/невыполнено
            $table->string('image_path'); // Путь к изображению
            $table->timestamps();
            
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ukz_2');
    }
};

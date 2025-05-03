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
        Schema::create('upz_131', function (Blueprint $table) {
            $table->id();
            $table->integer('protector_id'); // Связь с основной таблицей
            $table->string('type_of_work'); // Тип работы ТО/ТР
            $table->date('work_date');  // Дата проведения работы
            $table->float('Utr_z')->nullable();
            $table->float('Upr_z')->nullable();            
            $table->float('Upol')->nullable();
            $table->float('Ipr')->nullable();
            $table->float('Rpr-tr')->nullable();
            $table->float('Ro_grunt')->nullable();
            $table->string('work_description')->nullable();  // Описание работы
            $table->string('work_performers')->nullable();  //Исполнители
            $table->string('remarks')->nullable();  //Замечания
            $table->boolean('is_done')->default(false); // Поле boolean с дефолтным значением  //Выполнено/невыполнено
            $table->string('auto')->nullable(); // 
            $table->string('image_path')->nullable(); // Путь к изображению
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('upz_131');
    }
};

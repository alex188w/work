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
        Schema::create('ukz_3', function (Blueprint $table) {
            $table->id();
            $table->integer('ustanovka_id'); // Связь с основной таблицей
            $table->date('work_date');  // Дата проведения работы
            $table->string('name');
            $table->string('work_description');  // Описание работы
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ukz_3');
    }
};

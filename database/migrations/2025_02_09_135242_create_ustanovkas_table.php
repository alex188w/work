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
        Schema::create('ustanovkas', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('km');
            $table->foreignId('gazoprovod_id')->constrained('gazoprovods')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ustanovkas');
    }
};

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
        Schema::create('tarjetas', function (Blueprint $table) {
            $table->id();
            $table->string('propietario',50);
            $table->string('marca',20);
            $table->string('color',6);
            $table->string('numero',16)->unique();
            $table->string('valido_hasta',5);
            $table->unsignedInteger('cupo');
            $table->unsignedInteger('monto_utilizado');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tarjetas');
    }
};

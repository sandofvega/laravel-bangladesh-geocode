<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBdgeocodeTables extends Migration
{
    public function up()
    {
        // Create table for storing divisions
        Schema::create('divisions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->unique();
            $table->string('bn_name')->unique();
        });

        // Create table for storing districts
        Schema::create('districts', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('division_id');
            $table->string('name')->unique();
            $table->string('bn_name')->unique();
            $table->double('lat')->nullable();
            $table->double('lon')->nullable();
            $table->string('website')->nullable();

            $table->foreign('division_id')->references('id')->on('divisions') ->onUpdate('cascade')->onDelete('cascade');
        });

        // Create table for storing thanas
        Schema::create('thanas', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('district_id');
            $table->string('name');
            $table->string('bn_name');

            $table->foreign('district_id')->references('id')->on('districts') ->onUpdate('cascade')->onDelete('cascade');
        });

        // Create table for storing unions
        Schema::create('unions', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('thana_id');
            $table->string('name');
            $table->string('bn_name');

            $table->foreign('thana_id')->references('id')->on('thanas') ->onUpdate('cascade')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('unions');
        Schema::dropIfExists('thanas');
        Schema::dropIfExists('districts');
        Schema::dropIfExists('divisions');
    }
}
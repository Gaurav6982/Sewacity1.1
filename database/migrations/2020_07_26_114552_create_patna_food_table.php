<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePatnaFoodTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patna_food', function (Blueprint $table) {
            $table->id();
            $table->text('food_name');
            $table->integer('food_price');
            $table->text('food_type');
            $table->integer('is_active')->default(1);
            $table->text('food_quantity')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('patna_food');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEcommSellersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ecomm_sellers', function (Blueprint $table) {
            $table->id();
            $table->string('seller_name');
            $table->string('shop_name');
            $table->boolean('is_active');
            $table->string('shop_image');
            $table->double('delivery_charge');
            $table->integer('city_id');
            // $table->index('city_id');
            // $table->foreign('city_id')->references('id')->on('cities');
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
        Schema::dropIfExists('ecomm_sellers');
    }
}

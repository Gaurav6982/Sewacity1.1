<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEcommProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ecomm_products', function (Blueprint $table) {
            $table->id();
            $table->longText('product_name');
            $table->longText('showcase_image')->nullable();
            $table->longText('specs');
            $table->unsignedBigInteger('seller_id');
            // $table->foreign('seller_id')->references('id')->on('ecomm_sellers');
            $table->longText('offers');
            $table->unsignedBigInteger('category_id');
            // $table->foreign('category_id')->references('id')->on('categories');
            $table->double('price',8,2);
            $table->double('selling_price',8,2);
            $table->double('discount',5,2);
            $table->longText('description');
            $table->boolean('is_active');
            $table->boolean('sold_out');
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
        Schema::dropIfExists('ecomm_products');
    }
}

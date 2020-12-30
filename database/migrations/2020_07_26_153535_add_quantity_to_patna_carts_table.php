<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddQuantityToPatnaCartsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('patna_carts', function (Blueprint $table) {
            $table->integer('item_quantity')->default(1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('patna_carts', function (Blueprint $table) {
            $table->dropColumn('item_quantity')->default(1);
        });
    }
}

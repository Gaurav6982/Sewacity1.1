<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateRestaurantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('restaurants', function (Blueprint $table) {
            $table->time('open_time')->default('08:00:00');
            $table->time('close_time')->default('20:00:00');
            $table->integer('is_active')->default('1');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('restaurants', function (Blueprint $table) {
            $table->dropColumn('open_time');
            $table->dropColumn('close_time');
            $table->dropColumn('is_active');
        });
    }
}

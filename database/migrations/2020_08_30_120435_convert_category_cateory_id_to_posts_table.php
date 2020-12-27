<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use App\Posts;
use App\Categories;
class ConvertCategoryCateoryIdToPostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $posts=Posts::where('city_id',1)->get();
        foreach($posts as $post)
        {
            $category=$post->category;
            if($category=='Elecapp')
                $post->category_id=1;
            else if($category=='Essentials')
                $post->category_id=2;
            else if($category=='Footwear')
                $post->category_id=3;
            else if($category=='Books')
                $post->category_id=4;
            else if($category=='furniture')
                $post->category_id=5;
            else if($category=='kitchen')
                $post->category_id=6;
            else if($category=='Grocery')
                $post->category_id=7;
            else if($category=='Cosmetic')
                $post->category_id=8;
            else if($category=='Gift')
                $post->category_id=9;
            else if($category=='Elecpart')
                $post->category_id=10;
            else if($category=='Season')
                $post->category_id=11;
            else if($category=='Festival')
                $post->category_id=12;
            else if($category=='Other')
                $post->category_id=13;
                $post->save();
        }
        $posts=Posts::where('city_id',2)->get();
        foreach($posts as $post)
        {
            $category=$post->category;
            if($category=='Elecapp')
                $post->category_id=14;
            else if($category=='Essentials')
                $post->category_id=15;
            else if($category=='Footwear')
                $post->category_id=16;
            else if($category=='Books')
                $post->category_id=17;
            else if($category=='furniture')
                $post->category_id=18;
            else if($category=='kitchen')
                $post->category_id=19;
            else if($category=='Grocery')
                $post->category_id=20;
            else if($category=='Cosmetic')
                $post->category_id=21;
            else if($category=='Gift')
                $post->category_id=22;
            else if($category=='Elecpart')
                $post->category_id=23;
            else if($category=='Season')
                $post->category_id=24;
            else if($category=='Festival')
                $post->category_id=25;
            else if($category=='Other')
                $post->category_id=26;
                $post->save();
        }
        Schema::table('posts', function (Blueprint $table) {
            $table->dropColumn('category');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('posts', function (Blueprint $table) {
            //
        });
    }
}

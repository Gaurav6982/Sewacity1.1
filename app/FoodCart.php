<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FoodCart extends Model
{
    public function item_details(){
        return $this->belongsTo('App\Menu','food_id','id');
    }
}

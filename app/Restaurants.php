<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Menu;
class Restaurants extends Model
{
    public function items(){
        return $this->hasMany('App\Menu','res_id','id');
    }
}

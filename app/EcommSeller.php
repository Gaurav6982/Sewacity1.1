<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EcommSeller extends Model
{
    public function products(){
        return $this->hasMany('App\EcommProduct','seller_id','id');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EcommProduct extends Model
{
    public function category(){
        return $this->belongsTo('App\Categories','id','category_id');
    }
    public function seller(){
        return $this->belongsTo('App\EcommSeller','id','seller_id');
    }
}

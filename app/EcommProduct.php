<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EcommProduct extends Model
{
    public function category(){
        return $this->belongsTo('App\Categories','category_id','id');
    }
    public function seller(){
        return $this->belongsTo('App\EcommSeller','seller_id','id');
    }
    public function uploaded_images(){
        return $this->hasMany('App\EcommProductImage','product_id','id');
    }
}

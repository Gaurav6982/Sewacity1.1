<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sliders extends Model
{
    protected $table='sliders';
    protected $primaryKey='id';
    public function slides(){
        return $this->hasMany('App\FrontPageSliders','slider_id','id');
    }
}

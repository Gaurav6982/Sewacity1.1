<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    public function posts(){
        return $this->hasMany('App\Posts');
    }
    public function cartitems(){
        return $this->hasMany('App\CartItem');
    }
    public function rides(){
        return $this->hasMany('App\Safari');
    }
    public function hotel_bookings(){
        return $this->hasMany('App\HotelBooking');
    }
    public function city(){
        return $this->belongsTo('App\City');
    }
    public function foodcarts(){
        return $this->hasMany('App\FoodCart','user_id','id');
    }

    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name','phone', 'email', 'password','city_id'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}

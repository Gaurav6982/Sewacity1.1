<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Restaurants;
use App\Menu;
class UserFoodController extends Controller
{
    public function index(){
        $restaurants=Restaurants::where('city_id',1)->get();
        return view('food.index')->with('res',$restaurants);
    }
    public function show($id){
        $res=Restaurants::find($id);
        $items=$res->items;
        $data=[
            'res'=>$res,
            'items'=>$items
        ];
        // return $items;
        return view('food.show')->with($data);
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Restaurants;
use App\Menu;
use App\FoodCart;
use Auth;
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
    public function addToCart(Request $request){
        $cart=new FoodCart;
        $cart->user_id=Auth::user()->id;
        $cart->res_id=$request->input('res_id');
        $cart->food_id=$request->input('item_id');
        $cart->quantity=1;
        if($cart->save())
        return response()->json(['success'=>true],200);
        return response()->json(['success'=>false],400);
    }
}

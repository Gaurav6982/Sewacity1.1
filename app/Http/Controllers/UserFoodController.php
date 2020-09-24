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
        $res_id=$request->input('res_id');
        $carts=FoodCart::where('user_id',Auth::user()->id)->get();
        $items_from_this_res=FoodCart::where('user_id',Auth::user()->id)->where('res_id',$res_id)->get();
        if(count($carts)!=count($items_from_this_res))
        {
            return response()->json(['askConfirm'=>true],400);
        }

        $cart=new FoodCart;
        $cart->user_id=Auth::user()->id;
        $cart->res_id=$res_id;
        $cart->food_id=$request->input('item_id');
        $cart->quantity=1;
        if($cart->save())
        return response()->json(['success'=>true],200);
        return response()->json(['success'=>false],400);
    }
    public function SubQuan(Request $request){
        $cart=FoodCart::where('food_id',$request->input('item_id'))->where('user_id',Auth::user()->id)->first();
        $quan=$cart->quantity-1;
        if($quan==0)
        {
            $cart->delete();
            return response()->json(['delete'=>true],200);
        }
        $cart->quantity=$quan;
        if($cart->save())
        return response()->json(['success'=>true],200);
        return response()->json(['success'=>false],400);
    }
    public function AddQuan(Request $request){
        $cart=FoodCart::where('food_id',$request->input('item_id'))->where('user_id',Auth::user()->id)->first();
        $quan=$cart->quantity+1;
        $cart->quantity=$quan;
        if($cart->save())
        return response()->json(['success'=>true],200);
        return response()->json(['success'=>false],400);
    }
    public function show_cart(){
        $carts=FoodCart::where('user_id',Auth::user()->id)->get();
        return view('food.cart')->with('carts',$carts);
    }
    public function del_all(Request $request){
        $carts=FoodCart::where('user_id',Auth::user()->id)->get();
        foreach($carts as $cart)
        {
            $cart->delete();
        }
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

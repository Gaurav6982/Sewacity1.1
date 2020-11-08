<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Restaurants;
use App\Menu;
use App\FoodCart;
use Auth;
use Illuminate\Support\Facades\Mail; 
use App\Mail\SendFoodMail; 
use Session;
class itemaa{
    public $name;
    public $price;
    public $quantity;
    public function __construct($name,$price,$qty){
        $this->name=$name;
        $this->price=$price;
        $this->quantity=$qty;
    }
}
session_start();
class UserFoodController extends Controller
{
    public function index(){
        // return $_SESSION['city'];
        $response = file_get_contents('http://worldtimeapi.org/api/timezone/Asia/Kolkata');
        $obj=json_decode($response);
        $arr=explode('T',$obj->datetime);
        $time=explode('+',$arr[1]);
        $time_now=strtotime($time[0]);
        if(Auth::check())
        $city=Auth::user()->city_id;
        else
        $city = Session::get('city')??1;
        // return $city."wadaw";
        // return $city;
        $restaurants=Restaurants::where('city_id',$city)->where('is_active',1)->get();
        return view('food.index')->with('res',$restaurants)->with('time_now',$time_now);
    }
    public function show($id){
        $res=Restaurants::find($id);
        
        $response = file_get_contents('http://worldtimeapi.org/api/timezone/Asia/Kolkata');
        $obj=json_decode($response);
        $arr=explode('T',$obj->datetime);
        $time=explode('+',$arr[1]);
        $time_now=strtotime($time[0]);
        if($time_now>=strtotime($res->close_time) || $time_now<=strtotime($res->open_time))
        return back()->with('error','Restaurant Closed!');
        $items=$res->items;
        $data=[
            'res'=>$res,
            'items'=>$items,
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
    public function deleteitem($id){
        $cart=FoodCart::find($id);
        if($cart->delete())
        return response()->json(['success',true],200);
        return response()->json(['success',false],400);
    }
    public function sendMail(Request $request){
        // return $request->all();
        $quantities=$request->input('quantities');
        $ids=$request->input('ids');
        $phone=$request->input('phone');

        
        $carts=Auth::user()->foodcarts;
        $res_id;
        // return $carts;
        foreach($carts as $i => $cart)
        {
            $res_id=$cart->res_id;
            if($cart->id==$ids[$i])
            $cart->quantity=$quantities[$i];
            $cart->save();
        }
        if(isset($res_id))
        $res_name=Restaurants::find($res_id);
        else
        $res_name="NOT FOUND";
        // return $carts;
        //return $items;
        $user=Auth::user();
        if($carts==null)
        return back()->with('error','There might be Some Error');

        if(isset($phone))
        $contact=$phone;
        else
        $contact=Auth::user()->phone;
        $items=[];
        foreach($carts as $i=>$cart){
            $item=Menu::where('id',$cart->food_id)->first();
            $new_item=new itemaa($item->name,intval($item->price),intval($cart->quantity));
            array_push($items,$new_item);
        }
        $data=array(
            'name'=>Auth::user()->name,
            'phone'=>$contact,
            'email'=>Auth::user()->email,
            'res_name'=>$res_name->name,
            'city'=>$user->city()->first()->city_name,
            'items'=>$items,
        );

        // return $data;
        if($user->email!=null)
        Mail::to($user->email)->send(new SendFoodMail($data));

        Mail::to('sewacityfbg@gmail.com')->send(new SendFoodMail($data));

        foreach ($carts as $cart) {
            $cartitem=FoodCart::find($cart->id);
            $cartitem->delete();
        }
        $user->no_of_requests=$user->no_of_requests+1;
        $user->update();
        if(Auth::user()->city_id==1)
        return redirect('/foodie')->with('success','Order Placed, Our Service Executive team will contact you shortly, Thank You');
    }
}

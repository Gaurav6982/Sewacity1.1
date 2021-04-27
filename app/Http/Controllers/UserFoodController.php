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
        // $response = file_get_contents('http://worldtimeapi.org/api/timezone/Asia/Kolkata');
        // $obj=json_decode($response);
        // $arr=explode('T',$obj->datetime);
        // $time=explode('+',$arr[1]);
        // $time_now=strtotime($time[0]);
        $time_now=time();
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
        
        // $response =file_get_contents('http://worldtimeapi.org/api/timezone/Asia/Kolkata');
        // $obj=json_decode($response);
        // $arr=explode('T',$obj->datetime);
        // $time=explode('+',$arr[1]);
        // $time_now=strtotime($time[0]);
        $time_now=time();
        if(
            (
                ( intval(date('H',strtotime($res->open_time))) <= intval(date('H',strtotime($res->close_time))) ) 
                && 
                (! (time()>=strtotime($res->open_time)&& time()<=strtotime($res->close_time)) )
            )
            ||
            (
                ( intval(date('H',strtotime($res->open_time))) > intval(date('H',strtotime($res->close_time))) )
                &&
                ( (time()>=strtotime($res->close_time)&& time()<=strtotime($res->open_time)))
            )
        )
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
        if($cart->quantity>19)
        return response()->json(['success'=>false],400);
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
        $address=$request->input('address');
        $set_default_address=$request->input('default_address');
        
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
            'address'=>$address,
            'email'=>Auth::user()->email,
            'paid'=>Session::get('payDone')??false,
            'res_name'=>$res_name->name,
            'city'=>$user->city()->first()->city_name,
            'items'=>$items,
        );
        Session::pull('payDone');
        // return $data;
        if($user->email!=null)
        Mail::to($user->email)->send(new SendFoodMail($data));

        Mail::to('sewacityfbg@gmail.com')->send(new SendFoodMail($data));

        foreach ($carts as $cart) {
            $cartitem=FoodCart::find($cart->id);
            $cartitem->delete();
        }
        $user->no_of_requests=$user->no_of_requests+1;
        if($set_default_address=="on")
        $user->address=$address;
        $user->update();
        // if(Auth::user()->city_id==1)
        return redirect('/foodie')->with('success','Order Placed, Our Service Executive team will contact you shortly, Thank You');
    }
    public function filterInRes(Request $request,$res_id)
    {
        if($request->input('query')=='')
        {
            $items=Menu::where('res_id',$res_id)->get();
        }
        else{
            $inc=$request->input('selected')==1?'inc':'desc';
            $items=Menu::where('res_id',$res_id)->where('name','like',$query.'%')->orderBy('price',$inc)->get();
        }
        $data='<h4 class="my-2">Menu ('.count($items??[]).' items)</h4>';
        if(count($items??[])>0){
            $data.='<div class="row">';
              
            foreach($items as $item){
                $data.='<div class="col-md-12 my-4">
                <div class="card">
                    <div class="card-body" style="padding:5px">
                    <div class="row">
                        <p style="position:absolute;right:5px;top:5px">';
                if(isset($item->is_veg)){
                    if($item->is_veg==1){
                        $data.='<img src="https://img.icons8.com/color/48/000000/vegetarian-food-symbol.png"/>';
                    }
                    else{
                        $data.='<img src="https://img.icons8.com/color/48/000000/non-vegetarian-food-symbol.png"/>';
                    }
                }
                $data.='</p>
                <div class="col-md-4 col-xs-4">
                <img class="card-img-top item-img" ';
                if($item->image)
                    $data.='src="{{asset('.'storage/restaurants/items/'.$item->image.')}}"';
                else 
                    $data.='src="https://via.placeholder.com/150"';
                $data.='alt="Card image cap">
                </div> 
                <div class="col-md-8 col-xs-8 content">';
                $data.='<p class="stylish">Name : '.$item->name.'</p>';
                $data.='<p class="stylish">Price : '.$item->price.'</p>';
                $data.='<p class="stylish"> '.$item->desc.'</p>';
                $data.='                              </div>
                </div>
                <div class="float-right">';
                //if guest
                if(!Auth::user())
                {
                    $data.='<div style="" class="quandiv" id="quandiv'.$item->id.'">';
                    $data.='<button class="btn btn-danger">-</button><input type="text" class="form-control quantity" value="1" disabled> <button class="btn btn-info">+</button>
                    </div>
                    <a class="btn btn-primary add-cart" data-id="'.$item->id.'" id="cart'.$item->id.'">Add to Cart</a>';
                }
                else{
                    $carts=Auth::user()->foodcarts;
                    $done=false;
                }

            }//end foreach
        }
            
        $data.='';
        return response()->json($data);
        // return response()->json(["data"=>$request->all()." ".$res_id]);
    }
}


<h4 class="my-2">Menu ({{count($items??[])}} items)</h4>
@if(count($items??[])>0)
    <div class="row">
      @foreach ($items as $item)
          <div class="col-md-12 my-4">
            <div class="card">
                <div class="card-body" style="padding:5px">
                  <div class="row">
                    <p style="position:absolute;right:5px;top:5px">
                      @if(isset($item->is_veg))
                        @if($item->is_veg==1)
                        <img src="https://img.icons8.com/color/48/000000/vegetarian-food-symbol.png"/>
                        @else
                        <img src="https://img.icons8.com/color/48/000000/non-vegetarian-food-symbol.png"/>
                        @endif
                      @else

                      @endif
                    </p>
                      <div class="col-md-4 col-xs-4">
                        <img class="card-img-top item-img"  @if($item->image)src="{{asset('storage/restaurants/items/'.$item->image)}}" @else src="https://via.placeholder.com/150" @endif alt="Card image cap">
                      </div>
                    
                      <div class="col-md-8 col-xs-8 content">
                            <p class="stylish">Name : {{$item->name}}</p>
                            <p class="stylish">Price :Rs. {{$item->price}}</p>
                            <p class="stylish">{{$item->desc}}</p>
                      </div>
                  </div>
                  <div class="float-right">
                    @guest
                    <div style="" class="quandiv" id="quandiv{{$item->id}}">
                      <button class="btn btn-danger">-</button><input type="text" class="form-control quantity" value="1" disabled> <button class="btn btn-info">+</button>
                    </div>
                    <a class="btn btn-primary add-cart" data-id="{{$item->id}}" id="cart{{$item->id}}">Add to Cart</a>
                    @else
                    <?php $carts=Auth::user()->foodcarts;$done=false;?>
                    @foreach ($carts as $cart)
                        @if ($cart->food_id==$item->id)
                          <a class="btn btn-primary add-cart" data-id="{{$item->id}}" id="cart{{$item->id}}" style="display: none">Add to Cart</a>
                          <div style="height:35px" class="quandiv" id="quandiv{{$item->id}}">
                            <button class="btn btn-danger sub"id="sub{{$item->id}}" data-id="{{$item->id}}">-</button><input type="text" class="form-control quantity" value="{{$cart->quantity}}" disabled id="show{{$item->id}}"> <button class="btn btn-info add" data-id="{{$item->id}}" id="add{{$item->id}}">+</button>
                          </div>
                        <?php $done=true; break;?>
                        @endif
                    @endforeach
                    @if(!$done)
                    <div style="" class="quandiv" id="quandiv{{$item->id}}">
                      <button class="btn btn-danger sub" id="sub{{$item->id}}" data-id="{{$item->id}}">-</button><input type="text" class="form-control quantity" value="1" disabled id="show{{$item->id}}"> <button class="btn btn-info add" data-id="{{$item->id}}" id="add{{$item->id}}">+</button>
                    </div>
                    <a class="btn btn-primary add-cart" data-id="{{$item->id}}" id="cart{{$item->id}}">Add to Cart</a>
                    @endif
                    @endif
                  </div>
                </div>
                
              </div>
          </div>
      @endforeach
        
    </div>
  @else
  <div class="my-4">
    No Items Found
  </div>
  @endif
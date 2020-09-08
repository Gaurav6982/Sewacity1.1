<?php

namespace App\Http\Controllers\Patna;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\PatnaCart;
use Auth;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendPatnaFoodMail;
class item{
    public $name;
    public $price;
    public $qty;
    public function __construct($name,$price,$qty){
        $this->name=$name;
        $this->price=$price;
        $this->qty=$qty;
    }
}
class FoodController extends Controller
{
    public function __construct(){
        return $this->middleware('auth');
    }

    public function add_to_cart($type,$id){
        if($id=='cart')
        return $this->view_cart();
        $user=Auth::user();
        if($user->city_id==1)
        return back()->with('error','Only Available in Patna');
        $item_id=$id;
        $cart_item=new PatnaCart;
        $cart_item->user_id=$user->id;
        $cart_item->item_id=$item_id;
        $cart_item->item_type=$type;

        if($cart_item->save())
        {
            return back()->with('success','Item Added To Cart');
        }
        else
        {
            return back()->with('error','Something Went Wrong');
        }
    }
    public function view_cart(){
        if(Auth::user()->city_id==1)
        return back()->with('error','This is For Patna Users.');
        $items=PatnaCart::where('user_id','=',Auth::user()->id)->get();
        return view('patna.main.cart')->with('items',$items);
    }
    public function remove_from_cart($id){
        $item=PatnaCart::where('user_id','=',Auth::user()->id)->where('id','=',$id)->first();
        if($item->delete())
        return back()->with('error','Item removed Successfully');
    }

    public function send_request(Request $request){

        $item_names=$request->input('food_names');
        $item_prices=$request->input('food_prices');
        $item_quantities=$request->input('quans');
        //return  $item_quantities;
        $items=[];
        for($i=0;$i<count($item_names);$i++)
        {
            $new_item=new item($item_names[$i],$item_prices[$i],intval($item_quantities[$i]));
            array_push($items,$new_item);
        }
        $user=Auth::user();
        $contact=$user->phone;
        if(strlen($request->input('contact'))>0)
        {
            $contact=$request->input('contact');
            if(strlen($contact)<10)
            return back()->with('error','Contact Number Should be 10 Digits Long.');
        }
        $carts=PatnaCart::where('user_id','=',Auth::user()->id)->get();
        foreach($carts as $cart)
        {
            $cart->delete();
        }
        $data=array(
            'name'=>$user->name,
            'phone'=>$contact,
            'email'=>$user->email,
            'city'=>$user->city()->first()->city_name,
            'items'=>$items,
        );
        if($user->email!=null)
        Mail::to($user->email)->send(new SendPatnaFoodMail($data));

        Mail::to('sewacityfbg@gmail.com')->send(new SendPatnaFoodMail($data));
        //return $items;
        return redirect('/patna/food')->with('success','Order Placed, Our Service Executive team will contact you shortly, Thank You');
    }
}


<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CartItem;
use App\Posts;
use Auth;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMail;
class item{
    public $pname;
    public $price;
    public $quantity;
    public $discount;
    public function __construct($name,$price,$qty,$discount){
        $this->pname=$name;
        $this->price=$price;
        $this->quantity=$qty;
        $this->discount=$discount;
    }
}
class CartController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware(['auth'=>'verified']);
    // }

    public function addItem($pid)
    {

    	// return "hello";
        if(Auth::user()->usertype=='admin')
            return back()->with('error','Admin Cannot Add a Item.');

    	$product=Posts::find($pid);
        if(Auth::user()->city_id!=$product->city_id)
            return back()->with('error','You Are trying to add a item from different city.');
    	$cart=CartItem::where('user_id','=',Auth::user()->id,'and')->where('posts_id','=',$pid)->first();
    	// return $cart;
    	if($cart!=null)
    		return back()->with('error',"Item Already Exist");
    	$cartitem=new CartItem;
    	$cartitem->user_id=Auth::user()->id;
    	$cartitem->posts_id=$pid;
    	$cartitem->pname=$product->product_name;
    	$cartitem->price=$product->product_price;
        $cartitem->discount=$product->discount;
    	$cartitem->quantity=1;
    	$cartitem->category=$product->category;
    	$cartitem->save();

    	return back()->with('success','SuccesFully Added To cart!');
    }

    public function show(){
        if(Auth::user()->usertype=='admin')
            return back()->with('error','Admin Cannot Get a Cart.');
    	$user=Auth::user();
    	$products=$user->cartitems()->get();
    	// return $products;
    	return view('main.cart')->with('products',$products);
    }
    public function remove($pid)
    {
    	$product=CartItem::find($pid);
    	$product->delete();
    	return back()->with('success','Item Removed');
    }

    public function send(Request $request)
    {
        // $this->validate($request,[
        //     'quantity'=>'required'
        // ]);
        $item_names=$request->input('pnames');
        $item_prices=$request->input('prices');
        $item_quantities=$request->input('quantity');
        //$item_actual=$request->input('ActualPrices');
        $item_discount=$request->input('discount');
        //return $item_names;
        $items=[];
        for($i=0;$i<count($item_names);$i++)
        {
            $new_item=new item($item_names[$i],intval($item_prices[$i]),intval($item_quantities[$i]),floatval($item_discount[$i]));
            array_push($items,$new_item);
        }
        //return $items;
        $user=Auth::user();
         $contact=$user->phone;
        if(strlen($request->input('contact'))>0)
        {
            $contact=$request->input('contact');
            if(strlen($contact)<10)
            return back()->with('error','Contact Number Should be 10 Digits Long.');
        }

        $carts=$user->cartitems()->get();
        if($carts==null)
        return back()->with('error','There might be Some Error');
        $data=array(
            'name'=>Auth::user()->name,
            'phone'=>$contact,
            'email'=>Auth::user()->email,
            'city'=>$user->city()->first()->city_name,
            'items'=>$items,
        );
        if($user->email!=null)
        Mail::to($user->email)->send(new SendMail($data));

        Mail::to('sewacityfbg@gmail.com')->send(new SendMail($data));

        foreach ($carts as $cart) {
            $cartitem=CartItem::find($cart->id);
            $cartitem->delete();
        }
        $user->no_of_requests=$user->no_of_requests+1;
        $user->update();
        if(Auth::user()->city_id==1)
        return redirect('/products?category=0&searchbox=&sort=latest&page=1')->with('success','Order Placed, Our Service Executive team will contact you shortly, Thank You');
        else
        {
            return redirect('/patna/products?category=0&searchbox=&sort=latest&page=1')->with('success','Order Placed, Our Service Executive team will contact you shortly, Thank You');
        }

    }
    public function update(Request $request,$id)
    {

         $this->validate($request,[
                'quantity'=>'required|numeric|between:0,99.99',
            ]);
        $quantity=$request->input('quantity');
        if($id==null)
        return back()->with('error','There might be Some Error');
        $cartitem=CartItem::find($id);
        if($cartitem==null)
        return back()->with('error','There might be Some Error');
        $cartitem->quantity=$quantity;
        $cartitem->update();
        return back()->with('success','Quantity Updated');

    }

}

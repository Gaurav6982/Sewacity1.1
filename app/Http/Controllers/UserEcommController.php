<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\EcommSeller;
use App\Categories;
use  App\EcommProduct;
use Session;
use App\CartItem;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMail;
class UserEcommController extends Controller
{
    public function index(){
       
        $city_id=Auth::check()?Auth::user()->city_id:(Session::has('city_id')?Session::get('city_id'):1);
        $sellers=EcommSeller::where('city_id',$city_id)->where('is_active',1)->get();
        $categories=Categories::where('city_id',$city_id)->orderBy('order')->get();
        $seller_ids=$sellers->pluck('id');
        $products=EcommProduct::whereIn('seller_id',$seller_ids)->where('is_active','1')->get();
        return view('ecomm.index',compact('sellers','categories','products'));
    }
    public function filtered(Request $request){
        // dd($request->all());
        $search_text=$request->input("search_text")??"";
        $category_id=$request->input("category_id")??"";
        $seller_id=$request->input("seller_id")??"";
        $price_filter=$request->input("price_filter")??"";
        $city_id=Auth::check()?Auth::user()->city_id:(Session::has('city_id')?Session::get('city_id'):1);
        $sellers=EcommSeller::where('city_id',$city_id)->where('is_active',1)->get();
        $seller_ids=$sellers->pluck('id');
        $categories=Categories::where('city_id',$city_id)->orderBy('order')->get();
        $products=EcommProduct::where('product_name','like','%'.$search_text.'%');
        if($seller_id!="")
        $products=$products->where('seller_id',$seller_id);
        else{
            $products=$products->whereIn('seller_id',$seller_ids);
        }
        if($category_id!="")
        $products=$products->where('category_id',$category_id);
        if($price_filter!=""){
           if($price_filter=="lth"){
            $products=$products->orderBy('selling_price','asc');
           }
           else
           $products=$products->orderBy('selling_price','desc');
        }
        
        $products=$products->where('is_active',"1")->get();
        
        // Session::forget('order_placed');
        return view('ecomm.index',compact('sellers','categories','products','search_text','category_id','seller_id','price_filter'));
    }

    public function show($product_id){
        // Session::forget('order_placed');
        $product=EcommProduct::find($product_id);
        if($product->sold_out=="1") return back()->with('error','This Product is Sold Out!');
        $images=$product->uploaded_images;
        return view('ecomm.show',compact('product','images'));
    }
    public function cart(){
        // Session::forget('order_placed');
        $cart_items=CartItem::where('user_id',Auth::user()->id)->where('cart_items.is_active','1')->join('ecomm_products','ecomm_products.id','=','product_id')->select('cart_items.*','product_id','category_id','seller_id','showcase_image','selling_price','price','discount','product_name','specs')->get()->groupBy('seller_id');
        // return response()->json($cart_items);
        $sellers=[];
        $no_of_items=0;
        foreach($cart_items as $id=>$item){
            $sellers[$id]=EcommSeller::find($id);
            $no_of_items+=count($item??[]);
        }
        return view('ecomm.cart',compact('cart_items','sellers','no_of_items'));
    }
    public function getSeller($id)
    {
        return response()->json(EcommSeller::find($id));
    }
    public function addToCart(Request $request){
        try{
            $product_id=$request->input('product_id');
            if($product_id=="") return response()->json("Product Id Not Found!");
            if(CartItem::where('product_id',$product_id)->where('user_id',Auth::user()->id)->where('is_active','1')->exists())
            return response()->json("already");

            $item=new CartItem;
            $item->product_id=$product_id;
            $item->user_id=Auth::user()->id;
            $item->quantity=1;
            $item->is_active=true;

            if($item->save()) return response()->json("success");
            return response()->json("error");
        }
        catch(Exception $e){
            return response()->json($e,404);
        }
    }
    public function removeFromCart(Request $request){
        $cart=CartItem::find($request->input("id"));
        if($cart->delete()){
            return back()->with('success','Item Removed From Cart');
        }
        return back()->with('error','Something Went Wrong');
    }
    public function placeEcommRequest(Request $request)
    {
        // return $request->all();
        $quantities=$request->input("quantity");
        if(count($quantities??[])<=0) return back()->with('error','Something Went Wrong!');
        $user=Auth::user();
        
        $contact=$user->phone;
        $items=[];
        $sellers=[];
        $newprddata=1;
        foreach($quantities as $cart_id=>$quantity)
        {
            $cart=CartItem::find($cart_id);
            $cart->quantity=$quantity;
            $cart->is_active=false;
            $cart->order_id=$newprddata;
            $cart->save();
            $product=EcommProduct::find($cart->product_id);
            $new_item['pname']=$product->product_name;
            $new_item['price']=$product->price;
            $new_item['selling_price']=$product->selling_price;
            $new_item['quantity']=$quantity;
            $new_item['discount']=round(($product->discount/100)*$product->price,2);
            // array_push($items,$new_item);
            $items[$product->seller_id][]=$new_item;
            $sellers[$product->seller_id]=EcommSeller::find($product->seller_id);
        }
        // return $sellers;
        $data=array(
            'name'=>Auth::user()->name,
            'phone'=>$contact,
            // 'delivery'=>(float)$request->input("delivery_charge"),
            'email'=>Auth::user()->email,
            'city'=>$user->city()->first()->city_name,
            'items'=>$items,
            'sellers'=>$sellers,
        );
        if($user->email!=null)
        Mail::to($user->email)->send(new SendMail($data));

        Mail::to('sewacityfbg@gmail.com')->send(new SendMail($data));
        $user->no_of_requests=$user->no_of_requests+1;
        $user->update();
        // if(Auth::user()->city_id==1)
        // $order_placed=true;
        // Session::put('order_placed',true); ->with('success','Order Placed Successfully!')
        return redirect('/orderSummary');
    }
}

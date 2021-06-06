<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\EcommSeller;
use App\Categories;
use  App\EcommProduct;
use Session;
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
        
       
        return view('ecomm.index',compact('sellers','categories','products','search_text','category_id','seller_id','price_filter'));
    }

    public function show($product_id){
        $product=EcommProduct::find($product_id);
        $images=$product->uploaded_images;
        return view('ecomm.show',compact('product','images'));
    }
    public function cart(){
        return view('ecomm.cart');
    }

}

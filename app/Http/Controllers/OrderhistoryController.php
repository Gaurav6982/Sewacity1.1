<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CartItem;
use App\EcommProduct;
use Auth;

class OrderhistoryController extends Controller
{
    public function show(){
        // With this query i can achieve order history
        $pid=CartItem::where('user_id',Auth::user()->id)->select('product_id')->get()->pluck ('product_id');
        $otems=EcommProduct::wherein('id',$pid)->select('product_name','price','showcase_image')->get(); 
        // dd($otems);
        return view('orderhistory',['ordhis'=>$otems]);
    }
}

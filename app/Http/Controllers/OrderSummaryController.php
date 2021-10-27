<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CartItem;
use App\EcommProduct;
use Auth;
// use App\Http\Controllers\DB;
use Illuminate\Support\Facades\DB;

class OrderSummaryController extends Controller
{
    public function show()
    {
        $result = DB::table('cart_items')->join('ecomm_products', 'ecomm_products.id', '=', 'cart_items.product_id')->join('ecomm_sellers' , 'ecomm_products.seller_id', '=', 'ecomm_sellers.id')->where('cart_items.order_id', '=', 1)->where('cart_items.user_id', '=', Auth::user()->id)->select(['ecomm_products.product_name','ecomm_products.showcase_image','ecomm_products.selling_price','cart_items.quantity','ecomm_sellers.id','ecomm_sellers.seller_name','ecomm_sellers.delivery_charge'])->get();
        
        foreach ($result as $keys){
          $item=CartItem::find($keys->id);
          $item->order_id=0;
          $item->save();
        };
        return view('orderSummary',['shivam'=>$result]);
    }
}
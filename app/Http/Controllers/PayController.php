<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Razorpay\Api\Api;
use App\Payment;
use Session;
use Auth;
class PayController extends Controller
{
    public function pay(Request $request){
        return response()->json($request->all(),200);
    }
    public function payment(Request $request){
        $user=Auth::user()->id;
        $amount=intval($request->amount)*100;
        $pay_id=Payment::orderBy('created_at','desc')->first();
        if(is_null($pay_id))
        $pay_id=1;
        else
        $pay_id=$pay_id->id+1;
        $api = new Api(env('RAZORPAY_KEY_ID'), env('RAZORPAY_KEY_SECRET'));
        // Orders
        $order  = $api->order->create(array('receipt' => $pay_id, 'amount' => $amount, 'currency' => 'INR')); // Creates order
        $orderId = $order['id']; // Get the created Order ID
        // Session::put('amount',$amount);
        Session::put('order_id'.$pay_id,$orderId);
        $pay=new Payment;
        $pay->user_id=$user;
        $pay->amount=$amount;
        $pay->order_id=$orderId;
        $pay->save();

        return response()->json(['success'=>true,'order_id'=>$orderId],200);

    }

    public function success(){
        return view('success');
    }
}
 
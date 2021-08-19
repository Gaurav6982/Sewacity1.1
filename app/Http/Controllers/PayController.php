<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Razorpay\Api\Api;
use App\Payment;
use App\FoodCart;
use Session;
use Auth;
use Illuminate\Support\Facades\Mail; 
use App\Mail\SendFoodMail; 
class PayController extends Controller
{
    public function pay(Request $request){
        // return response()->json($request->razorpay_order_id);
        $api = new Api(config('services.razorpay.RAZORPAY_KEY_ID'), config('services.razorpay.RAZORPAY_KEY_SECRET'));
        $attributes  = array('razorpay_signature'  => $request->razorpay_signature,  'razorpay_payment_id'  => $request->razorpay_payment_id ,  'razorpay_order_id' => $request->razorpay_order_id);
        $order  = $api->utility->verifyPaymentSignature($attributes);
        // return response()->json($order);
        if(is_null($order))
        {
            $pay=Payment::where('order_id',$request->razorpay_order_id)->first();
            $pay->success=1;
            $pay->razorpay_id=$request->razorpay_payment_id;
            $pay->save();

            return response()->json('success');
        }
        else
        return response()->json('Something Went Wrong!',400);
    }
    public function payment(Request $request){
        $user=Auth::user();
        $quantities=explode("&",$request->quantities);
        // return response()->json($quantities,500);
        $amount=0;
        foreach($quantities as $quantity){
            $id=explode("quantities%5B",$quantity)[1];
            $id=explode("%5D",$id);
            $quan=explode("=",$id[1])[1];
            $id=$id[0];
            $cart=FoodCart::find($id);
            $cart->quantity=$quan;
            $cart->save();
            $amount+=$cart->item_details->price*intval($quan);
        }
        $amount+=$this->deliveryCharge($amount);
        $amount=$amount*100;
        $cartItems=$user->cartitems;


        // $amount=intval(Session::get('amount'))*100;
        // $amount=intval($request->amount)*100;
        $pay_id=Payment::orderBy('created_at','desc')->first();
        if(is_null($pay_id))
        $pay_id=1;
        else
        $pay_id=$pay_id->id+1;
        $api = new Api(config('services.razorpay.RAZORPAY_KEY_ID'), config('services.razorpay.RAZORPAY_KEY_SECRET'));
        // Orders
        $order  = $api->order->create(array('receipt' => $pay_id, 'amount' => $amount, 'currency' => 'INR')); // Creates order
        $orderId = $order['id']; // Get the created Order ID
        // Session::put('amount',$amount);
        // Session::put('order_id'.$pay_id,$orderId);
        $pay=new Payment;
        $pay->user_id=$user->id;
        $pay->amount=$amount;
        $pay->order_id=$orderId;
        $pay->save();
        
        return response()->json(["order_id"=>$orderId,"amount"=>$amount]);
        // return view('pay.payConfirm')->with('order_id',$orderId)->with('amount',$amount);

    }
    public function deliveryCharge($amount){
        if($amount>0 && $amount<100) return 20;
        if($amount>=100) return 15;
    }
    public function get_amount(Request $request)
    {
        Session::forget("amount");
        Session::put('amount',$request->amount);
    }
    public function set_success(Request $request)
    {
        Session::forget("payDone");
        Session::put("payDone",true);
        return;
    }
    public function set_fail(Request $request)
    {
        Session::forget("payDone");
        Session::put("payDone",false);
        return;
    }
    public function success(){
        return view('success');
    }
}
 
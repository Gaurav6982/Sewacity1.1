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
        return response()->json($request->all());
        $payment=Payment::where('user_id',Auth::user()->id)->where('order_id',$request->razorpay_order_id)->first();
        $payment->razorpay_payment_id=1;
        $payment->save();
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
        // if(Auth::user()->city_id==1)
        return redirect('/foodie')->with('success','Order Placed, Our Service Executive team will contact you shortly, Thank You');
    }
    public function payment(Request $request){
        $user=Auth::user()->id;
        $amount=intval(Session::get('amount'))*100;
        // $amount=intval($request->amount)*100;
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
        // Session::put('order_id'.$pay_id,$orderId);
        $pay=new Payment;
        $pay->user_id=$user;
        $pay->amount=$amount;
        $pay->order_id=$orderId;
        $pay->save();
        
        return response()->json(["order_id"=>$orderId,"amount"=>$amount]);
        // return view('pay.payConfirm')->with('order_id',$orderId)->with('amount',$amount);

    }
    public function set_amount(Request $request)
    {
        Session::put('amount',$request->amount);
    }
    public function success(){
        return view('success');
    }
}
 
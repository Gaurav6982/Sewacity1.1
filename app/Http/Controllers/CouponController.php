<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Coupon;
class CouponController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $coupons=Coupon::all();
        return view('admin.coupons.index',compact($coupons));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.coupons.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $coupon=new Coupon;
        $coupon->coupon_code=$request->name;
        $coupon->is_active=$request->status;
        $coupon->discount_type=$request->type;
        $coupon->value=$request->value;
        $coupon->city_id=Auth::user()->city_id;
        if($coupon->save())
        return back()->with('success','Coupon Created');
        return back()->with('error','Something Went Wrong!');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $coupon=Coupon::find($id);
        return view('admin.coupons.create',compact('coupon'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $coupon=Coupon::find($id);
        $coupon->coupon_code=$request->name;
        $coupon->is_active=$request->status;
        $coupon->discount_type=$request->type;
        $coupon->value=$request->value;
        $coupon->city_id=Auth::user()->city_id;
        if($coupon->save())
        return back()->with('success','Coupon Updated');
        return back()->with('error','Something Went Wrong!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $coupon=Coupon::find($id);
        if($coupon->delete())
        return back()->with('success','Coupon Deleted');
        return back()->with('error','Something Went Wrong!');
    }
}

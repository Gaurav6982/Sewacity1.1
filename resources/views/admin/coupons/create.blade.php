@extends('layouts.app')

@section('content')
    <div class="container mt-3">
        <div class="card">
            <div class="card-header d-flex">
                <div>
                Coupon   
                @isset($coupon)
                Edit
                @else
                Create
                @endif
                </div>
                <div class="text-right w-100">
                    <a  href="{{route('coupons')}}"class="btn btn-sm btn-secondary">back</a>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        @isset($coupon)
                        <form action="{{route('update_coupon',['id'=>$coupon->id])}}" method="POST">
                            {{method_field('PUT')}}
                            {{ csrf_field() }}
                        @else
                        <form action="{{route('store_coupon')}}" method="POST">
                            {{csrf_field()}}
                        @endif
                        <div class="form-group">
                            <label for="coupon_code">Coupon Code*</label>
                            <input type="text" name="name" id="coupon_code" value="{{$coupon->coupon_code??''}}" class="form-control" placeholder="Enter Coupon Code">
                            @if($errors->has('name'))
                                <div class="text-danger">{{ $errors->first('name') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="status">Coupon Status*</label>
                            <select  name="status" id="status" class="form-control">
    
                                <option value="1" @isset($coupon) {{$coupon->is_active==1?'selected':''}} @endisset>Available</option>
                                <option value="0" @isset($coupon) {{$coupon->is_active==0?'selected':''}} @endisset>Expired</option>
                            </select>
                            @if($errors->has('status'))
                                <div class="text-danger">{{ $errors->first('status') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="type">Type*</label>
                            <select  name="type" id="type"  class="form-control">
                                <option value="flat" @isset($coupon) {{$coupon->discount_type=="flat"?'selected':''}} @endisset>Flat Discount</option>
                                <option value="percent"@isset($coupon) {{$coupon->discount_type=="percent"?'selected':''}} @endisset>Percent</option>
                            </select>
                            @if($errors->has('type'))
                                <div class="text-danger">{{ $errors->first('type') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="value">Value (INR or %)*</label>
                            <input  name="value" id="value" value="{{$coupon->value??''}}" placeholder="Enter Coupon Code" class="form-control">
                            @if($errors->has('value'))
                                <div class="text-danger">{{ $errors->first('value') }}</div>
                            @endif
                        </div>
                        <button type="submit" class="btn btn-block btn-success">@isset($coupon) Update @else Save @endif</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
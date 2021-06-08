@extends('layouts.app')

@section('content')
    <div class="container mt-3">
        <div class="card">
            <div class="card-header d-flex">
                <div class="w-50">
                  
                @isset($seller)
                Edit
                @else
                Create
                @endif
                Seller 
                </div>
                <div class="text-right w-100">
                    <a  href="{{route('sellers')}}"class="btn btn-sm btn-secondary">back</a>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        @isset($seller)
                        <form action="{{route('update_seller',['id'=>$seller->id])}}" method="POST" enctype="multipart/form-data">
                            {{method_field('PUT')}}
                        @else
                        <form action="{{route('store_seller')}}" method="POST" enctype="multipart/form-data">
                        @endif
                            {{csrf_field()}}
                        <div class="form-group">
                            <label for="shop_name">Shop Name*</label>
                            <input type="text" name="shop_name" id="shop_name" value="{{$seller->shop_name??''}}" class="form-control" placeholder="Enter Shop Name">
                            @if($errors->has('shop_name'))
                                <div class="text-danger">{{ $errors->first('shop_name') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="seller_name">Seller Name*</label>
                            <input type="text" name="seller_name" id="seller_name" value="{{$seller->seller_name??''}}" class="form-control" placeholder="Enter Seller Name">
                            @if($errors->has('seller_name'))
                                <div class="text-danger">{{ $errors->first('seller_name') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="status">Shop Status*</label>
                            <select  name="status" id="status" class="form-control">
    
                                <option value="1" @isset($seller) {{$seller->is_active==1?'selected':''}} @endisset>Active</option>
                                <option value="0" @isset($seller) {{$seller->is_active==0?'selected':''}} @endisset>InActive</option>
                            </select>
                            @if($errors->has('status'))
                                <div class="text-danger">{{ $errors->first('status') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="delivery_charge">Delivery Charge (INR)*</label>
                            <input  name="delivery_charge" id="delivery_charge" value="{{$seller->delivery_charge??''}}" placeholder="Enter Delivery Charge" class="form-control">
                            @if($errors->has('delivery_charge'))
                                <div class="text-danger">{{ $errors->first('delivery_charge') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="shop_image">Shop Image</label>
                            <input  name="shop_image" id="shop_image" type="file"  class="form-control">
                            @if($errors->has('shop_image'))
                                <div class="text-danger">{{ $errors->first('shop_image') }}</div>
                            @endif
                        </div>
                        <button type="submit" class="btn btn-block btn-success">@isset($seller) Update @else Save @endif</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
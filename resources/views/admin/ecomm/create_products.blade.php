@extends('layouts.app')

@section('content')
    <div class="container mt-3">
        <div class="card">
            <div class="card-header d-flex">
                <div class="w-50">
                  
                @isset($product)
                Edit
                @else
                Create
                @endif
                Product ( {{$seller->shop_name}} )
                </div>
                <div class="text-right w-100">
                    <a  href="{{route('show_products',['id'=>$seller->id])}}"class="btn btn-sm btn-secondary">back</a>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        @isset($product)
                        <form action="{{route('update_product',['id'=>$product->id,'seller_id'=>$seller->id])}}" method="POST" enctype="multipart/form-data">
                            {{method_field('PUT')}}
                        @else
                        <form action="{{route('store_product',['seller_id'=>$seller->id])}}" method="POST" enctype="multipart/form-data">
                        @endif
                            {{csrf_field()}}
                        <div class="form-group">
                            <label for="product_name">Product Name*</label>
                            <input type="text" name="product_name" id="product_name" value="{{$product->product_name??''}}" class="form-control" placeholder="Enter Product Specs">
                            @if($errors->has('product_name'))
                                <div class="text-danger">{{ $errors->first('product_name') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="specs">Product Specs*</label>
                            <textarea  name="specs" id="specs" value="{{$product->specs??''}}" class="form-control" placeholder="Enter Product Specs"></textarea>
                            @if($errors->has('specs'))
                                <div class="text-danger">{{ $errors->first('specs') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="offers">Product Offers</label>
                            <textarea  name="offers" id="offers" value="{{$product->offers??''}}" class="form-control" placeholder="Enter Product Offers"></textarea>
                            @if($errors->has('offers'))
                                <div class="text-danger">{{ $errors->first('offers') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="category_id">Product Category*</label>
                            <select  name="category_id" id="category_id" class="form-control">
    
                                @foreach ($categories as $category)
                                    <option value="{{$category->id}}">{{$category->category_name}}</option>
                                @endforeach
                            </select>
                            @if($errors->has('status'))
                                <div class="text-danger">{{ $errors->first('status') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="status">Product Status*</label>
                            <select  name="status" id="status" class="form-control">
    
                                <option value="1" @isset($product) {{$product->is_active==1?'selected':''}} @endisset>Active</option>
                                <option value="0" @isset($product) {{$product->is_active==0?'selected':''}} @endisset>InActive</option>
                            </select>
                            @if($errors->has('status'))
                                <div class="text-danger">{{ $errors->first('status') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="price">Product Price*</label>
                            <input type="number"  name="price" id="price" value="{{$product->price??''}}" class="form-control" placeholder="Enter Product Price">
                            @if($errors->has('price'))
                                <div class="text-danger">{{ $errors->first('price') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="discount">Product Discount( in %)*</label>
                            <input type="number"  name="discount" id="discount" value="{{$product->discount??''}}" class="form-control" placeholder="Enter Product Discount">
                            @if($errors->has('discount'))
                                <div class="text-danger">{{ $errors->first('discount') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="description">Product Description</label>
                            <textarea  name="description" id="description" value="{{$product->description??''}}" class="form-control" placeholder="Enter Product Description"></textarea>
                            @if($errors->has('description'))
                                <div class="text-danger">{{ $errors->first('description') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="images">Product Images</label>
                            <input name="images" id="images" type="file"  class="form-control" multiple>
                            @if($errors->has('images'))
                                <div class="text-danger">{{ $errors->first('images') }}</div>
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

@section('js')
<script>
    $(document).ready(function(){
        $('textarea').ckeditor();
        $('select').select2();
    })
</script>
@endsection

@extends(Auth::user()->city_id==1?'layouts.app':'patna.layouts.app')

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
                Edit Product
            </div>
            <div class="row">

                <div class="col-md-3"></div>
                <div class="col-md-6">
                    {!! Form::open(['action' => ['PostController@update',$post->id],'method'=>'post','encType'=>'multipart/form-data']) !!}
                    {{csrf_field()}}
                        <div class="form-group">
                            {{Form::label('name','Product Name:')}}
                            {{Form::text('name',$post->product_name,['class'=>'form-control','placeholder'=>'Product Name:'])}}
                        </div>
                        <div class="form-group">
                            {{Form::label('price','Product Price:')}}
                            {{Form::number('price',$post->product_price,['class'=>'form-control','placeholder'=>'Product Price:'])}}
                        </div>
                        <div class="form-group">
                            {{Form::label('quantity','Product quantity:')}}
                            {{Form::text('quantity',$post->product_quantity,['class'=>'form-control','placeholder'=>'Product Quantity:'])}}
                        </div>
                         <div class="form-group">
                            {{Form::label('discount','Enter Discount in % (if any):')}}
                            {{Form::text('discount',$post->discount,['class'=>'form-control','placeholder'=>'Enter Discount:'])}}
                        </div>
                        <div class="form-group">
                            {{Form::label('Category','Product Category:')}}
                                <select class="form-control" name="category" id="category" value="{{$post->category}}">
                                        <!-- <option value="-1">Select</option> -->
                                        <!-- <option value="0">All</option> -->
                                        @foreach ($categories as $category)
                                            <option value="{{$category->id}}">{{$category->category_name}}</option>
                                        @endforeach
                                    </select>
                        </div>

                        <div class="form-group">
                            {{Form::label('description','Product Description:')}}
                            {{Form::textarea('description',$post->description,['class'=>'form-control','placeholder'=>'Enter Product Description:'])}}
                        </div>
                        <div class="form-group">
                            {{Form::label('valid','Product Validity:')}}
                                <select class="form-control" name="valid" id="valid">
                                         <option value="1">In Stock</option>
                                         <option value="0">Sold Out</option>
                                    </select>
                        </div>
                        <div class="form-group">
                            {{Form::file('product_image',['class'=>'btn btn-dark'])}}
                        </div>
                        {!!Form::hidden('_method','PUT')!!}
                        {{Form::submit('Submit',['class'=>'btn btn-primary'])}}
                        <br>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
@endsection
<?php
   $num=$post->category_id-1;
?>
@section('js')
    var slt1=document.getElementById('category');
    slt1.getElementsByTagName('option')[{{$num}}].setAttribute("selected", "selected");
@endsection

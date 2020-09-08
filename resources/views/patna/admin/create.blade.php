@extends('patna.layouts.app')



@section('content')

    <div class="container">

        <div class="card" style="overflow: hidden;">

            <div class="card-header">

                Add Product

            </div>

            <div class="row " style="padding: 10px; overflow: hidden;">



                <div class="col-md-3"></div>

                <div class="col-md-6">



                    {{-- <form action="PostController@store" method="post" enctype="multipart/form-data"> --}}

                        {{-- {{ csrf_field() --}}

                        {{-- {{method_field()--}}

                        {{-- <div class="form-group">

                            <label for="name">Product Name:</label>

                            <input type="text" class="form-control" placeholder="Enter Product Name">

                        </div> --}}

                        {{-- <div class="form-group">

                            <label for="price">Product Price(in Rs.):</label>

                            <input type="number" class="form-control" placeholder="Enter Product Price(in Rs.)">

                        </div>

                        <div class="form-group">

                            <label for="quantity">Product Quantity:</label>

                            <input type="text" class="form-control" placeholder="Enter Product Quantity">

                        </div> --}}

                        {{-- <div class="input-group">

                            <div class="input-group-prepend">

                              <span class="input-group-text" id="inputGroupFileAddon01">Upload Image</span>

                            </div>

                            <div class="custom-file">

                              <input type="file" class="custom-file-input" id="inputGroupFile01"

                                aria-describedby="inputGroupFileAddon01">

                              <label class="custom-file-label" for="inputGroupFile01">Choose file</label>

                            </div> --}}

                          {{-- </div>

                          <br>

                          <input type="submit" class="btn btn-success" value="Submit">

                    </form> --}}

                    {!! Form::open(['action' => 'PostController@store','method'=>'post','encType'=>'multipart/form-data']) !!}

                    {{csrf_field()}}

                        <div class="form-group">

                            {{Form::label('name','Product Name:')}}

                            {{Form::text('name','',['class'=>'form-control','placeholder'=>'Product Name:'])}}

                        </div>

                        <div class="form-group">

                            {{Form::label('price','Product Price:')}}

                            {{Form::number('price','',['class'=>'form-control','placeholder'=>'Product Price:'])}}

                        </div>

                        <div class="form-group">

                            {{Form::label('quantity','Product quantity:')}}

                            {{Form::text('quantity','',['class'=>'form-control','placeholder'=>'Product Quantity:'])}}

                        </div>

                        <div class="form-group">

                            {{Form::label('discount','Enter Discount in % (if any):')}}

                            {{Form::text('discount','0',['class'=>'form-control','placeholder'=>'Enter Discount:'])}}

                        </div>

                        <div class="form-group">

                            {{Form::label('Category','Product Category:')}}

                                <select class="form-control" name="category" id="category">

                                        <!-- <option value="-1">Select</option> -->

                                        <!-- <option value="0">All</option> -->

                                        <option value="Elecapp">Electrical Appliances</option>

                                        <option value="Essentials">Essential Products</option>

                                        <option value="Footwear">Footwear</option>

                                        <option value="Books">Books</option>

                                        <option value="furniture">Furniture</option>

                                        <option value="kitchen">Kitchen Needs</option>

                                        <option value="Grocery">Grocery</option>

                                        <option value="Cosmetic">Cosmetic</option>

                                        <option value="Gift">Gift Item</option>

                                        <option value="Elecpart">Electrical Parts</option>

                                        <option value="Season">Seasonal Items</option>

                                        <option value="Festival">Festival Items</option>

                                        <option value="Other">Others</option>

                                    </select>

                        </div>



                        <div class="form-group">

                            {{Form::label('description','Product Description:')}}

                            {{Form::textarea('description','',['class'=>'form-control','placeholder'=>'Enter Product Description:'])}}

                        </div>

                        <div class="form-group">

                            {{Form::file('product_image',['class'=>'btn btn-dark btn-block'])}}

                        </div>

                        {{Form::submit('Submit',['class'=>'btn btn-primary'])}}

                        <br>

                    {!! Form::close() !!}

                </div>

            </div>

        </div>

    </div>

@endsection

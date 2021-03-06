@extends('layouts.app')
@section('styles')
<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
    <style>
      .lead{
        font-family: 'Balsamiq Sans', cursive;
      }
      .item-img{
        width: 100%;
        box-shadow: 5px 5px rgba(0, 98, 90, 0.4),
              10px 10px rgba(0, 98, 90, 0.3),
              15px 15px rgba(0, 98, 90, 0.2),
              20px 20px rgba(0, 98, 90, 0.1),
              25px 25px rgba(0, 98, 90, 0.05);
      }
      h4{
        font-family: 'Balsamiq Sans', cursive;
      }
      .content{
        padding: 20px 10px 5px 10px;
      }
      .stylish{
        margin-bottom: 4px;
        color: black;
      font-size: 20px;
      font-weight: bold;
      font-family: 'Balsamiq Sans', cursive;
      text-shadow: 
        0 1px 0 #ccc, 
        0 2px 0 #c9c9c9, 
        0 3px 0 #bbb, 
        0 4px 0 #b9b9b9, 
        0 5px 0 #aaa, 
        0 6px 1px rgba(0,0,0,.1), 
        0 0 5px rgba(0,0,0,.1), 
        0 1px 3px rgba(0,0,0,.3), 
        0 3px 5px rgba(0,0,0,.2), 
        0 5px 10px rgba(0,0,0,.25), 
        0 10px 10px rgba(0,0,0,.2), 
        0 20px 20px rgba(0,0,0,.15);
      }
      .quantity{
        width: 50px;
        text-align: center
      }
      .sub{
        border-top-left-radius: 20px;
      }
      .add{
        border-bottom-right-radius: 20px;
      }
      .quandiv{
        display: flex;
        height: 0;
        overflow: hidden;
        transition: 0.5s ease;
      }
      @media only screen and (max-width:600px)
      {
        .item-img{
          width: 50%;
          height: 70%;
          margin:10px;
        }
        
        .content{
          width: 100%;
          padding: 10px 20px;
          font-size: 8px;
          line-height: 25px;
          word-wrap: break-word;
        }
      }
    </style>
@endsection
@section('content')
    <div class="container-fluid">
        <div class="jumbotron jumbotron-fluid" style="color: green;padding:20px 3px;
        box-shadow: 0px 10px 1px #ddd, 0 10px 20px #ccc;border-radius:15px" >
            <div class="container-fluid">
              <div class="float-right">
                <a href="/foodie/cart" class="btn btn-dark"> Cart <img src="https://img.icons8.com/fluent/48/000000/favorite-cart.png"/></a>
              </div>
                <div class="row">
                    <div class="col-md-3">
                      {{-- {{$res->image}}wajdkawk --}}
                        <img class="card-img-top" @if(isset($res->image)) src="{{asset('storage/restaurants/'.$res->image)}}" @else src="https://via.placeholder.com/150" @endif alt="Card image cap" style="height:100%;padding:10px;
                        border:2px solid #fff;
                        background: url(img/tiger.png) no-repeat;
                        -moz-box-shadow: 10px 10px 5px #ccc;
                        -webkit-box-shadow: 10px 10px 5px #ccc;
                        box-shadow: 10px 10px 5px #ccc;
                        -moz-border-radius:25px;
                        -webkit-border-radius:25px;
                        border-radius:25px;">
                    </div>
                    <div class="col-md-9">
                        <h3 >{{$res->name}}</h3>
                        <p class="lead">{{$res->location}}</p>
                        <p class="lead">{{$res->type}}</p>
                        <p class="lead">{{$res->desc}}</p>
                    </div>
                </div>

            </div>
          </div>

          <div class="row" style="padding:10px;">
              <div class="card col-md-6 offset-md-3" style="border-radius: 10px;">
                <h4 class="my-2">Menu ({{count($items??[])}} items)</h4>
                @if(count($items??[])>0)
                    <div class="row">
                      @foreach ($items as $item)
                          <div class="col-md-12 my-4">
                            <div class="card">
                                <div class="card-body" style="padding:5px">
                                  <div class="row">
                                    <p style="position:absolute;right:5px;top:5px">
                                      @if(isset($item->is_veg))
                                        @if($item->is_veg==1)
                                        <img src="https://img.icons8.com/color/48/000000/vegetarian-food-symbol.png"/>
                                        @else
                                        <img src="https://img.icons8.com/color/48/000000/non-vegetarian-food-symbol.png"/>
                                        @endif
                                      @else

                                      @endif
                                    </p>
                                      <div class="col-md-4 col-xs-4">
                                        <img class="card-img-top item-img"  @if($item->image)src="{{asset('storage/restaurants/items/'.$item->image)}}" @else src="https://via.placeholder.com/150" @endif alt="Card image cap">
                                      </div>
                                    
                                      <div class="col-md-8 col-xs-8 content">
                                            <p class="stylish">Name : {{$item->name}}</p>
                                            <p class="stylish">Price :Rs. {{$item->price}}</p>
                                            <p class="stylish">{{$item->desc}}</p>
                                      </div>
                                  </div>
                                  <div class="float-right">
                                    @guest
                                    <div style="" class="quandiv" id="quandiv{{$item->id}}">
                                      <button class="btn btn-danger">-</button><input type="text" class="form-control quantity" value="1" disabled> <button class="btn btn-info">+</button>
                                    </div>
                                    <a class="btn btn-primary add-cart" data-id="{{$item->id}}" id="cart{{$item->id}}">Add to Cart</a>
                                    @else
                                    <?php $carts=Auth::user()->foodcarts;$done=false;?>
                                    {{-- {{$carts}} --}}
                                    @foreach ($carts as $cart)
                                    {{-- {{$cart->food_id}}{{ $item->id}} --}}
                                        @if ($cart->food_id==$item->id)
                                          <a class="btn btn-primary add-cart" data-id="{{$item->id}}" id="cart{{$item->id}}" style="display: none">Add to Cart</a>
                                          <div style="height:35px" class="quandiv" id="quandiv{{$item->id}}">
                                            <button class="btn btn-danger sub"id="sub{{$item->id}}" data-id="{{$item->id}}">-</button><input type="text" class="form-control quantity" value="{{$cart->quantity}}" disabled id="show{{$item->id}}"> <button class="btn btn-info add" data-id="{{$item->id}}" id="add{{$item->id}}">+</button>
                                          </div>
                                        <?php $done=true; break;?>
                                        @endif
                                    @endforeach
                                    @if(!$done)
                                    <div style="" class="quandiv" id="quandiv{{$item->id}}">
                                      <button class="btn btn-danger sub" id="sub{{$item->id}}" data-id="{{$item->id}}">-</button><input type="text" class="form-control quantity" value="1" disabled id="show{{$item->id}}"> <button class="btn btn-info add" data-id="{{$item->id}}" id="add{{$item->id}}">+</button>
                                    </div>
                                    <a class="btn btn-primary add-cart" data-id="{{$item->id}}" id="cart{{$item->id}}">Add to Cart</a>
                                    @endif
                                    @endif
                                  </div>
                                </div>
                                
                              </div>
                          </div>
                      @endforeach
                        
                    </div>
                  @else
                  <div class="my-4">
                    No Items Found
                  </div>
                  @endif
              </div>
          </div>
    </div>
@endsection
@section('js')
    $(document).ready(function(){
      $('.add-cart').click(function(){
        $res_id="{{$res->id}}";
        $id=$(this).data("id");
        {{-- console.log($id); --}}
          $.ajax({
            type:"post",
            url:"/foodie/addToCart",
            data:{
                "_token": "{{ csrf_token() }}",
                "res_id":$res_id,
                "item_id":$id,
            },
            success:function(data)
            {
              if(data.success)
              {
                $("#quandiv"+$id).css("height","40px");
                $("#cart"+$id).hide();
              }
              else if(data.notauth)
              {
                Swal.fire(
                        'Error!',
                        'Please Login First!!',
                        'warning'
                    )
              }
              else
              {
                Swal.fire(
                        'Error!',
                        'Please Try Again!!',
                        'error'
                    )
              }
              
            },
            error:function(err){
              if(err.responseJSON.askConfirm)
              {
                Swal.fire({
                  title: 'Are you sure?',
                  text: "You Cannot Add Items From Two Different Restaurants to Your Cart, Hit Yes to Remove Previous Items From Cart and Add This.!",
                  icon: 'warning',
                  showCancelButton: true,
                  confirmButtonColor: '#3085d6',
                  cancelButtonColor: '#d33',
                  confirmButtonText: 'Yes, delete All!'
                }).then((result) => {
                  if (result.isConfirmed) {
                    $.ajax({
                      type:"post",
                      url:"/foodie/deleteAll",
                      data:{
                          "_token": "{{ csrf_token() }}",
                          "res_id":$res_id,
                          "item_id":$id,
                      },
                      success:function(data)
                      {
                        if(data.success)
                        {
                          Swal.fire(
                            'Deleted!',
                            'Cart Updated!',
                            'success'
                          )
                          $("#quandiv"+$id).css("height","40px");
                          $("#cart"+$id).hide();
                        }
                      }     
                  });
                }
              });
              }
              else if(err.status==401)
              {

                Swal.fire(
                          'Error!',
                          'Please Login To Add products to Cart',
                          'warning'
                      )
              }
              else
              {
                Swal.fire(
                          'Error!',
                          err.statusText,
                          'error'
                      )
              }
              
            }
        }); //ajax
      });

      //subtract
        $('.sub').click(function(){
          $id=$(this).data("id");
          $.ajax({
            type:"post",
            url:"/foodie/subFromCart",
            data:{
                "_token": "{{ csrf_token() }}",
                "item_id":$id,
            },
            success:function(data)
            {
              if(data.delete)
              {
                $("#quandiv"+$id).css("height","0px");
                $("#cart"+$id).show();
              }
              else if(data.success)
              {
                var val=parseInt($('#show'+$id).val());
                val-=1;
                $('#show'+$id).val(val);
              }
              else
              {
                Swal.fire(
                        'Error!',
                        'Please Try Again!!',
                        'error'
                    )
              }
              
            },
            error:function(err){
              if(err.status==401)
              {

                Swal.fire(
                          'Error!',
                          'Please Login To Add products to Cart',
                          'warning'
                      )
              }
              else
              {
                Swal.fire(
                          'Error!',
                          err.statusText,
                          'error'
                      )
              }
              
            }
        }); //ajax
      });


      // add quanitity

        $('.add').click(function(){
          $id=$(this).data("id");
          if(parseInt($('#show'+$id).val()) < 20)
          $.ajax({
            type:"post",
            url:"/foodie/addQuan",
            data:{
                "_token": "{{ csrf_token() }}",
                "item_id":$id,
            },
            success:function(data)
            {
              if(data.success)
              {
                var val=parseInt($('#show'+$id).val());
                val+=1;
                $('#show'+$id).val(val);
              }
              else
              {
                Swal.fire(
                        'Error!',
                        'Please Try Again!!',
                        'error'
                    )
              }
              
            },
            error:function(err){
              if(err.status==401)
              {

                Swal.fire(
                          'Error!',
                          'Please Login To Add products to Cart',
                          'warning'
                      )
              }
              else
              {
                Swal.fire(
                          'Error!',
                          err.statusText,
                          'error'
                      )
              }
              
            }
        }); //ajax
      });
    })
@endsection
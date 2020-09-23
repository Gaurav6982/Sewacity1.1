@extends('layouts.app')
@section('styles')
<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
    <style>
      .lead{
        font-family: 'Balsamiq Sans', cursive;
      }
      .item-img{
        box-shadow: 5px 5px rgba(0, 98, 90, 0.4),
              10px 10px rgba(0, 98, 90, 0.3),
              15px 15px rgba(0, 98, 90, 0.2),
              20px 20px rgba(0, 98, 90, 0.1),
              25px 25px rgba(0, 98, 90, 0.05);
      }
      h4{
        font-family: 'Balsamiq Sans', cursive;
      }
      .stylish{
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
        width: 40px;
      }
      .quandiv{
        display: flex;
        height: 0;
        overflow: hidden;
      }
    </style>
@endsection
@section('content')
    <div class="container-fluid">
        <div class="jumbotron jumbotron-fluid" style="color: green;padding:20px 3px;
        box-shadow: 0px 10px 1px #ddd, 0 10px 20px #ccc;border-radius:15px" >
            <div class="container-fluid">
              <div class="float-right">
                <a href="" class="btn btn-dark"> Cart <img src="https://img.icons8.com/fluent/48/000000/favorite-cart.png"/></a>
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
                        <h3 >Restaurant: {{$res->name}}</h3>
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
                                <div class="card-body">
                                  <div class="row">
                                      <div class="col-md-4">
                                        <img class="card-img-top item-img"  @if($item->image)src="{{asset('storage/restaurants/items/'.$item->image)}}" @else src="https://via.placeholder.com/150" @endif alt="Card image cap">
                                      </div>
                                    
                                      <div class="col-md-8">
                                        <div style="padding: 20px 10px">
                                            <p class="stylish">Name : {{$item->name}}</p>
                                            <p class="stylish">Price :Rs. {{$item->price}}</p>
                                            <p class="stylish">{{$item->desc}}</p>
                                        </div>
                                      </div>
                                  </div>
                                  <div class="float-right">
                                    <div style="" class="quandiv">
                                    <button class="btn btn-danger">-</button><input type="text" class="form-control quantity" value="1" disabled> <button class="btn btn-info">+</button>
                                    </div>
                                    <a class="btn btn-primary add-cart">Add to Cart</a>
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
        $(this).closest('div[class=quandiv]').css({"height": "100px"});;
        console.log($(this).closest("div.quandiv"));
      });
    })
@endsection
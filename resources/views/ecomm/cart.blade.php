@extends('layouts.app')
@section('styles')
    <link rel="stylesheet" href="{{asset('/ecomm_cart/css')}}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('ecomm_cart/all.css')}}">
    <!-- Bootstrap core CSS -->    <!-- Material Design Bootstrap -->
    <link rel="stylesheet" href="{{asset('ecomm_cart/mdb-pro.min.css')}}">
    <!-- Material Design Bootstrap Ecommerce -->
    <link rel="stylesheet" href="{{asset('ecomm_cart/mdb.ecommerce.min.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
      #shopping-head{
        background-color: #e899dc;
background-image: linear-gradient(315deg, #e899dc 0%, #d387ab 74%);


        font-weight: 700;
        letter-spacing: 8px;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
      }
      .minus,.plus{
        height: 30px;
        width: 30px;
        background: wheat;
        text-align: center;
        margin:0;
        padding:0;
      }
      .quantity_input{
        width: 100px;
        margin: 0;
        padding: 0;
        border: none;
        height: 30px;
        /* padding: 0 0 0 5px; */
        text-align: center
      }
      input.quantity_input:focus{
        outline: none !important
      }
      .def-number-input{
        display: flex;

      }

      /* nav */
      body{
            position: relative !important;
        }
        #search-form{
            height: 65px;
            position: sticky;
            top: 0;
            z-index: 11;
            background-color: #DCDCDC;
            box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
            color: white;
            
        }
        ul li{
            word-break: break-all
        }
        header .wrapper{
            display: flex;
            padding-top: 1%;
            position: relative;
            height: 100%;
            width: 100%;
            justify-content: center;
        }
        #user,
        #more,
        #cart{
            color: black;
            cursor: pointer;
            padding: 4px 20px 0 20px;
            margin: 0 20px;
            /* height: 100%; */
            position: relative;
        }
        #user::after,#more::after{
            content: '';
            position: absolute;
            bottom: -12%;
            z-index: 1;
            left: 45%;
            transform: translateX(-50%);
            width: 10px;height: 10px;
            transform: rotateZ(45deg);
            opacity: 0;
            background-color: grey;
        }
        #user:hover::after,
        #user:hover .submenu,
        #more:hover .submenu,
        #more:hover::after{
            opacity: 1;
        }
        .search {
            width: 100%;
            position: relative;
            display: flex;
        }
        .searchTerm {
        width: 100%;
        border: 3px solid #00B4CC;
        border-right: none;
        padding: 5px;
        height: 100%;
        border-radius: 5px 0 0 5px;
        outline: none;
        color: #9DBFAF;
        }

        .searchTerm:focus{
        color: #00B4CC;
        }

        .searchButton {
        width: 40px;
        height: 36px;
        border: 1px solid #00B4CC;
        background: #00B4CC;
        text-align: center;
        color: #fff;
        border-radius: 0 5px 5px 0;
        cursor: pointer;
        font-size: 20px;
        }
        header .wrapper{
            display: flex;
            padding-top: 1%;
            position: relative;
            height: 100%;
            width: 100%;
            justify-content: center;
        }
        .search-wrap{
            
        width: 30%;
        margin-right: 20px;
        /* position: absolute; */
        /* top: 50%; */
        /* left: 50%; */
        /* transform: translate(-50%, -50%); */
        }
        @media only screen and (max-width: 600px) {
           
            header .wrapper{
                padding-top: 3%;
                padding-left: 2%;
                justify-content:space-between;
            }
            #cart{
                /* cursor: pointer; */
                padding: 5px 0px 0 5px;
                text-align: center;
                margin: 0 5px;
                width: 100px;
                /* height: 100%; */
                /* position: relative; */
            }
            .search-wrap{
                width: 90%;
            }
            .header-section h6{
                font-size: 10px;
            }
            
        }
      /* #specs ul li,#specs p{
        font-size: 8px;
      } */
    @-webkit-keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}@keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}.chartjs-render-monitor{-webkit-animation:chartjs-render-animation 0.001s;animation:chartjs-render-animation 0.001s;}</style>
@endsection
@section('content')
<form action="{{route('e_comm_filtered')}}" method="POST" id="search-form">
  {{ csrf_field() }}
<header id="search-bar-ecommerce">
  <div class="wrapper">
      <div class="search-wrap">
          <div class="search">
             <input type="text" class="searchTerm" name="search_text" id="search_text" value="{{$search_text??""}}" placeholder="What are you looking for?">
             <button type="submit" class="searchButton">
              <i class="fa fa-search" aria-hidden="true"></i>
            </button>
          </div>
       </div>
       <!-- <div class="extra"> -->
          <!-- <div id="user" class="extra">
              Gaurav
              <span><i class="fas fa-caret-down"></i></span>
              <div class="submenu">
                  <ul>
                      <li>User Profile</li>
                      <li>Options</li>
                      <li>Logout</li>
                  </ul>
              </div>    
          </div>
          <div id="more" class="extra">More <span><i class="fas fa-caret-down"></i></span>
              <div class="submenu">
                  <ul>
                      <li>Download App</li>
                      <li>E</li>
                      <li>F</li>
                  </ul>
              </div> 
          </div> -->
      <!-- </div> -->
       <a href="{{route('ecomm_cart')}}" id="cart">Cart <span><i class="fa fa-shopping-cart"></i></span></a>
  </div>
</header>
</form>
     <!--Main Navigation-->
  <header>
    <div class="container text-center pt-4">
      <h3 class="mb-0 text-white" id="shopping-head">Shopping cart</h3>
    </div>
</header>
<!--Main Navigation-->

<!--Main layout-->
<main>
<div class="container">

  <!--Section: Block Content-->
  <section class="mt-5 mb-4">

    <!--Grid row-->
    <div class="row">

      <!--Grid column-->
      <div class="col-lg-8">

        <!-- Card -->
        <div class="card wish-list mb-4">
          <div class="card-body">
            @php
                $grand_total=0;
                $delivery_charge=0;
            @endphp
            <h5 class="mb-4">Cart (<span>{{$no_of_items??0}}</span> items)</h5>
            @if(count($cart_items??[])>0)
          <form action="{{route('place_ecomm_request')}}" id="place-ecomm-request-form" method="POST">
              {{ csrf_field() }}
            @foreach ($cart_items as $id=>$items)
            @php
                $seller_total=0;
            @endphp
                <div class="card">
                  <div class="card-header">
                    <div class="row">
                      <div class="col-4">
                        {{$sellers[$id]->shop_name}}
                      </div>
                      <div class="text-right col-8">
                        Delivery Charge : {{$sellers[$id]->delivery_charge}}
                        @php
                            $delivery_charge+=$sellers[$id]->delivery_charge??0;
                        @endphp
                      </div>
                    </div>
                  </div>
                  <div class="card-body">
                    
                      @foreach ($items as $item)
                        <div class="row mb-4">
                          <div class="col-md-5 col-lg-3 col-xl-3">
                            <div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
                              <img class="img-fluid w-100" @if($item->showcase_image==NULL) src="{{asset('assets/not_found.jpg')}}" @else src="{{asset($item->showcase_image)}}" @endif  alt="Sample">
                              <a >
                                <div class="mask waves-effect waves-light">
                                  <img class="img-fluid w-100" @if($item->showcase_image==NULL) src="{{asset('assets/not_found.jpg')}}" @else src="{{asset($item->showcase_image)}}" @endif >
                                  <div class="mask rgba-black-slight waves-effect waves-light"></div>
                                </div>
                              </a>
                            </div>
                          </div>
                          <div class="col-md-7 col-lg-9 col-xl-9">
                            <div>
                              <div class="row mb-3">
                                <div class="col-md-8">
                                  <h6>{{$item->product_name}}</h6>
                                  <div class="mb-3 text-muted text-uppercase small" id="specs" style="font-size: 9px">{!!$item->specs!!}</div>
                                  
                                </div>
                                <div class="col-md-4">
                                  <div class="def-number-input number-input safari_only mb-0 w-100">
                                    <button type="button" data-id="{{$item->id}}" data-seller="{{$id}}" class="minus btn">-</button>
                                    <input type="hidden" class="selling_price" value="{{$item->selling_price}}">
                                    <input class="quantity_input form-control" min="1" id="quantity{{$item->id}}" readonly  name="quantity[{{$item->id}}]" value="1" max="15" type="number">
                                    <button type="button" data-id="{{$item->id}}" data-seller="{{$id}}" class="plus btn">+</button>
                                  </div>
                                  {{-- <small id="passwordHelpBlock" class="form-text text-muted text-center">
                                    (Note, 1 piece)
                                  </small> --}}
                                </div>
                              </div>
                              <div class="d-flex justify-content-between align-items-center">
                              
                                  
                                <button type="button" data-id="{{$item->id}}" class="card-link-secondary remove-cart-item small text-uppercase mr-3 btn btn-sm btn-outline-primary"> Remove item </button>
                                <p class="mb-0"><strong><span class="m-0">&#8377;</span><span id="price{{$item->id}}">{{$item->selling_price}}</span></strong></p>
                                @php
                                    $seller_total+=$item->selling_price;
                                @endphp
                              </div>
                            </div>
                          </div>
                        </div>
                        <hr class="mb-4">
                      @endforeach
                      <div class="text-right"><strong>Seller Total : </strong> <span class="m-0">&#8377;</span> <span id="seller_total{{$id}}" class="seller_total">{{$seller_total}}</span> + <span >{{$sellers[$id]->delivery_charge}}</span></div>
                      @php
                          $grand_total+=$seller_total;
                      @endphp
                  </div>
                </div>
            @endforeach
            <input type="hidden" name="delivery_charge" value="{{$delivery_charge}}">
          </form>
          @else
          <div class="text-center w-100">
            Cart is Empty <br>
             <a href="{{route('e_comm')}}"> Go to E-Commerce</a>
          </div>
          @endif

          </div>
        </div>
        <!-- Card -->

        <!-- Card -->
        {{-- <div class="card mb-4">
          <div class="card-body">

            <h5 class="mb-4">Expected shipping delivery</h5>

            <p class="mb-0"> Thu., 12.03. - Mon., 16.03.</p>
          </div>
        </div> --}}
        <!-- Card -->

       

      </div>
      <!--Grid column-->

      <!--Grid column-->
      @if(count($cart_items??[])>0)
      <div class="col-lg-4">

        <!-- Card -->
        <div class="card mb-4">
          <div class="card-body">
            @if($grand_total>0)
            <div class="d-flex justify-content-between">
              <span>Total :</span>
              <div><span class="m-0">&#8377;</span> <span id="price_total">{{$grand_total}}</span></div>
            </div>
            @endif
            @if($delivery_charge>0)
            <div class="d-flex justify-content-between">
              <span>Delivery Charge :</span>
              <div><span class="m-0">&#8377;</span> <span id="delivery_charge">{{$delivery_charge}}</span></div>
            </div>
            @endif
            @if($grand_total+$delivery_charge>0)
            <div id="grand-total" class="d-flex justify-content-between">
              <div class="text">
              <span>Grand Total : </span>
              </div>
              <div>
              <span class="m-0">&#8377;</span> <span id="grand_total">{{number_format((float)($grand_total+$delivery_charge),2,'.','')}}</span>
              </div>
            </div>
            @endif
            
            <button type="button" id="submit-request" class="btn btn-primary btn-block waves-effect mt-3 waves-light">Place Request</button>

          </div>
        </div>
    </div>
    @endif
      <!--Grid column-->

    </div>
    <!--Grid row-->

  </section>
  <!--Section: Block Content-->

</div>
</main>
<!--Main layout-->

@endsection

@section('js')
<script src="{{asset('ecomm_cart/mdb.ecommerce.min.js')}}"></script>
<script src="{{asset('ecomm_cart/mdb.min.js')}}"></script>
<script src="{{asset('ecomm_cart/popper.min.js')}}"></script>
    <script>
        $(document).ready(function(){
          $('#submit-request').click(function(){
            $('#preloader').css('display','unset');
            $('#place-ecomm-request-form').submit();
            
          })
          $('.remove-cart-item').click(function(){
            const cart_id=$(this).data("id");

            $.ajax({
              url:"{{route('remove_from_cart')}}",
              type:"post",
              data:{
                '_token':"{{csrf_token()}}",
                '_method':"DELETE",
                'id':cart_id,
              },
              success:function(data){
                Swal.fire("Removed Successfully"," ","success");
                location.reload();
              },
              error:function(err){
                Swal.fire("Something Went Wrong"," ","error");
              }
            })
          })
          $('.minus').click(function(){
            var cart_id=$(this).data("id");
          });
          $('.minus').click(function(){
            var cart_id=$(this).data("id");
            var curr_val=parseInt($('#quantity'+cart_id).val());

            if(curr_val<=1) return false;
            
            const seller_id=$(this).data("seller");
            var new_val=curr_val-1;
            const selling_price=parseFloat($(this).parent().find("input.selling_price").val()).toFixed(2);
            $('#quantity'+cart_id).val(new_val);
            $('#price'+cart_id).html((new_val*selling_price).toFixed(2));
            
            //seller total
            const old_total=parseFloat($('#seller_total'+seller_id).html());
            const new_total=old_total-selling_price;
            // console.log(new_total);
            $('#seller_total'+seller_id).html( new_total.toFixed(2) );


            //price total
            $('#price_total').html( (parseFloat($('#price_total').html()).toFixed(2)-selling_price ).toFixed(2));
            //grandtotal
            $('#grand_total').html(  (parseFloat($('#price_total').html())+parseFloat($('#delivery_charge').html()) ).toFixed(2)  );

          });
          $('.plus').click(function(){
            var cart_id=$(this).data("id");
            var curr_val=parseInt($('#quantity'+cart_id).val());

            if(curr_val>14) return false;
            const seller_id=$(this).data("seller");
            var new_val=curr_val+1;
            const selling_price=parseFloat($(this).parent().find("input.selling_price").val()).toFixed(2);
            $('#quantity'+cart_id).val(new_val);
            $('#price'+cart_id).html((new_val*selling_price).toFixed(2));
            
            //seller total
            const old_total=parseFloat($('#seller_total'+seller_id).html());
            const new_total=parseFloat(old_total) + parseFloat(selling_price);
            $('#seller_total'+seller_id).html( new_total.toFixed(2) );
            
            //price total
            $('#price_total').html( ( parseFloat($('#price_total').html())+parseFloat(selling_price) ).toFixed(2));
            //grandtotal
            $('#grand_total').html(  (parseFloat($('#price_total').html())+parseFloat($('#delivery_charge').html()) ).toFixed(2)  );
          });
        })
    </script>
@endsection
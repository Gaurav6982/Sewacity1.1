@extends('layouts.app')
@section('styles')
    <link rel="stylesheet" href="{{asset('/ecomm_cart/css')}}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('ecomm_cart/all.css')}}">
    <!-- Bootstrap core CSS -->    <!-- Material Design Bootstrap -->
    <link rel="stylesheet" href="{{asset('ecomm_cart/mdb-pro.min.css')}}">
    <!-- Material Design Bootstrap Ecommerce -->
    <link rel="stylesheet" href="{{asset('ecomm_cart/mdb.ecommerce.min.css')}}">
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
      /* #specs ul li,#specs p{
        font-size: 8px;
      } */
    @-webkit-keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}@keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}.chartjs-render-monitor{-webkit-animation:chartjs-render-animation 0.001s;animation:chartjs-render-animation 0.001s;}</style>
@endsection
@section('content')
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
              <span class="m-0">&#8377;</span> <span id="grand_total">{{round($grand_total+$delivery_charge)}}</span>
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
            $('#grand_total').html(  (parseFloat($('#price_total').html())+parseFloat($('#delivery_charge').html()) ).toFixed(0)  );

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
            $('#grand_total').html(  (parseFloat($('#price_total').html())+parseFloat($('#delivery_charge').html()) ).toFixed(0)  );
          });
        })
    </script>
@endsection
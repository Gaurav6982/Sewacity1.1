<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    {{-- google_font --}}
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('/ecomm_cart/css')}}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('ecomm_cart/all.css')}}">
    <!-- Bootstrap core CSS -->    <!-- Material Design Bootstrap -->
    <link rel="stylesheet" href="{{asset('ecomm_cart/mdb-pro.min.css')}}">
    <!-- Material Design Bootstrap Ecommerce -->
    <link rel="stylesheet" href="{{asset('ecomm_cart/mdb.ecommerce.min.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Order_History</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            background: #647ce5;
        }
        .card{
            border-radius: 10px;
            background: #1597E5;
        }
        .order_heading{
            text-align: center;
            font-family: 'Roboto', sans-serif;
            font-size: 48px;
            font-weight: 600;
        }
        .order-name{
            font-size: 27px;
            padding: 77px 0;
        }
        .order-price{
            font-size: 27px;
            padding: 77px 0;
        }
        .sucess-unscess{
            font-size: 29px;
            font-weight: 500;
            color: #77D970;
            background: #CDF2CA;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-left: 0;
            margin-bottom: 12px;
            border-radius: 30px;
            margin-top: 10px
        }
        .sucess-unscess span{
            text-align: left;
            right: 0;
            position: relative;
            left: 84%;
        }
        .sucess-unscesse{
            font-size: 29px;
            font-weight: 500;
            color: #A2D2FF;
            background: #5C7AEA;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-left: 0;
            margin-bottom: 12px;
            border-radius: 30px;
            margin-top: 10px
        }
        .sucess-unscesse span{
            text-align: left;
            right: 0;
            position: relative;
            left: 84%;
        }
        @media screen and (max-width: 738px){
        .order_heading{
            font-display: 25px;
            font-weight: 600;
        }
        .order-name{
            font-size: 13px;
            padding: 15px 0;
        }
        .order-price{
            font-size: 14px;
            padding: 24px 0;
        }
        .sucess-unscess{
            font-size: 15px;
        }
        .sucess-unscess span{
            text-align: left;
            right: 0;
            position: relative;
            left: 46%;
        }
        .img_div{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        }
    </style>
</head>
<body onload="myFunction()">
    <div id="loading" >
        <img src="{{'assets/pred.gif'}}" alt="preloader">
      </div>
    @include('nav')
    <div class="container">
        <div class="card mx-4 my-4 px-4 py-4">
            <div class="card-header">
            <h1 class="order_heading">Order History 📃</h1>
            </div>
            <div class="card-body text-white">
                @foreach ($ordhis as $order)
                    <div class="row">
                        @if ($order->is_active = 1)
                        <div class="row sucess-unscesse">
                            <div class="col col-lg-12 col-md-12 col-sm-12">
                                <span> 
                                    On The Way...
                                </span>
                            </div>
                        </div>
                        @else
                        <div class="row sucess-unscesse">
                            <div class="col col-lg-12 col-md-12 col-sm-12">
                                <span> 
                                    On The Way
                                </span>
                            </div>
                        </div>
                        @endif
                        <div class="col col-lg-4 col-sm-12 col-md-12 text-center img_div">
                            <div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
                                <img class="img-fluid w-100 h-10" @if($order->showcase_image==NULL) src="{{asset('assets/not_found.jpg')}}" @else src="https://media.istockphoto.com/photos/futuristic-mech-warrior-with-weapons-stands-in-the-middle-of-city-picture-id1284382176?b=1&k=20&m=1284382176&s=170667a&w=0&h=pbjcxWN5-VX_Ub691hjYOtELcqU10rDShVs8AdJg4AI=" @endif  alt="Sample">{{--{{asset($order->showcase_image)}}{asset$order->showcase_image)}}--}}
                                <a>
                                  <div class="mask waves-effect waves-light">
                                    <img class="img-fluid w-100 h-10" @if($order->showcase_image==NULL) src="{{asset('assets/not_found.jpg')}}" @else src="https://media.istockphoto.com/photos/futuristic-mech-warrior-with-weapons-stands-in-the-middle-of-city-picture-id1284382176?b=1&k=20&m=1284382176&s=170667a&w=0&h=pbjcxWN5-VX_Ub691hjYOtELcqU10rDShVs8AdJg4AI=" @endif >
                                    <div class="mask rgba-black-slight waves-effect waves-light"></div>
                                  </div>
                                </a>
                              </div>
                        </div>
                        <div class="col col-lg-4 col-sm-12 col-md-12 text-center order-name">
                            {{$order->product_name}}
                        </div>
                        <div class="col col-lg-4 col-sm-12 col-md-12 text-center order-price">
                            <span>{{$order->price}}(₹)</span>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    <script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </script>
</body>
<script>
    var preloader = document.getElementById('loading');
    function myFunction (){
     preloader.style.display = 'none';
    }
 </script>
</html>
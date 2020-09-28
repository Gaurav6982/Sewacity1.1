<!DOCTYPE html>
<html>

<head>
    <meta name="google-site-verification" content="qf7YT88kyzp5VVimsMWRfSyshmyNcjjk2DUvOSlSiQc" />
    <title>Home Page</title>
    <!-- favicon -->
    <link rel="icon" type="image/png" href="/storage/images/logo.png"> <!-- For apple devices -->
    <link rel="apple-touch-icon" type="image/png" href="/storage/images/logo.png" />
    <!-- Responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Custom Css -->
    <link rel="stylesheet" type="text/css" href="/css/styles.css"><!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- font Awesome -->
    <script src="https://kit.fontawesome.com/988756cd88.js" crossorigin="anonymous"></script>
    <!-- slick -->
    <link rel="stylesheet" type="text/css" href="css/swiper.min.css">
    <!-- <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/> -->
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <!-- owl carousel -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css"
        integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A=="
        crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw==" crossorigin="anonymous" />
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-166801585-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-166801585-1');

    </script>

</head>
<style type="text/css">
    .partner-head {
        width: 100%;
        font-size: 30px;
        color: rgb(223, 247, 8);
        /*font-family:var(--shadow);*/
        font-family: 'Metal Mania', cursive;
    }

    .part-img img {
        height: 300px !important;
        border-radius: 50%;
        padding: 20px;
    }

    .flash p {
        font-family: var(--gugi);
    }

    .flashing_effect {
        background: rgba(18, 157, 255, 1);
        border: 2px solid black;
        border-radius: 5px;
        animation-name: flashing;
        animation-duration: 2s;
        animation-timing-function: linear;
        animation-iteration-count: infinite;

    }

    .flashing_effect a {
        letter-spacing: 2px;
        font-family: var(--gugi);
        font-size: 16px;
        color: white;
        width: 100%;
    }

    @keyframes flashing {
        0% {
            opacity: 1.0;
        }

        20% {
            opacity: 0.8;
        }

        40% {
            opacity: 0.6;
        }

        50% {
            opacity: 0.5;
        }

        60% {
            opacity: 0.6;
        }

        80% {
            opacity: 0.8;
        }

        100% {
            opacity: 1.0;

        }
    }


    .bouter {
        position: relative;
        width: 100%;
        height: 100%;
    }

    .banner {
        position: absolute;
        width: 100%;
        height: 100%;
        background-color: grey;
        background: rgba(0, 0, 0, 0.5);
        z-index: 1111;
    }

    .imag {
        border: 5px solid #31BB01;
        border-radius: 5px;
        position: fixed;
        top: 50%;
        width: 420px;
        left: 50%;
        transform: translate(-50%, -50%);
        overflow: hidden;
        height: 80%;
    }

    .imag img {
        width: 100%;
        height: 100%;
    }

    i.fa-times {
        position: absolute;
        top: 10px;
        right: 10px;
        color: #BB2201;
        cursor: pointer;
        transition: all 0.3s;
    }

    i.fa-times:hover {
        transform: scale(1.3);
    }

    body {
        background-color: white;
        /* background-color: #21d190; */
        /* background-image: linear-gradient(315deg, #21d190 0%, #d65bca 74%); */
        background-size: cover;
        background-repeat: no-repeat;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 0;
        padding: 0;
    }

    .swiper-container {
        width: 100%;
        padding-top: 50px;
        padding-bottom: 50px;
        overflow: hidden;
    }

    .swiper-slide {
        background-position: center;
        background-size: cover;
        width: 300px;
        height: 300px;
        overflow: hidden;
    }

    .card {
        overflow: hidden;
        height: 250px;
        margin: 10px 0;
    }

    .card img {
        height: 200px;
        transition: all 1s ease;
        overflow: hidden;
    }

    .card img:hover {
        transform: scale(1.1);
    }

    a.corona:before {
        background: rgba(255, 255, 255, 0.3);
    }

    a.corona {
        color: black;
    }

    #banner-area .owl-carousel .item img {
        height: 300px;
        border: 1px solid grey;
    }
    .navbar-ham {
        background-color: black;
        padding: 0 4px;
      display: inline-block;
      cursor: pointer;
      position: fixed;
      top: 20px;
      right:10px;
      z-index: 99;
        display: none;
    }

    .bar1, .bar2, .bar3 {
      width: 35px;
      height: 5px;
      background-color: white;
      margin: 6px 0;
      transition: 0.4s;
    }
    .change #second-nav{
        width: 70%;
    }
    .change .bar1 {
      -webkit-transform: rotate(-45deg) translate(-9px, 6px);
      transform: rotate(-45deg) translate(-9px, 6px);
    }

    .change .bar2 {opacity: 0;}

    .change .bar3 {
      -webkit-transform: rotate(45deg) translate(-8px, -8px);
      transform: rotate(45deg) translate(-8px, -8px);
    }
    #second-nav{
        background-color: black;
        position: fixed;
        top: 0;
        left: 0;
        width: 0;
        height: 100vh;
        z-index: 99;
        color: white;
        transition: 0.5s ease;
        overflow: hidden;
    }
    #second-nav div {
        display: inline-block;
        float: right;
    }
    #second-nav ul{
        padding: 30px;
    }
    #second-nav div ul li{
        font-size: 22px;
        list-style: none;
        cursor: pointer;
        margin:20px 0;
        transition: 0.5s ease;
    }
    #second-nav div ul li a{
        color: white;
        text-decoration: none;
        cursor: pointer;
    }
    #second-nav div ul li:hover{
        transform: translateX(-20px);
    }
    #search-form{
        display: none;
        transition: 0.5s ease-in-out;
    }
    #search-form input{
        background-color:#ffffe0;
    }

    @media only screen and (max-width: 1025px) {
        .imag {
            width: 60%;
        }
    }

    @media only screen and (max-width: 500px) {
        .font-15{
            font-size: 15px !important;
        }
        
        #search-form{
            z-index: 95;
            width: 100%;
            display: block;
        }
        body{
            background-color:white;
            /* background-image:linear-gradient(105deg, #20bf55 0%, #01baef 74%); */

        }
        #first-nav{
            display: none;
        }
        .navbar-ham{
            display:block;
        }
        marquee {
            display: none;
        }

        .imag {
            width: 90%;
            height: 70%;
        }

        a.corona {
            color: black;
            /* color: white; */
            text-align: center;
            letter-spacing: 5px;
            font-size: 12px;
            padding: 7px 10px;
            width: 50%;
        }

        a.corona:before {
            background: rgba(0, 0, 0, 0.1);
        }

        #banner-area .owl-carousel .item img {
            height: 180px !important;
            border: none;
            border-radius: 2px;
        }
    }

    .coronabtn {
        height: 50px;
    }

    main .second-slider img {
        width: auto;
        padding: 40px;
        height: 300px !important;
    }
    #submit-search{
        position:absolute;background:none;border:none;right:10px;top:50%;transform:translateY(-50%);
    }
</style>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<body>
    <!--Start of Tawk.to Script-->
    <script type="text/javascript">
        var Tawk_API = Tawk_API || {},
            Tawk_LoadStart = new Date();
        (function() {
            var s1 = document.createElement("script"),
                s0 = document.getElementsByTagName("script")[0];
            s1.async = true;
            s1.src = 'https://embed.tawk.to/5f01f8ec760b2b560e6fc6f6/default';
            s1.charset = 'UTF-8';
            s1.setAttribute('crossorigin', '*');
            s0.parentNode.insertBefore(s1, s0);
        })();

    </script>
    <!--End of Tawk.to Script-->
    <div class="bouter">
        <div class="navbar-ham" onclick="navbar(this)">
            <div class="bar1"></div>
            <div class="bar2"></div>
            <div class="bar3"></div>
          </div>
          <div id="second-nav">
              <div>
                <ul>
                    <li> <a href="/fbg">HOME</a> </li>
                    <li> <a  href="/about" target="_blank">ABOUT US</a></li>
                    <li> <a  href="/tieup">WANT TO JOIN US?</a> </li>
                    <li> <a  href="/foodie">FOOD SERVICE</a></li>
                    <li> <a  href="/products?category=0&searchbox=&sort=latest&page=1">E-COMMERCE</a></li>
                    <li> <a  href="/safari">SEWACITY SAFARI</a></li>
                    <li><a  href="/shelters">SHELTERS</a></li>
                    </li>
                </ul>
            </div>
        </div>
        <marquee>
            <h11>Sewacity is made by the people of Forbesganj for the help of all the people of this city in all the
                possible ways.You can ask anything you want to know for your convenience . Please contact us on +91
                9117575868 for the service you need from sewacity.com</h11>
        </marquee> @guest<div class="banner">
                <div class="imag"> <img src="/storage/images/banner.webp" class="sticky"> <i class="fa fa-times" id="cross"
                        style="font-size: 30px"></i> </div>
        </div> @endguest
        <!-- header -->
        <header>
            @include('inc.messages') <div class="container">

                <div class="row">
                    <div class="col-md-4 col-sm-12 "> </div>
                    <div class="col-md-4 col-sm-12 text-center">
                        <h2 class="my-md-3 site-title text-white">SEWACITY</h2>
                    </div>
                    <div class="col-md-4 col-sm-12 text-right">
                        <p class="my-md-4 header-links">
                        <ul style="list-style-type: none;display: inline-flex;margin: 0;padding: 0"> @guest

                                <li class="nav-item"> <a class="nav-link" href="{{ route('login') }}"
                                        style="color: white">{{ __('Login') }}</a> </li>
                                <div style="height: 35px;width:5px;background-color:white"></div>
                                @if(Route::has('register')) <li class="nav-item"> <a class="nav-link"
                                        href="{{ route('register') }}"
                                    style="color: white">{{ __('Create An Account') }}</a> </li> @endif @else <li
                                class="nav-item dropdown"> <a id="navbarDropdown" style="color:white;font-weight:700"
                                    class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false" v-pre> {{ Auth::user()->name }} <span
                                        class="caret"></span> </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">

                                    @if(Auth::user()->usertype=='special')
                                    <a href="/manage-feedbacks" class="dropdown-item">Manage Feedbacks</a>
                                    @endif
                                    @if(Auth::user()->usertype=='admin' || Auth::user()->usertype=='special')
                                    <a  class="dropdown-item" @if(Auth::user()->city_id==1) href="dashboard" @else href="patna-dashboard" @endif>Admin Panel</a>
                                    <a href="/posts?category=0&searchbox=page=1"
                                            class="dropdown-item">Manage Products</a>
                                            <a href="/users"
                                        class="dropdown-item">User Deatils</a>
                                    @endif
                                    <a href="/profile"
                                        class="dropdown-item">Profile Settings</a> <a class="dropdown-item"
                                        href="{{ route('logout') }}"
                                        onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }} </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                        style="display: none;"> @csrf </form>
                                </div>
                            </li> @endguest
                        </ul>
                        </p>
                    </div>
                </div>

            </div>
            <form id="search-form">
            <div style="margin-bottom: 20px;display:flex;position:relative" >

                <input type="text" class="form-control" placeholder="Search Items" id="Search-bar">
                <button type="submit" id="submit-search"><i class="fa fa-search"></i></button>

            </div>
            </form>

            <div class="container-fluid p-0" id="first-nav">
                <nav class="navbar navbar-expand-lg navbar-light bg-light"> <button class="navbar-toggler" type="button"
                        data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span> </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active"> <a class="nav-link" href="/fbg">Home <span
                                        class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link" href="/tieup">Want To Join Us?</a> </li>
                            <li class="nav-item"> <a class="nav-link" href="/about" target="_blank">About Us</a> </li>
                            <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" href="#"
                                    id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Our Services </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <!-- <a class="dropdown-item" href="#">HOME</a> --> <a class="dropdown-item"
                                        href="/foodie">Food Service</a> <a class="dropdown-item"
                                        href="/products?category=0&searchbox=&sort=latest&page=1">E-Commerce</a><a
                                        class="dropdown-item" href="/safari">Sewacity Safari</a><a class="dropdown-item"
                                        href="/shelters">Shelters</a> </div>
                            </li>
                        </ul>
                    </div>
                    <div class="form-inline my-2 my-lg-0"> <a class="btn btn-outline-success my-2 my-sm-0"
                            href="/products?category=0&searchbox=&sort=latest&page=1"><i
                                class="fas fa-search search-icon"></i></a> <a
                            class="btn btn-outline-success my-2 my-sm-0" href="/products/cart"><i
                                class="fas fa-shopping-basket basket-icon"></i></a> </div>
                </nav>
            </div>
        </header> <!-- /header -->
        <!-- main -->
        <main style="overflow:hidden">


            <div class="row flash">
                <div class="col-sm-6 offset-sm-3 text-center">
                    <p>Are you looking for something which is not Available Yet.</p>
                    <div class="row">
                        <div class="col-sm-6 offset-sm-3 flashing_effect">
                            <a href="https://docs.google.com/forms/d/1MRKozptoMTtp5f2QhErAh7CjLnAE8hfq_3pm6v2TVF8/edit"
                                class="btn">Let Us Know Here.</a>
                        </div>
                    </div>
                </div>
            </div>


            <br>
            <hr>

            <!-- First Slider -->
            <div class="coronabtn"><a href="https://www.covid19india.org/state/BR" class="corona pull-right">
                    <span></span> <span></span> <span></span> <span></span> Corona Update </a></div>

            <section id="banner-area">
                <div class="owl-carousel">
                    <div class="item">
                        <a href="/products?category=11&searchbox=&sort=latest&page=1"><img
                                src="/storage/banner/drinks.webp" alt="Banner1"></a>
                    </div>
                    <div class="item">
                        <a href="/safari"><img src="/storage/banner/ban3.webp" alt="Banner2"></a>
                    </div>
                    <div class="item">
                        <a href="/products?category=0&searchbox=&sort=latest&page=1"><img
                                src="/storage/banner/ban4.webp" alt="Banner3"></a>
                    </div>
                    <div class="item">
                        <a href="https://sewacity.com/shelters"><img src="/storage/banner/shelterho.webp" alt="Banner4"></a>
                    </div>
                    <div class="item">
                        <a data-container="body" data-toggle="popover-hover" data-placement="top"
                            data-content="Coming Soon!">

                            <a href="https://sewacity.com/patna">
                            <img src="/storage/banner/banpatna.webp" alt="Banner5"></a></a>
                    </div>
                   <!-- <div class="item">
                        <a href="/shelters"><img src="/storage/banner/ban.webp" alt="Banner6"></a>
                    </div> -->
                </div>
            </section>
            <div class="container-fluid">
                <div class="swiper-container">
                    <center>
                        <div class="head1"> <img src="./assets/ecomhead.jpg">
                            <p></p>
                        </div>
                    </center> <br>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="ImgBx">

                                <a href="https://sewacity.com/products?category=8&sort=latest&searchbox=">

                                 <img src="./assets/cosban1.webp"> </div>
                            <div class="ImgDetails"> Buy Now </div> </a>
                        </div>
                        <div class="swiper-slide">
                            <div class="ImgBx">
                                 <a href="https://sewacity.com/products?category=3&sort=latest&searchbox=">
                                 <img src="./assets/fotban1.webp"> </div>
                            <div class="ImgDetails"> Buy Now </div></a>
                        </div>
                        <div class="swiper-slide">
                            <div class="ImgBx">
                             <a href="https://sewacity.com/products?category=7&sort=latest&searchbox=">
                            <img src="./assets/Grocery.webp" alt="Image 1"> </div>
                            <div class="ImgDetails">
                                <h5>Buy Now</h5></a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ImgBx">
                                 <a href="https://sewacity.com/products?category=1&sort=latest&searchbox=">
                                 <img src="./assets/elecban.webp"> </div>
                            <div class="ImgDetails">Buy Now </div></a>
                        </div>
                        <div class="swiper-slide">
                            <div class="ImgBx">
                                <a href="https://sewacity.com/products?category=4&sort=latest&searchbox=">
                                 <img src="./assets/bookshwad.webp"> </div>
                            <div class="ImgDetails"> Buy Now </div></a>
                        </div>
                    </div> <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </div> <!-- /First Slider -->
            <!-- Services -->
            <div class="container"> <br>
                <div class="row">
                    <div class="col-md-12">
                        <center>
                            <div class="head1"> <img src="./assets/back2.jpg">
                                <p>Our Services</p>
                            </div>
                        </center>





                    </div>
                </div> <br>
                <div class="row">
                    <div class="col-md-3">
                        <div class="card hover-over"> <a href=""><img class="card-img-top" src="./assets/E-C0mmerce.jpg"
                                    alt="Card image cap"></a>
                            <div class="card-body">
                                <p class="card-text">E-Commerce</p>
                            </div>
                            <div class="overlay">
                                <div class="overlay-text"><a href="/products?category=0&searchbox=&sort=latest&page=1"
                                        class="btn btn-secondary">Go Shopping!</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card hover-over"> <img class="card-img-top" src="./assets/doc.jpeg"
                                alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">Doctor's Appointment</p>
                            </div>
                            <div class="overlay">
                                <div class="overlay-text"><button class="btn btn-secondary" disabled>Coming
                                        Soon!!</button></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card hover-over"> <img class="card-img-top" src="./assets/food.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">Food Service</p>
                            </div>
                            <div class="overlay">
                                <div class="overlay-text"><a href="/foodie" class="btn btn-secondary">Wanna Eat
                                        Something!</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card hover-over"> <img class="card-img-top" src="./assets/tie.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">Wanna Join Us?</p>
                            </div>
                            <div class="overlay">
                                <div class="overlay-text"><a href="/tieup" class="btn btn-secondary">Tie Up?</a></div>
                            </div>
                        </div>

                    </div>
                </div>
            </div> <!-- Services/ -->
            <!-- Second Slider -->
            <div class="container p-0 my-md-0" style="overflow:hidden"> <br>
                <div class="row">
                    <div class="col-md-12">
                        <center>
                            <div class="head1"> <img src="./assets/back3.jpg">
                                <p>Our Food Items.</p>
                            </div>
                        </center>

                    </div>
                </div> <br>
                <div class="row ">
                    <div class="col-md-6 offset-md-3 second-slider">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active"> <img class="d-block w-100" src="./assets/img6.png"
                                        alt="First slide"> </div>
                                <div class="carousel-item"> <img class="d-block w-100" src="./assets/img7.png"
                                        alt="Second slide"> </div>
                                <div class="carousel-item"> <img class="d-block w-100" src="./assets/img8.jpeg"
                                        alt="Third slide"> </div>
                            </div> <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
                                data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span> </a> <a class="carousel-control-next"
                                href="#carouselExampleIndicators" role="button" data-slide="next"> <span
                                    class="carousel-control-next-icon" aria-hidden="true"></span> <span
                                    class="sr-only">Next</span> </a>
                        </div>
                    </div>
                </div>
            </div> <!-- /Second Slider -->
                <!-- Feedback Slider -->
            @if(count($feeds)>0)
            <div class="container p-0 my-md-0" style="overflow:hidden"> <br>
                <div class="row">
                    <div class="col-md-12">
                        <center>
                            <div class="head1"> <img src="./assets/back2.jpg">
                                <p>Feedbacks.</p>
                            </div>
                        </center>

                    </div>
                </div> <br>
                <div class="container">
            <div class="row slider">
                @foreach ($feeds as $feed)
                    <div class="col-md-12">
                        <div class="card text-center">
                            <div class="card-body">
                              <p class="card-text"><em>{!!$feed->comments!!}</em></p>
                            </div>
                            <div class="card-footer text-muted">
                              By {{$feed->name}}
                            </div>
                          </div>
                    </div>
                @endforeach
            </div>
        </div>
        @endif<!-- /Feedback Slider -->

            <div class="container" style="padding:20px;">
                <div class="badge badge-primary text-wrap partner-head">
                    OUR MEDIA PARTNER
                </div>
                <br>
                <div class="card-group">
                    <div class="card part-img">
                        <img src="/assets/radiof.jpg" class="card-img-top ig" alt="...">
                        <div class="card-body">
                            <h5 class="card-title badge badge-danger text-wrap" style="width: 14rem; font-size: large;">
                                www.salaamnamaste.in</h5>
                            <p class="card-text">Salaam Namaste tries to engage the Community in all shows broadcast.
                                Every day in all the Live-phone in Programmes there is a Topic of the Day, where the
                                Community is invited to speak on. Outdoor-Broadcasting is also done to invite their
                                responses. We try to engage all classes and masses, particularly the unheard.</p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                    </div>
                    <div class="card part-img">
                        <img src="/assets/karostartup.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title badge badge-danger text-wrap" style="width: 14rem; font-size: large;">
                                www.karostartup.com</h5>
                            <p class="card-text">KaroStartup is community of startups and Entrepreneurs to create a
                                sustainable atmosphere for startups in India </p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                    </div>
                    <div class="card part-img">
                        <br><br>
                        <img src="/assets/citylive.jpeg" class="card-img-top ig2" alt="...">
                        <div class="card-body">
                            <br><br>
                            <h5 class="card-title badge badge-danger text-wrap"
                                style="width: 14rem; font-size: large; ">www.city24live.in</h5>
                            <p class="card-text">Sewacity is highly obliged to its media partner city24live for its
                                speedy and factual delivery of news and publicizing sewacity in the region.</p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                    </div>
                </div>
            </div>
            <!--div.-->
        </main>

        <!-- /main -->

        <!-- footer -->
        @include('inc.footer')

    </div> <!-- /footer -->

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous">
    </script>
    <!-- <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> -->
    <!-- owl carousel -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"
        integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA=="
        crossorigin="anonymous"></script>


    <script src="./js/swiper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous"></script>
    <!-- <script src="./js/main.js"></script> -->
    <!-- Initialize Swiper -->
    <script>
        $('.slider').slick({
            dots: true,
            infinite: false,
            speed: 300,
            slidesToShow: 3,
            slidesToScroll: 1,
            arrows:true,
            autoplay: true,
            autoplaySpeed: 2000,
            responsive: [
                {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: true
                }
                },
                {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
                },
                {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
                }
                // You can unslick at a given breakpoint now by adding:
                // settings: "unslick"
                // instead of a settings object
            ]
            });
        var swiper = new Swiper('.swiper-container', {
            effect: 'coverflow',
            grabCursor: true,
            centeredSlides: true,
            slidesPerView: 'auto',
            coverflowEffect: {
                rotate: 50,
                stretch: 0,
                depth: 100,
                modifier: 1,
                slideShadows: true,
            },
            pagination: {
                el: '.swiper-pagination',
            },
        });
        $('#cross').click(function() {
            $('.banner').css('display', 'none');
        });
        $('document').ready(function() {
            $("#banner-area .owl-carousel").owlCarousel({

                items: 1,
                responsive: {
                    0: {
                        items: 1,
                    },
                    600: {
                        items: 2,
                    },
                },
                loop: true,
                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true,
                dots: true,
            });
        });
        function navbar(x) {
            x.classList.toggle("change");
            var width=document.getElementById("second-nav").getBoundingClientRect().width;
            if(width==0)
            {
                document.getElementById("second-nav").style.width="80%";
            }
            else
            {
                document.getElementById("second-nav").style.width="0";
            }

        }
        $(document).ready(function(){
            $("#search-form").on('submit',function(e){
                e.preventDefault();
                var search=$('#Search-bar').val();
                // console.log(search);
                window.location.href="/products?category=0&searchbox="+search+"&sort=latest&page=1";
            });
            $(document).scroll(function(){
                if($(document).scrollTop()>150)
                {
                    $("#search-form").css("position","fixed");
                    $("#search-form").css("top","0");
                    $(".navbar-ham").css("top","60px");
                }
                else{
                    $("#search-form").css("position","relative");
                    $(".navbar-ham").css("top","20px");
                    // $("#search-form").css("display","block");
                }
            })
        });

    </script>

</body>

</html>

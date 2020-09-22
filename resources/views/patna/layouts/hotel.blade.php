<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Hotel</title>
    <!-- favicon -->	<link rel = "icon" type = "image/png" href = "/storage/images/logo.png">    <!-- For apple devices -->    <link rel = "apple-touch-icon" type = "image/png" href = "/storage/images/logo.png"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />
    <script src="https://kit.fontawesome.com/988756cd88.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">

    <!--<link rel="stylesheet" href="{{asset('hotels/css/bootstrap.min.css')}}">-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="{{asset('hotels/css/animate.css')}}">
    <link rel="stylesheet" href="{{asset('hotels/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{asset('hotels/css/aos.css')}}">
    <link rel="stylesheet" href="{{asset('hotels/css/bootstrap-datepicker.css')}}">
    <link rel="stylesheet" href="{{asset('hotels/css/jquery.timepicker.css')}}">
    <link rel="stylesheet" href="{{asset('hotels/css/fancybox.min.css')}}">
    
    <link rel="stylesheet" href="{{asset('hotels/fonts/ionicons/css/ionicons.min.css')}}">
    <link rel="stylesheet" href="{{asset('hotels/fonts/fontawesome/css/font-awesome.min.css')}}">

    <!-- Theme Style -->
    <link rel="stylesheet" href="{{asset('hotels/css/style.css')}}">
  </head>
  <style>
    #navbarTogglerDemo02{
        
        /*display:flex;*/
        /*border:2px solid black;*/
        /*justify-content:flex-end;*/
    }
    #navbarTogglerDemo02 ul
    {
    }
     #navbarTogglerDemo02 ul li{
         /*display:flex;*/
         color:white;
         font-weight:800;
         letter-spacing:4px;
     }
</style>

<body>
    
    <header class="site-header js-site-header">
      <div class="container-fluid"style="width:100%">
            <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #5de6de;
            background-image: linear-gradient(315deg, #5de6de 0%, #b58ecc 74%);">
              <a class="navbar-brand" href="#">SewaCity Presents</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
            
              <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                  <li class="nav-item ">
                    <a class="nav-link" href="/fbg">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/foodie">Food Service</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/products?category=0&sort=latest&searchbox=">E-Commerce</a>
                  </li>
                  <li class="nav-item active">
                    <a class="nav-link" href="/shelters">Shelters</a>
                  </li>
                </ul>
              </div>
            </nav>
      </div>
    </header>
    
       @yield('content')
    
    <script src="{{asset('hotels/js/jquery-3.3.1.min.js')}}"></script>
    <script src="{{asset('hotels/js/jquery-migrate-3.0.1.min.js')}}"></script>
    <script src="{{asset('hotels/js/popper.min.js')}}"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <!--<script src="{{asset('hotels/js/bootstrap.min.js')}}"></script>-->
    <script src="{{asset('hotels/js/owl.carousel.min.js')}}"></script>
    <script src="{{asset('hotels/js/jquery.stellar.min.js')}}"></script>
    <script src="{{asset('hotels/js/jquery.fancybox.min.js')}}"></script>
    
    
    <script src="{{asset('hotels/js/aos.js')}}"></script>
    
    <script src="{{asset('hotels/js/bootstrap-datepicker.js')}}"></script> 
    <script src="{{asset('hotels/js/jquery.timepicker.min.js')}}"></script> 

    

    <script src="{{asset('hotels/js/main.js')}}"></script>
</body>
  
</html>
@include('inc.footer')
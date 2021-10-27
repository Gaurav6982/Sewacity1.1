<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
	<!-- favicon -->	<link rel = "icon" type = "image/png" href = "/storage/images/logo.png">    <!-- For apple devices -->    <link rel = "apple-touch-icon" type = "image/png" href = "/storage/images/logo.png"/>
    <title>{{ config('app.name', 'Laravel') }}</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Scripts -->
    <!--<script src="{{ asset('js/app.js') }}" defer></script>-->

    <!-- Fonts -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" />
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <!-- Styles -->
    <!--<link href="{{ asset('css/app.css') }}" rel="stylesheet">-->
    {{-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> --}}
    {{-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"> --}}
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw==" crossorigin="anonymous" />
{{-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script> --}}
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" integrity="sha512-nMNlpuaDPrqlEls3IX/Q56H36qvBASwb3ipuo3MxeWbsQB1881ox0cRv7UPTgBlriqoynt35KjEwgGUeUXIPnw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="//cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />


</head>
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    /* font-family: cursive; */
  }
  ::selection{
    color: #fff;
    background: #f00053;
  }
  nav{
    display: flex;
    width: 100%;
    background-color: #2a2a72;
    background-image: linear-gradient(
  135deg, #ff7f64 0, #ff6e62 16.67%, #ff575e 33.33%, #ff3858 50%, #f00053 66.67%, #e40052 83.33%, #d90054 100%);
    position: relative;
    justify-content: space-between;
    text-align: center;
    padding: 15px 30px;
  }
  nav .icon{
    font-size: 26px;
    font-weight: 800;
    color: #FFF5FD;
    cursor: pointer;
  }
  nav ol{
    display: flex;
    list-style: none;
    margin: auto 0;
  }
  nav ol li{
    margin : 0 2px;
  }
  nav ol li a{
    color: #00000080;
    font-size: 15px;
    text-transform: capitalize;
    letter-spacing: 1px;
    padding: 5px 10px;
    text-decoration: none;
    border-radius: 12px;
    padding: 5px 10px;
  }
  .hideing_mb{
    display: none;
  }
  /* Drop Down start editing */
  nav ol li ul{
    position: absolute;
    top: 80px;
    z-index: 12;
    opacity: 1;
    visibility: hidden;
    list-style: none; 
    margin-left: -87px;
    margin-right: 0px;
  }
  nav ol li:hover > ul{
    top: 59px;
    opacity: 1;
    width: 200px;
    margin-right: 120px;
    visibility: visible;
    transition: all 0.3s ease;
  }
  nav ol li:hover > ul li a{
    padding: 15px 0px 15px 10px;
    color: #000000;
    background: #fff;
    margin-top: -11px;
  }
  nav ol li:hover > ul li a:hover{
    color: #fff;
    background: #f00053;
  }
  nav ol li ul li a{
    display: block;
    width: 100%;
    line-height: 20px;
    border-radius: 0px!important;
    text-align: left;
  }
  /* Drop Down ending editing */
  
  nav ol li:hover a{
    background:#fff;
    color: #f00053;
    border-radius: 12px;
    transition: all ease 0.3s;
  }
  nav .search_box{
    display: flex;
    margin: auto 0;
    height: 35px;
    line-height: 35px;
  }
  nav .search_box input{
    border: none;
    outline: none;
    background:#FFF5FD;
    height: 100%;
    padding: 0 10px;
    font-size: 20px;
    width: 315px;
  }
  nav .search_box span{
    color: #FFF5FD;
    font-size: 20px;
    background: #ff7f64;
    height: 100%;
    padding: 8px;
    position: relative;
    cursor: pointer;
    z-index: 1;  
  }
  nav .search_box span:hover{
    color: #f00053;
  }
  nav .search_box span::after{
    height: 100%;
    width: 0%;
    content: '';
    background: #FFF5FD;
    position: absolute;
    top:0;
    left: 0;
    z-index: -1;
    transition: 0.3s;
  }
  nav .search_box span:hover::after{
    width: 100%;
  }
  nav .bar{
    position: relative;
    margin: auto;
    display: none;
  }
  nav .bar span{
    position: absolute;
    color: #FFF5FD;
    font-size: 23px;
  }
  input[type="checkbox"]{
    -webkit-appearance: none;
    display: none;
    
  }
  input[type="search"]{
    font-size: 12px;
    padding-left: 10px;
    color:#f00053;
  }
  nav .cart{
    position: relative;
    margin: auto;
    display: none;
  }
  nav .cart span{
    position: absolute;
    font-size: 23px;
    color: #fff;
  }
  #loading{
	  position: fixed;
    width: 100%;
    height: 100vh;
    z-index: 999999;
    justify-content: center;
    align-items: center;
    display: flex;
    background-color: #E26A2C;
    background-color: rgb(15 6 20 / 90%);
}
  .search-input .autocom-box{
    padding: 0;
    opacity: 0;
    pointer-events: none;
    max-height: 280px;
    overflow-y: auto;
  }
  .search-input.active .autocom-box{
    padding: 10px 8px;
    opacity: 1;
    pointer-events: auto;
  }
  .btns{
    border: none;
    outline: none;
    
  }
  @media screen and (max-width:786px){
    nav{
      display: block;
    }
    .icon{
      display: none;
    }
    nav .icon{
      display: inline-block;
      padding: 15px 30px;
    }
    nav .search_box{
      width: 100%;
      display: inline-flex;
      justify-content: center;
      margin-bottom: 15px;
    }
    nav .search_box input{
      width: 100%;
    }
    nav ol{
      display: flex;
      flex-direction: column;
      background: #FFF5FD;
      height: 0;
      visibility: hidden;
      transition: 0.5s ease;
    }
    nav ol li{
      text-align: center;
      transition: 0.3s 0.1s all;
      opacity: 0;
    }
    nav ol li a{
      color: black;
      font-size: 20px;
      padding: 25px;
      display: block;
    }
    nav ol li:nth-child(1){
      transform: translateX(-150px);
    }
    nav ol li:nth-child(2){
      transform: translateX(-200px);
    }
    nav ol li:nth-child(3){
      transform: translateX(-250px);
    }
    nav ol li:nth-child(4){
      transform: translateX(-300px);
    }
    nav ol li:nth-child(5){
      transform: translateX(-350px);
    }
    nav .bar{
      display: block;
      position: absolute;
      top: 20px;
      cursor: pointer;
    }
    nav .bar #times{
      display: none;
    }
    #check:checked ~ nav .bar #times{
      display: block;
    }
    #check:checked ~ nav .bar #bars{
      display: none;
    }
    #check:checked ~ nav ol{
      visibility: visible;
      height: 400px;
    }
    #check:checked ~ nav ol li:nth-child(1),
    #check:checked ~ nav ol li:nth-child(2),
    #check:checked ~ nav ol li:nth-child(3),
    #check:checked ~ nav ol li:nth-child(4),
    #check:checked ~ nav ol li:nth-child(5){
    transform: translateX(0);
    opacity: 1;
    }
    
    /* cart Editing  */
    nav .cart{
      display: block;
      position: absolute;
      top: 20px; 
      right: 55px;
      cursor: pointer;
    }
    /* cart Editing end */
  
    /* Drop Down  */
    nav ol li ul{
        position: absolute;
        top: 80px;
        visibility: hidden;
        list-style: none; 
        margin-left: -87px;
        margin-right: 0px;
    }
    nav ol li:hover > ul{
        top: 59px;
        opacity: 1;
        width: 250px;
        margin-right: 100px;
        visibility: visible;
        transition: all 0.3s ease;
        margin-left: 1px;
        z-index: 3;
    }
    nav ol li:hover > ul li a{
        padding: 14px 0px 14px 1px;
        font-size: 18px;
        color: #1b1b11;
        background: #FFF5FD;
        text-align: center;
        margin-top: 6px;
    }
    nav ol li:hover > ul li a:hover{
        color: #FFF5FD;
        background:#f00053;
    }
    nav ol li ul li a{
        display: block;
        width: 100%;
        line-height: 20px;
        border-radius: 0px!important;
        text-align: left;
    }
    .login_drop:hover{
      margin-bottom: 230px;
    }
    .hideing_mb{
      display: inline-block;
    }
    
  }
</style>
<style>
#messages{
    /* padding-top: 65px; */
}
#select-dropdown{
    /* position: fixed; */
    /* top: 60px; */
    display: none;
    margin-top: 10px;
    /* height: 80px; */
    z-index: 99;
    /* background-color: white; */
    width: 100%;
}
@media only screen and (max-width:600px)
    {
        #select-dropdown{
            display: unset;
            word-wrap:normal;
            overflow: hidden;
            appearance: none;
        }
        #select-dropdown select{
            border-radius: 20px;
            overflow: hidden;
            border: none;
            outline: none;
        }
        #select-dropdown select option{
            width: 80%;
            overflow: hidden;
        }
        #messages{
            
            padding: 0;
            margin:0;
            /* padding-top: 120px; */
        }

    }
.outerdiv {
	position: relative;
	overflow: hidden;
}

.innerimage {
	position: relative;
	width: 100%;
}

.sold {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	width: 100%;
	height: 100%;
	opacity: 0.7;
}

.custom {
	color: white;
	font-weight: 500
}

.custom:hover {
	color: black;
	font-weight: 900
}

.hoverable {
	display: inline-block;
	backface-visibility: hidden;
	vertical-align: middle;
	position: relative;
	box-shadow: 0 0 1px rgba(0, 0, 0, 0);
	transform: translateZ(0);
	transition-duration: .3s;
	transition-property: transform;
}

.hoverable:before {
	position: absolute;
	pointer-events: none;
	z-index: -1;
	content: '';
	top: 100%;
	left: 5%;
	height: 10px;
	width: 90%;
	opacity: 0;
	background: -webkit-radial-gradient(center, ellipse, rgba(255, 255, 255, 0.35) 0%, rgba(255, 255, 255, 0) 80%);
	background: radial-gradient(ellipse at center, rgba(255, 255, 255, 0.35) 0%, rgba(255, 255, 255, 0) 80%);
	/* W3C */
	transition-duration: 0.3s;
	transition-property: transform, opacity;
}

.hoverable:hover,
.hoverable:active,
.hoverable:focus {
	transform: translateY(-5px);
}

.hoverable:hover:before,
.hoverable:active:before,
.hoverable:focus:before {
	opacity: 1;
	transform: translateY(-5px);
}


/*everything below here is just setting up the page, so dont worry about it */

body {
	/*background-image:url('./assets/bg.jpg');*/
	/*background-color: #21d190;*/
    min-height: 100vh;
    background-color: #7f53ac;
background-image: linear-gradient(315deg, #7f53ac 0%, #647dee 74%);
	/* background-image: linear-gradient(135deg, #21d190 0%, #d65bca 74%) !important; */
	/* background-color: #21d190; */
	font-weight: 600;
    position: relative;
}
#app nav{
    /* background-color: #2a2a72;
    background-image: linear-gradient(315deg, #2a2a72 0%, #009ffd 74%); */
}
.page-title {
	opacity: .75 !important;
}

.comname {
	letter-spacing: 8px;
	font-weight: 800;
	font-family: 'Impact';
	text-transform: uppercase;
}
</style>
@yield('styles')
<body onload="myFunction()">
  <div id="loading" >
    <img src="{{'../assets/pred.gif'}}" alt="preloader">
  </div>
    {{-- <div id="preloader">
        <img src="/storage/preload/126.gif" alt="">
    </div> --}}
    <div id="app">
        @include('nav')
        {{-- <nav>
            @yield('extra')
        </nav> --}}
        <div id="messages">
            @include('inc.messages')
        </div>
        
        <main >
            @yield('content')
        </main>

        {{-- Modal --}}
        @include('inc.modals')
    </div>
</body>
<script>
  // var praaeloader = document.getElementById('loading');
  // function myFunction (){
  //  praaeloader.style.display = 'none';
  setTimeout(function(){ 
      var pre = document.getElementById('loading');
      pre.style.display = "none";
   },2000);
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
{{-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script> --}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js" integrity="sha512-2ImtlRlf2VVmiGZsjm9bEyhjGW4dU7B6TNwh/hx/iSByxNENtj3WVE6o/9Lj4TJeVXPi4bnOIMXFIJJAeufa0A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
<script src="//cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
    $(function(){
  var str = '#len';
  $(document).ready(function(){
    var i, stop;
    i = 1;
    stop = 4;
    setInterval(function(){
      if (i > stop){
        return;
      }
      $('#len'+(i++)).toggleClass('bounce');
    }, 500)
  });
});
var city;
$(function(){
    @guest
    $('#select-dropdown select').val(sessionStorage.getItem("city"));
   
    $('#select-dropdown select').on("change",function(){
        var city_id=$('#select-dropdown select').val();
        sessionStorage.setItem("city", city_id);
        $.ajax({
            url:'setSession',
            method:"POST",
            data:{
                city:city_id,
                _token:"{{csrf_token()}}",
            },
            success:function(data){
                console.log("set");
                location.reload();
            },
            error:function(error){
                console.log("error");
            }
        })
        
        city=city_id;
    })
    
    // alert($.cookie("city")); 
    @endguest
});
    
    
</script>
<script>
  $(document).ready(function () {
     $('input[type="checkbox"]').click(function(){
        if($(this).prop("checked") == true){
           $('#strech').click(function(){
                 $('#OOel').css("height","650px");
           });  
        }
     });
  });
</script>
@yield('js')
</html>
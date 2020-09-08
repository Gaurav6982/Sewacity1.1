@extends('layouts.both')
<script data-ad-client="ca-pub-7017377304327800" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
@section('extra')
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-166801585-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-166801585-1');
</script>

<!--<div class="alert alert-primary" role="alert">-->
<!--    Under Construction ! Our website is currently undergoing scheduled maintenance.we should be back shortly.Thank you for your patience.-->
<!--  </div>-->

@endsection
@section('styles')
    .bouter{
        position:relative;
    }
    .banner{
        position:absolute;
        width:100%;
        height:100%;
        background-color:grey;
        background: rgba(0, 0, 0, 0.5);
        z-index:1;
    }
    .imag{
        border:5px solid #31BB01;
        border-radius:5px;
        position:fixed;
        width:380px;
        left:50%;
        transform:translateX(-50%);
        overflow:hidden;
        height:80%;
    }
    .imag img{
        width:100%;
        height:100%;
    }
    i.fa-times{
        position:absolute;
        top:10px;
        right:10px;
        color:#BB2201;
        cursor:pointer;
        transition:all 0.3s;
    }
    i.fa-times:hover{
        transform:scale(1.3);
    }
    a.corona{
        position:absolute;
        left:50%;
        color:white;
        transform:translateX(-50%);
        text-decoration:none;
        overflow:hidden;
        box-shadow: 0 20px 50px rgba(0,0,0,0.5);
        padding:15px 20px;
        letter-spacing:4px;
    }
    a.corona:before{
        content:'';
        position:absolute;
        width:50%;
        top:2px;
        left:2px;
        bottom:2px;
        background:rgba(0,0,0,0.2);
        transition:all 1s;
    }
    a.corona:hover:before{
        transform:translateX(100%);
    }
    a.corona span:nth-child(1)
    {
        position:absolute;
        top:0;
        left:0;
        width:100%;
        height:2px;
        background:linear-gradient(to right,#0c002a,#1779fe);
        animation: animate1 linear 2s infinite;
    }
    @keyframes animate1{
        0%{
            transform:translateX(-100%);
        }
        100%{
            transform:translateX(100%);
        }
    }
    a.corona span:nth-child(2)
    {
        position:absolute;
        top:0;
        right:0;
        height:100%;
        width:2px;
        background:linear-gradient(to bottom,#0c002b,#1779ff);
        animation: animate2 linear 2s infinite;
    }
    @keyframes animate2{
        0%{
            transform:translateY(100%);
        }
        100%{
            transform:translateY(-100%);
        }
    }
    a.corona span:nth-child(3)
    {
        position:absolute;
        left:0;
        bottom:0;
        width:100%;
        height:2px;
        background:linear-gradient(to left,#0c002b,#1779ff);
        animation: animate3 linear 2s infinite;
    }
    @keyframes animate3{
        0%{
            transform:translateX(100%);
        }
        100%{
            transform:translateX(-100%);
        }
    }
    a.corona span:nth-child(4)
    {
        position:absolute;
        top:0;
        left:0;
        height:100%;
        width:2px;
        background:linear-gradient(to top,#0c002a,#1779fe);
        animation: animate4 linear 2s infinite;
    }
    @keyframes animate4{
        0%{
            transform:translateY(-100%);
        }
        100%{
            transform:translateY(100%);
        }
    }
        .coronabtn{
    width: 100%;position: relative;height: 80px;
    }
    @media only screen and (max-width: 415px) {
          .imag{
            width:300px;
            height:70%;
        }
        a.corona{
            letter-spacing:2px;
            font-size:10px;
            padding:7px 10px;
            width:50%;
        }
        .coronabtn{
        height:50px;
        }

    }
@endsection
@section('content')



<div class="bouter">



  <div class="container">
       <div class="alert alert-light" role="alert">
    Appreciate Our Work by Downloading App Also!
    <a href="">Forbesganj</a> Contact No +91 9117575868
  </div>
    <center><div class="coronabtn"><a href="https://www.covid19india.org/state/BR" class="corona pull-right">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Corona Update
        </a></div></center>
    <center>
    <center>

    <div class="card">
    <img class="card-img-top"src="/storage/images/SEO.jpg" alt="SEO">
    <div class="card-body">
    <h3 class="card-title">Illustration</h3>
    <p class="card-text">Sewacity offer to provide a digital platform to every business of Forbesganj city where every businessman can expand their businesses. The lack of an online advertising facilitiy is a hindrance to the businessman to get the attention of the possible clients, which we aim to bring down. Sewacity will help the customers too as it provides an easy way to learn about the availability and cost price of the products as well as comparing the options. Our intention is to establish ourselves as a bridge between the customers and sellers. It will work as a boon in development of the businessmen and the residents of Forbesganj.</p>
    <a href="https://docs.google.com/forms/d/e/1FAIpQLSdk56Axgo_BFtSTCIIZxi90f4iV7VMWP6tnRFXyZUOfnJdyzA/viewform?vc=0&c=0&w=1"class="btn btn-success">Click Here for Tie Up</a>

    </div>
    {{-- </div> --}}
    </div>
    <div class="well container" style="padding: 2px;overflow: hidden;">
        <div class="row" >
            <div class=" col-md-6 col-sm-12">
                <div class=" card">
                    <div class="card-image-top" >
                        <img src="/storage/images/call.jpg" class="img-fluid" alt="Call" style="width: 90%;height: 200px;">
                    </div>
                    <div class="card-header">
                        Contact Us.
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="card ">
                    <div class="card-image-top">
                        <img src="/storage/images/patnagate.png" class="img-fluid" alt="Forbes" style="width: 90%;height: 200px;">
                    </div>
                    <div class="card-header">
                        Welcome to Patna.<span style='font-size:15px;'>&#128521;</span>
                    </div>
                </div>
            </div>
        </div>


    </div>
    </center>
    </div></div>
    <br><br>

    {{-- <footer><b>
        &copy; 2020 Sewacity.com  &nbsp;, All rights reserved | Privacy Policy | Terms and Conditions
    </b>  </footer> --}}
   <!-- The core Firebase JS SDK is always required and must be listed first -->
   @include('patna.inc.footer')
@endsection

@section('js')




  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyBqhxidv-yU2lj60KKAElDndfp2a0ChtxU",
    authDomain: "sewacity-d02cb.firebaseapp.com",
    databaseURL: "https://sewacity-d02cb.firebaseio.com",
    projectId: "sewacity-d02cb",
    storageBucket: "sewacity-d02cb.appspot.com",
    messagingSenderId: "816795610079",
    appId: "1:816795610079:web:d4cd971788c8cbda13b26a",
    measurementId: "G-F17ZMGE6NY"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();

@endsection
<script src="https://www.gstatic.com/firebasejs/7.14.5/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.14.5/firebase-analytics.js"></script>

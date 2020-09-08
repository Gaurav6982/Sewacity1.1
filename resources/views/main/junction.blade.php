@extends('layouts.app')
<style>
    .head1{
      background-color: rgb(54, 173, 31);
      font-family: fantasy;
    }
    .head1 h2{
        font-family: 'Fondamento', cursive;
    }
    .sm{
      font-size: 15px;
    }
    .head1 h2:hover{
        -webkit-transition: all 0.12s ease-out;
   -moz-transition:    all 0.12s ease-out;
   -ms-transition:     all 0.12s ease-out;
   -o-transition:      all 0.12s ease-out;
        -webkit-transform: scale(1.1);
   -moz-transform:    scale(1.1);
   -ms-transform:     scale(1.1);
   -o-transform:      scale(1.1);
   text-shadow: 3px 3px 0 #333;
    }



  </style>
@section('content')
<div class="container">
    <!--
     <div class="alert alert-warning alert-dismissible fade show" role="alert">
<strong>Resturant Closed!</strong><br> Resturant will be closed for some time, Sorry for the inconvenience.
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
 <span aria-hidden="true">&times;</span>
</button>
</div>-->


 <div class="head1  p-3">
   <h2 class="impact" style="text-shadow: 1px 1px #fe4902,
             2px 2px #fe4902,
             3px 3px #fe4902,
             4px 4px #fe4902,
             5px 5px #fe4902,
             6px 6px #fe4902;">FOOD JUNCTION<br> Free delivery on order above ₹ 120 </h2>

 </div>
 <h4 class="text-center" style="background-color #ff4e00;
background-image:linear-gradient(315deg, #ff4e00 0%, #ec9f05 74%);
border-bottom-left-radius:50px;
border-bottom-right-radius:50px;
font-family: 'Yanone Kaffeesatz', sans-serif;
padding:4px 0;

"><span style="color: #b3cdd1;
text-shadow: 2px 2px 4px #000;
">Rs.19 Delivery Charge Below 120</span></h4>
 <div class="row row-cols-1 row-cols-md-3">
   <div class="col mb-4">
     <div class="card">
       <img src="/storage/images/vegmomojun.webp" class="card-img-top" alt="..."  width="100%" height="350">
       <div class="card-body">
         <h5 class="card-title">Veg momo </h5>
         <p class="card-text"><b>₹ 40</b></p>
       </div>
     </div>
   </div>
   <div class="col mb-4">
     <div class="card">
       <img src="/storage/food-junction/fried jun.webp" class="card-img-top " alt="..."width="100%" height="350">
       <div class="card-body">
         <h5 class="card-title">Fried momo</h5>
         <p class="card-text"><b>₹ 50.</b></p>
       </div>
     </div>
   </div>

   <div class="col mb-4">
     <div class="card">
       <img src="/storage/food-junction/chilli momo jun.webp" class="card-img-top" alt="..."width="100%" height="350">
       <div class="card-body">
         <h5 class="card-title">chilli momo</h5>
         <p class="card-text"><b>₹ 60</b></p>
       </div>
     </div>
   </div>
   <div class="col mb-4">
     <div class="card">
       <img src="/storage/food-junction/chowmienjun.webp" class="card-img-top" alt="..."width="100%" height="350">
       <div class="card-body">
         <h5 class="card-title">Veg chowmein</h5>
         <p class="card-text"><b>₹ 30 </b></p>
       </div>
     </div>
   </div>
   <div class="col mb-4">
     <div class="card">
       <img src="/storage/food-junction/panir ch jun.webp" class="card-img-top" alt="..."width="100%" height="350">
       <div class="card-body">
         <h5 class="card-title">Panir chowmein</h5>
         <p class="card-text"><b>₹ 40</b></p>
       </div>
     </div>
   </div>
   <div class="col mb-4">
     <div class="card">
       <img src="/storage/food-junction/paavbhajijun.webp" class="card-img-top" alt="..."width="100%" height="350">
       <div class="card-body">
         <h5 class="card-title">Paav bhaji</h5>
         <p class="card-text"><b>₹ 30 </b></p>
       </div>
     </div>
   </div>
   <div class="col mb-4">
     <div class="card">
       <img src="/storage/food-junction/veg manchurien.webp" class="card-img-top" alt="..."width="100%" height="350">
       <div class="card-body">
         <h5 class="card-title">Veg manchurian</h5>
         <p class="card-text"><b>₹ 60 </b></p>
       </div>
     </div>
   </div>
   <div class="col mb-4">
     <div class="card">
       <img src="/storage/food-junction/fri jun.jpg" class="card-img-top" alt="..."width="100%" height="350">
       <div class="card-body">
         <h5 class="card-title">Veg Fried rice</h5>
         <p class="card-text"><b>₹ 40 </b></p>
       </div>
     </div>
   </div>
   <!--<div class="col mb-4">-->
   <!--  <div class="card">-->
   <!--    <img src="//storage/sanmomo/paniir burger.png" class="card-img-top" alt="..."width="100%" height="350">-->
   <!--    <div class="card-body">-->
   <!--      <h5 class="card-title">Paneer Burger</h5>-->
   <!--      <p class="card-text"><b>₹ 50 </b></p>-->
   <!--    </div>-->
   <!--  </div>-->
   <!--</div>-->
   <div class="col mb-4">
     <div class="card">
       <img src="/storage/food-junction/burgerjun.webp" class="card-img-top" alt="..."width="100%" height="350">
       <div class="card-body">
         <h5 class="card-title">Veg burger</h5>
         <p class="card-text"><b>₹ 30 </b></p>
       </div>
     </div>
   </div>
   <div class="col mb-4">
     <div class="card">
       <img src="/storage/food-junction/tikkijunction.webp" class="card-img-top" alt="..."width="100%" height="350">
       <div class="card-body">
         <h5 class="card-title">Tikki chat </h5>
         <p class="card-text"><b>₹ 30</b></p>
       </div>
     </div>
   </div>


 </div>
 </div>

 <button type="button" class="btn btn-primary btn-lg btn-block" data-container="body" data-toggle="popover" data-placement="top" data-content="Would you Like to Order Something?">Call For Order-9117575868</button>

 </div>
@endsection

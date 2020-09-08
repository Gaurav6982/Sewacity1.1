@extends('layouts.app')
<link href="https://fonts.googleapis.com/css2?family=Bangers&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Fondamento:ital@0;1&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz&display=swap" rel="stylesheet">
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
        
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Resturant Closed!</strong><br> Resturant will be closed for some time, Sorry for the inconvenience.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
        
        
    <div class="head1  p-3">
      <h2 class="impact" style="text-shadow: 1px 1px #fe4902, 
                2px 2px #fe4902, 
                3px 3px #fe4902, 
                4px 4px #fe4902, 
                5px 5px #fe4902, 
                6px 6px #fe4902;">Sawan Special<br> Free delivery on order above ₹ 200 </h2>
       
    </div>
    <h4 class="text-center" style="background-color #ff4e00;
background-image:linear-gradient(315deg, #ff4e00 0%, #ec9f05 74%);
border-bottom-left-radius:50px;
border-bottom-right-radius:50px;
font-family: 'Yanone Kaffeesatz', sans-serif;
padding:4px 0;

"><span style="color: #b3cdd1;
 text-shadow: 2px 2px 4px #000;
">Rs.20 Delivery Charge Below 200</span></h4>
    <div class="row row-cols-1 row-cols-md-3">
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/dosa.webp" class="card-img-top" alt="..."  width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Paneer Dosa </h5>
            <p class="card-text"><b>₹ 70</b></p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/masala dosa.webp" class="card-img-top " alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Masala dosa</h5>
            <p class="card-text"><b>₹ 50.</b></p>
          </div>
        </div>
      </div>
     
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/pav bhaji.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Pav bhaji</h5>
            <p class="card-text"><b>₹ 40</b></p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/pasta.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Pasta</h5>
            <p class="card-text"><b>₹ 40 </b></p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/paniir momo.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Paneer Momo</h5>
            <p class="card-text"><b>₹ 60 --8 pcs</b></p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/chilli paniir.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Chilli Paneer</h5>
            <p class="card-text"><b>₹ 100 Dry/Gravy </b></p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/paniir pakoda.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Paneer Pakora</h5>
            <p class="card-text"><b>₹ 100 </b></p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/utpam.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Utpam</h5>
            <p class="card-text"><b>₹ 50 </b></p>
          </div>
        </div>
      </div>
      <!--<div class="col mb-4">-->
      <!--  <div class="card">-->
      <!--    <img src="/storage/sanmomo/paniir burger.png" class="card-img-top" alt="..."width="100%" height="350">-->
      <!--    <div class="card-body">-->
      <!--      <h5 class="card-title">Paneer Burger</h5>-->
      <!--      <p class="card-text"><b>₹ 50 </b></p>-->
      <!--    </div>-->
      <!--  </div>-->
      <!--</div>-->
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/veg roll.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Veg Roll</h5>
            <p class="card-text"><b>₹ 30 </b></p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/paniir roll.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Paneer roll </h5>
            <p class="card-text"><b>₹ 40---1 pcs</b></p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/veg momo.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Veg Momo</h5>
            <p class="card-text"><b>₹ 45---8 pcs</b></p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/paniir rumpum.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Paneer Rumpum</h5>
            <p class="card-text"><b>₹ 50 </b></p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/paneer-chowmien.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Paneer chowmein</h5>
            <p class="card-text"><b>₹ 50 </b></p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/veg chowmien.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Veg chowmein</h5>
            <p class="card-text"><b>₹ 40 </b></p>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/veg rumpum.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Veg Rumpum</h5>
            <p class="card-text"><b>₹ 40 </b></p>
          </div>
        </div>
      </div>

      <div class="col mb-4">
        <div class="card">
          <img src="/storage/sanmomo/veg burger.webp" class="card-img-top" alt="..."width="100%" height="350">
          <div class="card-body">
            <h5 class="card-title">Veg Burger</h5>
            <p class="card-text"><b>₹ 40 </b></p>
          </div>
        </div>
      </div>
      
    </div>
    </div>
    
    <button type="button" class="btn btn-primary btn-lg btn-block" data-container="body" data-toggle="popover" data-placement="top" data-content="Would you Like to Order Something?">Call For Order-9117575868</button>

@endsection
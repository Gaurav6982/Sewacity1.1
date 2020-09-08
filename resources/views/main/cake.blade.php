@extends('layouts.app')
@section('styles')
    h2.impact {
        font-family: Impact, Charcoal, sans-serif;
        color:#99ffcc;
    }
    .head p{
        font-weight: 500;
    }
    .am{
        font-weight:400;
    }
    .cake-img{
      height:250px;
      border-bottom:1px solid black;
    }
    .special-img{
        height:300px;
        border-bottom:1px solid black;
    }
    .card{
      border:4px solid black;
      height:400px;
    }
    .card1{
    height:310px;
    border:4px solid solid back;
    }
    .head1{

font-style: oblique;
color: rgb(237, 243, 243);
background-color: black;
}
    
@endsection
@section('content')
  <div class="container">
    <div class="head  p-3">
      <h2 class="impact">Cake Palace</h2>
      <p style="color:#fff">Best cake shop in the city.</p>
      <button type="button" class="btn btn-secondary pull-right" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Call to Place a Order. We have a large Variety.">
      Call For Order-9117575868
      </button>
    </div>
      <br>        
      <hr class="bg-white">
    <div class="row">
            <!-- First col -->
        <div class="col-md-3">
            <div class="card">
            <img src="/storage/images/choclate.jpeg" class="card-img-top cake-img" alt="Vanilla Cake">
            <div class="card-body">
              <h5 class="card-title">Vanilla Cake <br></h5>
              <p class="card-text">Eggless & fresh Cake.<br>Rs-300</p>
              <!--<p class="card-text "><span class="am"></span></p>-->

              <!-- <a href="#" class="btn btn-primary">Call For Order-9117575868</a> -->
            </div>
            </div>

            <div class="card">
            <img src="/storage/images/cake42.jpeg" class="card-img-top cake-img" alt="Butter Scotch">
            <div class="card-body">
              <h5 class="card-title">Butterscotch <br></h5>
              <p class="card-text">Eggless & fresh Cake.<br>Rs - 300</p>
              <!--<p class="card-text am">Rs-300</p>-->

              <!-- <a href="#" class="btn btn-primary">Call For Order-9117575868</a> -->
            </div>
            </div>

            <div class="card">
            <img src="/storage/images/vanilla900.jpeg" class="card-img-top cake-img" alt="Vanilla Cake">
            <div class="card-body">
              <h5 class="card-title">Vanilla Cake <br>( 3 Pound )</h5>
              <p class="card-text">Eggless & fresh Cake.<br>Rs - 900</p>
              <!--<p class="card-text am">Rs-300</p>-->

              <!-- <a href="#" class="btn btn-primary">Call For Order-9117575868</a> -->
            </div>
            </div>
        </div>
        <!-- Second col -->
        <div class="col-md-3">
          <div class="card">
          <img src="/storage/images/cake411.jpeg" class="card-img-top cake-img" alt="Choco-Vanilla">
            <div class="card-body">
              <h5 class="card-title">Choco-Vanilla <br></h5>
              <p class="card-text">Eggless & fresh Cake.<br>Rs - 300</p>
              <!--<p class="card-text am"></p>-->

            <!-- <a href="#" class="btn btn-primary">Call For Order-9117575868</a> -->
          </div>
          </div>

          <div class="card">
          <img src="/storage/images/cake41.jpeg" class="card-img-top cake-img" alt="Vanilla">
            <div class="card-body">
              <h5 class="card-title">Vanilla <br></h5>
              <p class="card-text">Eggless & fresh Cake.<br>Rs-300</p>
        
              <!--<p class="card-text am"></p>-->

            <!-- <a href="#" class="btn btn-primary">Call For Order-9117575868</a> -->
          </div>
          </div>

          <div class="card">
          <img src="/storage/images/mixfruit.jpeg" class="card-img-top cake-img" alt="Mix Fruit">
            <div class="card-body">
              <h5 class="card-title">Mix Fruit Cake <br>( 6 Pound )</h5>
              <p class="card-text">Eggless & fresh Cake.<br>Rs-1800</p>
        
              <!--<p class="card-text am"></p>-->

            <!-- <a href="#" class="btn btn-primary">Call For Order-9117575868</a> -->
          </div>
          </div>
        </div>
        <!-- Third col -->
        <div class="col-md-3">
            <div class="card">
            <img src="/storage/images/choco350.jpg" class="card-img-top cake-img" alt="Chocolate Cake">
            <div class="card-body">
              <h5 class="card-title">Chocolate Cake <br></h5>
              <p class="card-text">Eggless & fresh Cake.<br>Rs-350</p>
              <!--<p class="card-text "><span class="am"></span></p>-->

              <!-- <a href="#" class="btn btn-primary">Call For Order-9117575868</a> -->
            </div>
            </div>

            <div class="card">
            <img src="/storage/images/choco351.jpeg" class="card-img-top cake-img" alt="Chocolate Cake">
            <div class="card-body">
              <h5 class="card-title">Chocolate Cake<br></h5>
              <p class="card-text">Eggless & fresh Cake.<br>Rs - 350</p>
              <!--<p class="card-text am">Rs-300</p>-->

              <!-- <a href="#" class="btn btn-primary">Call For Order-9117575868</a> -->
            </div>
            </div>
        </div>
        <!-- Fourth col -->
        <div class="col-md-3">
            <div class="card">
            <img src="/storage/images/vanilla900.jpeg" class="card-img-top cake-img" alt="Vanilla Cake">
            <div class="card-body">
              <h5 class="card-title">Vanilla Cake <br>(3 Pound)</h5>
              <p class="card-text">Eggless & fresh Cake.<br>Rs-900</p>
              <!--<p class="card-text "><span class="am"></span></p>-->

              <!-- <a href="#" class="btn btn-primary">Call For Order-9117575868</a> -->
            </div>
            </div>

            <div class="card">
                <img src="/storage/images/choco1050.jpeg" class="card-img-top cake-img" alt="Chocolate Cake">
                <div class="card-body">
                  <h5 class="card-title">Chocolate Cake <br>( 3 Pound )</h5>
                  <p class="card-text">Eggless & fresh Cake.<br>Rs - 1050</p>
                  <!--<p class="card-text am">Rs-300</p>-->
    
                  <!-- <a href="#" class="btn btn-primary">Call For Order-9117575868</a> -->
                </div>
            </div>
        </div>
      </div> <!-- row end -->
      <!--pic cake-->
      
       <div class="head1 mt-5 p-3">
      <h2 class="impact">Photo Print Cake</h2>
     
    </div>
    <div class="row">   
      <div class="col-md-4">
        <div class="card">
          <img src="/storage/images/chocalteprint.jpeg" class="card-img-top special-img" alt="..." >
          <div class="card-body">
            <h5 class="card-title">Chocolate Photo Print Cake</h5></h5>
            <p class="card-text"><b>₹ 600</b></p>
            <br>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
          <img src="/storage/images/vanilaprint.jpeg" class="card-img-top special-img" alt="...">
          <div class="card-body">
            <h5 class="card-title">Vanilla Photo Print Cake</h5>
            <p class="card-text"><b>₹ 550.</b></p>
          </div>
        </div>
      </div>
      </div>
      
       <!--END-->
      
       <div class="head1 mt-5 p-3">
      <h2 class="impact">Sewacity special<br> Min Order ₹150</h2>
     
    </div>
    <div class="row">   
      <div class="col-md-4">
        <div class="card">
          <img src="/storage/images/cream roll.jpeg" class="card-img-top special-img" alt="..." >
          <div class="card-body">
            <h5 class="card-title">Cream Roll</h5>
            <p class="card-text"><b>₹ 15</b></p>
            <br>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
          <img src="/storage/images/choclateroll.jpg" class="card-img-top special-img" alt="...">
          <div class="card-body">
            <h5 class="card-title">Chocolate Roll</h5>
            <p class="card-text"><b>₹ 20.</b></p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
          <img src="/storage/images/vanila.jpeg" class="card-img-top special-img" alt="...">
          <div class="card-body">
            <h5 class="card-title">Eggless Vanilla Pastry</h5>
            <p class="card-text"><b>₹ 30 </b></p>
          </div>
        </div>
      </div>
     </div>
        <div class="row mt-3">
          <div class="col-md-4">
            <div class="card">
              <img src="/storage/images/pastri.jpeg" class="card-img-top special-img" alt="...">
              <div class="card-body">
                <h5 class="card-title">Chocolate Pastry</h5>
                <p class="card-text"><b>₹ 45</b></p>
              </div>
            </div>
          </div>
        </div>
      
    
    
    <button type="button" class="btn btn-primary btn-lg btn-block mt-4" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Call to Place a Order. We have a large Variety.">Call For Order-9117575868</button>

       </div> <!-- container end -->
      
   
   
@endsection
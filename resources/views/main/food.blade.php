@extends('layouts.app')

@section('styles')

    .img{

         height: 500px;

      }

      .order{

        width: 25rem;

        font-size: 25px;

      }

      @media only screen and (max-width: 400px) {

      .img{

        height: 200px;

      }

      .order{

        width: 100%;

      }

    }

@endsection

@section('content')

<!--<img src="storage/images/slogo.png"class="logo">-->

<div class="container" style="overflow: hidden;">

  <section>

      <div class="slider shadow-lg mb-10 bg-white rounded"style="border:1px solid black">

        <div id="slider" class="carousel slide carousel-fade" data-ride="carousel">

          <div class="carousel-inner">

           <!--  <div class="carousel-item active">

              <img src="cake1.jpeg" class="d-block w-100">

            </div> -->

            <div class="carousel-item">

              <img src="storage/images/paanipuri.jpeg" class="d-block w-100 img">

            </div>

            <div class="carousel-item">

              <img src="storage/images/momo.jpeg" class="d-block w-100 img">



            </div>

            <div class="carousel-item active">

              <img src="storage/images/sna.jpeg" class="d-block w-100 img">

            </div>

          </div>

          <ol class="carousel-indicators">

            <li data-target="#slider" data-slide-to="0" class="active"></li>

            <li data-target="#slider" data-slide-to="1"></li>

            <li data-target="#slider" data-slide-to="2"></li>

            <!-- <li data-target="#slider" data-slide-to="3"></li> -->



          </ol>

          <a class="carousel-control-prev" href="#slider" role="button" data-slide="prev">

            <span class="carousel-control-prev-icon" aria-hidden="true"></span>

            <span class="sr-only">Previous</span>

          </a>

          <a class="carousel-control-next" href="#slider" role="button" data-slide="next">

            <span class="carousel-control-next-icon" aria-hidden="true"></span>

            <span class="sr-only">Next</span>

          </a>

        </div>

      </div>

      </section>

      <br>

      <section>



      <div class="badge badge-primary text-wrap order">    Order Food Online

      </div>

      <br>

      <br>

      <div class="row">

           <div class="col-md-6 offset-md-3" style="margin-bottom:10px">

    <div class="card">

      <img src="storage/images/jaincake.jpeg" class="card-img-top" alt="Cake Palace">

      <div class="card-body">

        <h5 class="card-title">Honey N Cakes</h5>

        <p class="card-text">Dessert & Treats Many More.</p>

        <a href="#" class="btn btn-primary">Order online</a>

      </div>

    </div>

    </div>

        <div class="col-md-6 offset-md-3" style="margin-bottom:10px">

        <div class="card">

          <img src="storage/images/cake211.jpeg" class="card-img-top" alt="Cake Palace">

          <div class="card-body">

            <h5 class="card-title">Cake Palace</h5>

            <p class="card-text">Here you get all your favorite customised cakes with a very decent price. The best part of this shop is that here you paid for the quality and also quantity. From here you can also get bakery biscuits,pizza, petties and many other things..</p>

            <a href="/foodie/cake" class="btn btn-primary">Check Menu</a>

          </div>

        </div>

        </div>



        <div class="col-md-6 offset-md-3" style="margin-bottom:10px">

          <div class="card">

              <img src="storage/images/phu.webp" class="card-img-top" alt="Chaat Stall">

              <div class="card-body">

                <h5 class="card-title">Bihar Chaat stall(City's famous) </h5>

                <p class="card-text">Pani-puri,Momo,Samosa,Papdi chaat available here.(Please Order Before the time)</p>

                <a href="#" class="btn btn-primary">Call For Order-9117575868</a>

              </div>

          </div>

        </div>



        <!--new food junction-->

              <div class="col-md-6 offset-md-3"style="margin-bottom:10px">

      <div class="card">

          <img src="storage/images/foodjunction.jpeg" class="card-img-top" alt="Pizza">

          <div class="card-body">

            <h5 class="card-title">Food Junction</h5>

            <p class="card-text">Chinese ,North Indian(Please Order between 03:00 PM to 09:00 PM)</p>

            <a href="/foodie/food-junction" class="btn btn-primary"><span>Check Menu</span><br>Call For Order-9117575868</a>

          </div>

      </div>

    </div>



           <div class="col-md-6 offset-md-3"style="margin-bottom:10px">

      <div class="card">

          <img src="storage/images/pizza.jpg" class="card-img-top" alt="Pizza">

          <div class="card-body">

            <h5 class="card-title">LAZIZ PIZZA</h5>

            <p class="card-text">Laziz Pizza™ – Place where taste never ends..(Please Order between 11:00 AM to 08:00 PM)</p>

            <a href="/foodie/pizza" class="btn btn-primary"><span>Check Online</span><br>Call For Order-9117575868</a>

          </div>

      </div>

    </div>

      <div class="col-md-6 offset-md-3" style="margin-bottom:10px">

      <div class="card">

          <img src="storage/images/sandipnew.jpeg" class="card-img-top" alt="Chaat Stall">

          <div class="card-body">

            <h5 class="card-title">Sandeep MOMO Hut</h5>

            <p class="card-text">(Please Order between 10:00 AM to 08:00 PM)</p>

            <a href="/sanmomo" class="btn btn-primary">Check menu</a>

          </div>

      </div>

    </div>

      </div>

      </section>

</div>

  @endsection




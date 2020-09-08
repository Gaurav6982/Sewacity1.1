@extends('patna.layouts.app')
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
    .menu{
        background-color: white;
    }
    .exim{
        margin-top: 10px;
    }
    .sliderpat{
      height: 500PX;
      width: 20%;
       border-radius: 8px;padding: 20px 150px 20px 150px;
    }
    .choice{
        color: white;
    }
    .ali{
      text-align: right;
      display: flex;
      align-items: center;
        justify-content: flex-end
    }
    @media only screen and (max-width:600px)
    {
        .exim{height: 60px; width: 100%;}
        .sliderpat{height: 250PX;border: 2px solid #ddd; border-radius: 4px;padding: 5px;}
    }
</style>
@section('content')

<!--<img src="storage/images/slogo.png"class="logo">-->

<div class="w3-container" id="menu">
    <center>

    {{-- <img src="images/patnacake.jpeg" class="img-fluid" alt="Responsive image"> </center> --}}

      <div class="w3-content" style="max-width:700px">

        <h5 class="w3-center w3-padding-48"><center><a href="/patna/food/cart" class="btn btn-primary">Go To Cart</a></center><br><span class="w3-tag w3-wide">THE MENU</span></h5>

        <div class="w3-row w3-center w3-card w3-padding">
          <a href="javascript:void(0)" onclick="openMenu(event, 'Eat');" class="choice" id="myLink">
            <div class="w3-col s6 tablink">Cake</div>
          </a>
          <a href="javascript:void(0)" onclick="openMenu(event, 'Drinks');" class="choice">
            <div class="w3-col s6 tablink">Pastry</div>
          </a>
        </div>

        <div id="Eat" class="w3-container menu w3-padding-48 w3-card">
            @foreach ($cakes as $cake)
            <h5>{{$cake->food_name}}</h5>
            <p class="w3-text-grey"><b>₹ {{$cake->food_price}}</b>

                <div  class="ali">
                    @guest
                        <a href="/patna/food/{{$cake->id}}" class="btn btn-outline-dark ">Add</a>
                    @else
                        <?php $applied=App\PatnaCart::where('user_id','=',Auth::user()->id)->where('item_id','=',$cake->id)->first()?>
                        @if ($applied!=null)
                        <button disabled="disabled" class="btn btn-outline-info">Added</button>
                        @else
                        <a href="/patna/food/{{$cake->id}}" class="btn btn-outline-dark ">Add</a>
                        @endif
                    @endguest

                </div>
            </p><br>
            @endforeach
        </div>

        <div id="Drinks" class="w3-container menu w3-padding-48 w3-card">
            @foreach ($pastries as $pastry)
                <h5>{{$pastry->food_name}}</h5>
                <p class="w3-text-grey"><b>₹ {{$pastry->food_price}}</b>
                    <div class="ali">
                        @guest
                        <a href="/patna/food/{{$cake->id}}" class="btn btn-outline-dark ">Add</a>
                    @else
                        <?php $applied=App\PatnaCart::where('user_id','=',Auth::user()->id)->where('item_id','=',$pastry->id)->first()?>
                        @if ($applied!=null)
                        <button disabled="disabled" class="btn btn-outline-info">Added</button>
                        @else
                        <a href="/patna/food/{{$pastry->id}}" class="btn btn-outline-dark ">Add</a>
                        @endif
                    @endguest
                </div></p><br>
            @endforeach
        </div>

      </div>



      <!-- About Container -->
  <div class="w3-container" id="about">
    <div class="w3-content" style="max-width:700px">
      <h5 class="w3-center w3-padding-64"><span class="w3-tag w3-wide">ABOUT THE CAFE</span></h5>
      <div class="w3-panel w3-leftbar w3-light-grey">
        <p><i>"Free Home Delivery (upto 2 km).</i></p>
        <p>"Contact no. +91-8676036607</p>
      </div>
      <p><strong>Opening hours:</strong> everyday from 6am to 9pm.</p>
      <p><strong>Address:</strong> Ashok Nagar,Near Raja Utsav Hall, Patna-20</p>
      <p><strong>Address:</strong> Chandmari Road,Pani Tanki,Near Hanuman Mandir Patna-20</p>

    </div>
  </div>


    </div>

    </div>
    <script>
      // Tabbed Menu
      function openMenu(evt, menuName) {
        var i, x, tablinks;
        x = document.getElementsByClassName("menu");
        for (i = 0; i < x.length; i++) {
          x[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        for (i = 0; i < x.length; i++) {
          tablinks[i].className = tablinks[i].className.replace(" w3-dark-grey", "");
        }
        document.getElementById(menuName).style.display = "block";
        evt.currentTarget.firstElementChild.className += " w3-dark-grey";
      }
      document.getElementById("myLink").click();
      </script>
  @endsection




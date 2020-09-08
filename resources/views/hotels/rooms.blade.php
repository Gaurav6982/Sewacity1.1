@extends('layouts.hotel')

@section('content')
    
    <section class="site-hero inner-page overlay"  style="background-color: #0cbaba;
background-image: linear-gradient(315deg, #0cbaba 0%, #380036 74%);" data-stellar-background-ratio="0.5">
      <div class="container">
          @include('inc.messages')
        <div class="row site-hero-inner justify-content-center align-items-center">
          <div class="col-md-10 text-center" data-aos="fade">
            <h1 class="heading mb-3">Rooms</h1>
            <ul class="custom-breadcrumbs mb-4">
              <li><a href="/shelters">Home</a></li>
              <li>&bullet;</li>
              <li>Rooms</li>
            </ul>
          </div>
        </div>
      </div>

      <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
          <span class="mouse-wheel"></span>
        </div>
      </a>
    </section>
    
    <section class="section">
      <div class="container">
        
        <div class="row">
            @foreach($rooms as $room)
          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" id="room_card">
            <form method="get" action="/shelters/rooms/{{$room->id}}/form" style="cursor:pointer" onclick="this.submit()">
                {{csrf_field()}}
                <!--<input type="hidden" value="{{$room->id}}" name="room_id">       -->
              <figure class="img-wrap">
                <img src="/storage/hotels/room_images/{{$room->room_image}}" alt="Room IMage" class="img-fluid mb-3">
              </figure>
              <div class="p-3 text-center room-info">
                <h2>{{$room->room_name}}</h2>
                <span class="text-uppercase letter-spacing-1"style="color:black;">₹ {{$room->room_price}} 
                    @if($room->room_gst!=null)
                    + {{$room->room_gst}}% GST
                    @endif
                    <br><small>PER NIGHT</small>
                </span><br>
                <?php 
                $facilities=[];
                $facilities=explode(",",$room->room_features);?>
                @if($room->room_features!=null)
                <h5>Facilities</h5>
                <ul style="width:50%;margin:auto;text-align:left">
                    @foreach($facilities as $facility)
                    <li>{{$facility}}</li>
                    @endforeach
                </ul>
                @endif
                <button type="submit" class="btn btn-primary">Select</button>
              </div>
            </form>
          </div>
        @endforeach
          

        </div>
      </div>
    </section>
    
    <section class="section bg-light">

      <div class="container">
        <div class="row justify-content-center text-center mb-5">
          <div class="col-md-7">
            <h2 class="heading" data-aos="fade">Great Offers</h2>
            <p data-aos="fade">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
          </div>
        </div>
      
        <div class="site-block-half d-block d-lg-flex bg-white" data-aos="fade" data-aos-delay="100">
          <a href="#" class="image d-block bg-image-2" style="background-image: url('/storage/hotels/corporate.webp');"></a>
          <div class="text">
            <span class="d-block mb-4"><span class="display-4 text-primary">10 % OFF</span> <span class="text-uppercase letter-spacing-2"></span> </span>
            <h2 class="mb-4">Corporate Plan</h2>
            <p>If you have some work related to your company and you have to stay there till you finish your work,we welcome you with our corporate plan . It is specially made for this purpose. 
              We provide a flat 10% discount on booking a room.
              Give us a chance to serve you the best we can.</p>
            <!--<p><a href="#" class="btn btn-primary text-white">Book Now</a></p>-->
          </div>
        </div><!-- OFFER NEW 
        <div class="site-block-half d-block d-lg-flex bg-white" data-aos="fade" data-aos-delay="200">
          <a href="#" class="image d-block bg-image-2 order-2" style="background-image: url('images/img_2.jpg');"></a>
          <div class="text order-1">
            <span class="d-block mb-4"><span class="display-4 text-primary">$299</span> <span class="text-uppercase letter-spacing-2">/ per night</span> </span>
            <h2 class="mb-4">Presidential Room</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
            <p><a href="#" class="btn btn-primary text-white">Book Now</a></p>
          </div>
        </div> -->

        

      </div>
    </section>
   <center> <h2 class="heading" data-aos="fade">Hotel Facilities</h2><br>

   
  
    <div class="card mb-3" style="max-width: 540px;">
      <div class="row no-gutters">
        <div class="col-md-4">
          <img src="/storage/hotels/LIFT.webp" class="card-img" alt="...">
        </div>
        <div class="col-md-8">
          <div class="card-body">
            <h5 class="card-title">Lift Facility </h5>
            <p class="card-text">We provide this facility to all of our customers in order to save their time and make themselves comfortable in reaching their respective rooms. All these lifts are well equipped with  cctv cameras and all security measures.</p>
          </div>
        </div>
      </div>
    </div>
   
  
  </center>
  <div class="container">
      <div class="card-group">
        <div class="card">
          <img src="/storage/hotels/DSC_1442.JPG" class="card-img-top" alt="..."style="height:375px;">
          <div class="card-body">
            <h5 class="card-title">RECEPTION</h5>
            <p class="card-text">Here We welcome guests, check guests in and out of the hotel, deal with guest queries, provide prompt and professional guest service to meet guest needs and ensure guest satisfaction.</p>
          </div>
        </div>
        <div class="card">
          <img src="/storage/hotels/rest.jpeg" class="card-img-top" alt="..."style="height:375px;">
          <div class="card-body">
            <h5 class="card-title">Enjoy meals during your stay</h5>
            <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
          </div>
        </div>
        <div class="card">
          <img src="/storage/hotels/DSC_1439.webp" class="card-img-top" alt="..."style="height:375px;">
        </div>
      </div>
      <div class="para">
      <h5 class="card-title">Hotels Policy</h5>
      <p class="card-text">1.It is mandatory for guests to present valid photo identification at the time of check-in. According to government regulations, a valid Photo ID has to be carried by every person above the age of 18 staying at the hotel. The identification proofs accepted are Aadhar Card, Driving License, Voter ID Card, and Passport. Without Original copy of valid ID the guest will not be allowed to check-in<br>
      2.Drinking is not allowed.<br>
    3.Valid ID for all adults is mandatory at the time of check in<br>
  4.Guests shall be liable for any damage, except normal wear and tear to Hotel asset. Guest shall keep the Hotel room in a good condition and maintain hygiene and cleanliness</p>
    </div>
  </div>
  

    
@endsection

<script type="text/javascript">
</script>
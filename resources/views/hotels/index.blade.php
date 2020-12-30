@extends('layouts.hotel')

@section('content')
    

    <section class="site-hero overlay" style="background-color: #0cbaba;
background-image: linear-gradient(315deg, #0cbaba 0%, #380036 74%);" data-stellar-background-ratio="0.5">
      <div class="container">
          @include('inc.messages')
        <div class="row site-hero-inner justify-content-center align-items-center">
          <div class="col-md-10 text-center" data-aos="fade-up">
            <span class="custom-caption text-uppercase text-white d-block  mb-3">Sewacity brings the ease of hotel bookings in Forbesganj city by presenting you the best accomodation with affordable prices. We help you go through the details and judge the lodging facilities by their latest pictures and make your trip to the city effortless. </span>
            <h1 class="heading">SEWACITY SHELTERS</h1>
          </div>
        </div>
      </div>

      <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
          <span class="mouse-wheel"></span>
        </div>
      </a>
    </section>
    <!-- END section -->
    

    <!--<section class="section bg-light pb-0"  >-->
    <!--  <div class="container">-->
       
    <!--    <div class="row check-availabilty" id="next">-->
    <!--      <div class="block-32" data-aos="fade-up" data-aos-offset="-200">-->

    <!--        <form action="#">-->
    <!--          <div class="row">-->
    <!--            <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">-->
    <!--              <label for="checkin_date" class="font-weight-bold text-black">Check In</label>-->
    <!--              <div class="field-icon-wrap">-->
    <!--                <div class="icon"><span class="icon-calendar"></span></div>-->
    <!--                <input type="text" id="checkin_date" class="form-control">-->
    <!--              </div>-->
    <!--            </div>-->
    <!--            <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">-->
    <!--              <label for="checkout_date" class="font-weight-bold text-black">Check Out</label>-->
    <!--              <div class="field-icon-wrap">-->
    <!--                <div class="icon"><span class="icon-calendar"></span></div>-->
    <!--                <input type="text" id="checkout_date" class="form-control">-->
    <!--              </div>-->
    <!--            </div>-->
    <!--            <div class="col-md-6 mb-3 mb-md-0 col-lg-3">-->
    <!--              <div class="row">-->
    <!--                <div class="col-md-6 mb-3 mb-md-0">-->
    <!--                  <label for="adults" class="font-weight-bold text-black">Adults</label>-->
    <!--                  <div class="field-icon-wrap">-->
    <!--                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>-->
    <!--                    <select name="" id="adults" class="form-control">-->
    <!--                      <option value="">1</option>-->
    <!--                      <option value="">2</option>-->
    <!--                      <option value="">3</option>-->
    <!--                      <option value="">4+</option>-->
    <!--                    </select>-->
    <!--                  </div>-->
    <!--                </div>-->
    <!--                <div class="col-md-6 mb-3 mb-md-0">-->
    <!--                  <label for="children" class="font-weight-bold text-black">Children</label>-->
    <!--                  <div class="field-icon-wrap">-->
    <!--                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>-->
    <!--                    <select name="" id="children" class="form-control">-->
    <!--                      <option value="">0</option>-->
    <!--                      <option value="">1</option>-->
    <!--                      <option value="">2</option>-->
    <!--                      <option value="">3+</option>-->
    <!--                    </select>-->
    <!--                  </div>-->
    <!--                </div>-->
    <!--              </div>-->
    <!--            </div>-->
    <!--            <div class="col-md-6 col-lg-3 align-self-end">-->
    <!--              <button class="btn btn-primary btn-block text-white">Check Availabilty</button>-->
    <!--            </div>-->
    <!--          </div>-->
    <!--        </form>-->
    <!--      </div>-->


    <!--    </div>-->
    <!--  </div>-->
    <!--</section>-->
    
    @foreach($hotel_details as $hotel)
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row align-items-center">
              <div class="col-md-12 col-lg-7 ml-auto order-lg-2 position-relative mb-5" data-aos="fade-up">
                <figure class="img-absolute">
                  <img src="/storage/hotels/hotel_images/{{$hotel->hotel_image}}" alt="Image" class="img-fluid">
                </figure>
                <img src="/storage/hotels/hotel_images/{{$hotel->hotel_reception_image}}" alt="Image" class="img-fluid rounded">
              </div>
              <div class="col-md-12 col-lg-4 order-lg-1" data-aos="fade-up">
                <h2 class="heading">{{$hotel->hotel_name}}</h2>
                <p class="mb-4">{{$hotel->hotel_description}}</p>
                <p><a href="shelters/rooms/{{$hotel->id}}" class="btn btn-primary text-white py-2 mr-3">Book Now</a> </p>
              </div>
              
            </div>
          </div>
        </section>
    @endforeach
    



    <section class="section testimonial-section" style="padding:0">
      <div class="container">
        <div class="row justify-content-center text-center mb-5">
          <div class="col-md-7">
            <h2 class="heading" data-aos="fade-up">People Say</h2>
          </div>
        </div>
        <div class="row">
          <div class="js-carousel-2 owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
            
            <div class="testimonial text-center slider-item">
              <div class="author-image mb-3">
                <img src="/storage/hotels/image.png" alt="Image placeholder" class="rounded-circle mx-auto">
              </div>
              <blockquote>

                <p>&ldquo;The information on Sewacity regarding hotel like the prices and pictures are very accurate and real. They are doing good service.&rdquo;</p>
              </blockquote>
              <p><em>&mdash; Nihal Verma</em></p>
            </div> 

            <div class="testimonial text-center slider-item">
              <div class="author-image mb-3">
                <img src="/storage/hotels/image.png" alt="Image placeholder" class="rounded-circle mx-auto">
              </div>
              <blockquote>
                <p>&ldquo;My trip to Forbesganj was made too easy thanks to Sewacity. They helped me so efficiently in hotel reservation and lodging.&rdquo;</p>
              </blockquote>
              <p><em>&mdash; Raj Gupta</em></p>
            </div>

            <div class="testimonial text-center slider-item">
              <div class="author-image mb-3">
                <img src="/storage/hotels/image.png" alt="Image placeholder" class="rounded-circle mx-auto">
              </div>
              <blockquote>

                <p>&ldquo;The hotel facilities are exactly like depicted on the Sewacity app. Thank you!.&rdquo;</p>
              </blockquote>
              <p><em>&mdash; Prateek gupta</em></p>
            </div>


            <div class="testimonial text-center slider-item">
              <div class="author-image mb-3">
                <img src="/storage/hotels/image.png" alt="Image placeholder" class="rounded-circle mx-auto">
              </div>
              <blockquote>

                <p>&ldquo;The hotel stay was very pleasant and comfortable. The staff was very polite and helpful, the location was very convenient for getting around and many activities.&rdquo;</p>
              </blockquote>
              <p><em>&mdash; Manoj Choudhary</em></p>
            </div> 

            <div class="testimonial text-center slider-item">
              <div class="author-image mb-3">
                <img src="/storage/hotels/image.png" alt="Image placeholder" class="rounded-circle mx-auto">
              </div>
              <blockquote>
                <p>&ldquo;It was a good stay! The food was excellent and the staff superb! There was a staff member who was particularly helpful, accommodating and shared his knowledge .&rdquo;</p>
              </blockquote>
              <p><em>&mdash; Sambhu Paswan</em></p>
            </div>

            <div class="testimonial text-center slider-item">
              <div class="author-image mb-3">
                <img src="/storage/hotels/image.png" alt="Image placeholder" class="rounded-circle mx-auto">
              </div>
              <blockquote>

                <p>&ldquo;Nice,thanks.&rdquo;</p>
              </blockquote>
              <p><em>&mdash; Sankar Dev</em></p>
            </div>

          </div>
            <!-- END slider -->
        </div>

      </div>
@endsection
@extends('layouts.hotel')

@section('content')
    
    <section class="site-hero inner-page overlay"  style="background-color: #0cbaba;
background-image: linear-gradient(315deg, #0cbaba 0%, #380036 74%);" data-stellar-background-ratio="0.5">
      <div class="container">
          @include('inc.messages')
        <div class="row site-hero-inner justify-content-center align-items-center">
          <div class="col-md-10 text-center" data-aos="fade">
            <h1 class="heading mb-3">Reservation Form</h1>
            <ul class="custom-breadcrumbs mb-4">
              <li><a href="/shelters">Home</a></li>
              <li>&bullet;</li>
              <li>Reservation</li>
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
    <!-- END section -->

    <section class="section contact-section" id="next">
      <div class="container">
        <div class="row">
          <div class="col-md-7" data-aos="fade-up" data-aos-delay="100">
            
            <form action="/shelters/rooms/{{$room_id}}/submit" method="post" class="bg-white p-md-5 p-4 mb-5 border">
                {{csrf_field()}}
                <!--<input type="hidden" name='room_id' value="{{$room_id}}">-->
              <div class="row">
                <div class="col-md-6 form-group">
                  <label class="text-black font-weight-bold" for="name">Name</label>
                  <input type="text" name="name" class="form-control " required>
                </div>
                <div class="col-md-6 form-group">
                  <label class="text-black font-weight-bold" for="phone">Phone</label>
                  <input type="text" name="phone" class="form-control " onkeypress="return /[0-9]/i.test(event.key)" required>
                </div>
              </div>
          
              <div class="row">
                <div class="col-md-12 form-group">
                  <label class="text-black font-weight-bold" for="email">Email</label>
                  <input type="email" name="email" class="form-control " required>
                </div>
              </div>

              <div class="row">
                <div class="col-md-6 form-group">
                  <label class="text-black font-weight-bold" for="checkin_date" >Date Check In</label>
                  <input type="text" id="checkin_date" name="checkin_date"class="form-control"placeholder="e.g July 21,2020" required>
                </div>
                <div class="col-md-6 form-group">
                  <label class="text-black font-weight-bold" for="checkout_date" >Date Check Out</label>
                  <input type="text" id="checkout_date" name="checkout_date" class="form-control"placeholder="e.g July 21,2020" required>
                </div>
              </div>

              <div class="row">
                <div class="col-md-6 form-group">
                  <label for="adults" class="font-weight-bold text-black">Adults</label>
                  <div class="field-icon-wrap">
                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                    <select name="num_adults" id="adults" class="form-control">
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4+">4+</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-6 form-group">
                  <label for="children" class="font-weight-bold text-black">Children</label>
                  <div class="field-icon-wrap">
                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                    <select name="num_children" id="children" class="form-control">
                      <option value="0">0</option>
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4+">4+</option>
                    </select>
                  </div>
                </div>
              </div>
                
                <div class="row mb-4">
                <div class="col-md-12 form-group">
                  <label class="text-black font-weight-bold" for="corporate">Eligible For Corporate Plans?</label>
                  <select name="corporate" class="form-control">
                      <option value=0>No</option>
                      <option value=1>Yes</option>
                  </select>
                </div>
              </div>
              

              <div class="row mb-4">
                <div class="col-md-12 form-group">
                  <label class="text-black font-weight-bold" for="message">Notes</label>
                  <textarea name="message" id="message" class="form-control " cols="30" rows="8" required></textarea>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="submit" value="Reserve Now" class="btn btn-primary text-white py-3 px-5 font-weight-bold">
                </div>
              </div>
            </form>

          </div>
          <div class="col-md-5" data-aos="fade-up" data-aos-delay="200">
            <div class="row">
              <div class="col-md-10 ml-auto contact-info">
                <p><span class="d-block">Address:</span> <span class="text-black"> Forbesganj 854318</span></p>
                <p><span class="d-block">Phone:</span> <span class="text-black"> +91 8676036607</span></p>
                <p><span class="d-block">Email:</span> <span class="text-black"> mayank.gupta@sewacity.com</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
@endsection
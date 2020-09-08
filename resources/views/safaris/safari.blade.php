@extends('layouts.app')
<style>
	body{font-family: 'Poppins', sans-serif;}
.sta{
  font-size: larger;
}
.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 7px 3px;
}

.mi{ font-size: 25px;
  font-weight: bold;
}
#toto{
	height: 500px;
}
.equal{
	width: 80px;
}
@media only screen and (max-width: 600px) {
  .col{font-size: 15px;}
  .saf{max-width: 100%;height: auto;}
  .equal{
  	width: 60px
  }
  #toto{
      height:300px;
  }
}

  </style>
@section('content')
	
	<h1 class="col">Sewacity Presents</h1>
    <div class="container"><center>
        <img src="/storage/safari/logo.png"class="saf" alt="#" /></a>
    	</center> <br>
		<div class="header">
		  Mini Ride
		</div>

     	<center><div class="badge badge-primary text-wrap sta" style="width: 15rem;">
      		Starting at just Rs.60
		</div></center>
    <div>
        <center><img src="/storage/safari/toto.jpg" alt="Toto" class="img-thumbnail" id="toto"></center>
    </div>
    <p class="h3">Book Your Ride </p>
    <form action="/safari/book" method="post">
    	{{csrf_field()}}
	    <div class="input-group mb-3">
	      <div class="input-group-prepend">
	        <span class="input-group-text equal" id="inputGroup-sizing-default">From</span>
	      </div>
	      <input type="text" name="from"class="form-control"placeholder="Enter Pickup Location" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
	    </div>
	    <div class="input-group mb-3">
	      <div class="input-group-prepend">
	        <span class="input-group-text equal" id="inputGroup-sizing-default">To</span>
	      </div>
	      <input type="text" name="to"class="form-control"placeholder="Enter Drop Location or address" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
	    </div>
	    <div class="input-group mb-3">
	      <div class="input-group-prepend">
	        <span class="input-group-text" id="inputGroup-sizing-default">Phone number:</span>
	      </div>
	      <input type="text" name="Phone"class="form-control"placeholder="Drop your number so that driver can contact you" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
	    </div>
	    
	    <label for="meeting-time">Enter a time & date :</label>
	    <?php date_default_timezone_set('Asia/Kolkata');?>
		<input type="datetime-local" name="date"id="meeting-time"
	       name="meeting-time" value="<?php echo (date('y')+2000).'-'.date('m').'-'.date('d').'T'.date('H:i');?>" >
	       <br>
	       <br>
	    <center><button type="submit" class="btn btn-primary btn-lg">Book</button></center>
    </form>
    </div>
    



      </div>
@endsection
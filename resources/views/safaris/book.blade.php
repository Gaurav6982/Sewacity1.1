@extends('layouts.app')
<style type="text/css">
	.booking .inner span{
		color: green;
	}
	.booking .inner{
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		border:2px solid green;
		padding: 35px;

	}
	.booking{
		position: relative;
		height: 75vh;

	}
	@media only screen and (max-width: 500px)
	{
		.booking .inner{
			width: 100%;
		}
	}
</style>
@section('content')
    <div class="container">
        <p style="color: red;text-align:center">Don't Forget to Take A ScreenShot</p>
        <p style="color:white;text-align:center">Our Team Will Contact You Soon</p>  
    </div>
    <section class="booking">
    	<div class="inner">
    		<p><span>Name :</span>{{$details['name']}}</p>
    		<p><span>Booking Id :</span> {{$details['bookid']}}</p>
    		<p><span>Date & Time :</span> {{$details['time']}}</p>
    		<p><span>Source Location :</span> {{$details['from']}}</p>
    		<p><span>Destination Location :</span> {{$details['to']}}</p>
    		<p><span>Phone Number :</span> {{$details['phone']}}</p>
    	</div>
    	<center><a href="/" class="btn btn-success">Return Home</a></center>
    </section>
@endsection
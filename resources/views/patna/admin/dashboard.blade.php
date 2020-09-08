@extends('patna.layouts.app')

<style>

    ul li{

        margin:5px 0;

    }

</style>

@section('content')

    <div class="container">

    	<div class="card">

    		<div class="card-header"><center>Welcome Admin</center></div>

    		<br>



    		<ul>

    			<li><a href="/posts?category=0&searchbox=&page=1" class="btn btn-primary">Go to E-Commerce Panel</a></li>

    			<li><a href="#"data-container="body" data-toggle="popover" data-placement="top" data-content="Coming Soon!!" class="btn btn-primary">Send a Email</a></li>

    			{{-- <li><a href="#" class="btn btn-primary">Go to Hotel Panel!</a></li> --}}

    		</ul>

    	</div>







    </div>

@endsection

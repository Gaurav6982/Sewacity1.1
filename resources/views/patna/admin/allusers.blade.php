@extends('patna.layouts.app')

@section('content')
	<div class="container">
		<div class="card">
			<div class="card-header">
				<center><h3>All User Details.</h3></center>
			</div>
			<div class="card-body table-responsive">
				<table class="table table-hover table-sm" style="width: 100%;margin: auto;">
					<thead class="thead-dark">
					<tr class="text-center">
						<th>Name</th>
						<!--<th>Contact</th>-->
						<!--<th>Email</th>-->
						<th>Number of Requests Placed.</th>
						<th>Cart Items</th>
					</tr>
					</thead>
					<tbody>
					@foreach($users as $user)
						<tr class="text-center">
							<td>{{$user->name}}</td>
							<!--<td>{{$user->phone}}</td>-->
							<!--<td>{{$user->email}}</td>-->
							<td>{{$user->no_of_requests}}</td>
							<?php $cart=$user->cartitems()->get();?>
							@if(count($cart)>0)
							<td>
								<ul>
								@foreach($cart as $car)
									<li>{{$car->pname}} - {{$car->quantity}}</li>
								@endforeach
								</ul>
							</td>
							@else
							<td>No items in Cart.</td>
							@endif
						</tr>
					@endforeach
					</tbody>
				</table>
			</div>
			{{$users->links()}}
		</div>

	</div>

@endsection

@extends('layouts.app')
@section('styles')

@endsection
@section('content')
	<div class="container">
		<div class="card">
			{{-- <center style="color:red"><em>Don't Forget to press <i class="fa fa-check" aria-hidden="true"></i> after increasing or decreasing the quantity, just to update the quantity.</em></center> --}}
			<div class="card-header">
				<center>Choose Your Products</center>
			</div>
			<!-- <div class="row"> -->
				<!-- <div class="col-md-12">			 -->
				<div clas="table-responsive">
                @if(count($products)>0)
                <form action="/products/send" method="post">
                    {{ csrf_field() }}
				<table class="table table-striped">
					<tr>
						<th>Product Name</th>
						<th>Product Price</th>
						<th>Product Quantity</th>
						<th>Remove</th>
					</tr>
                         @foreach($products as $product)
                            <input type="hidden" value="{{$product->pname}}" name="pnames[]">
                            {{-- <input type="hidden" value="{{round($product->price*(1-(float)$product->discount/100))}}" name="ActualPrices[]"> --}}
                            <input type="hidden" value="{{round($product->price)}}" name="prices[]">
                            <input type="hidden" value="{{$product->discount}}" name="discount[]">
					 		<tr>
					 			<td>{{$product->pname}}</td>
				 			<td>Rs. {{round($product->price*(1-(float)$product->discount/100))}}</td>
					 			<td>

					 				<div class="form-group row">
					 					<div class="col-md-8 col-sm-10">

					 					    {{-- @if($product->category!='Grocery') --}}
										        <input type="number" name="quantity[]" max="30" min="1"value="{{$product->quantity}}" class="form-control" required>
										    {{-- @else --}}
										        {{-- <input type="number" name="quantity[]" step="0.5" max="10" min="1"value="{{$product->quantity}}" class="form-control"> --}}
										    {{-- @endif --}}
										</div>
									</div>

								</td>
					 			<td>
					 					<a href="/products/cart/delete/{{$product->id}}" class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></a>
					 			</td>
					 		</tr>
                         @endforeach
                </table>
                <p class="text-center"><em>Contact Number Through which we can Confirm your Order.</em></p>
            <input type="text" name="contact" placeholder="Enter Here" class="form-control" style="width:30%;margin:auto" onkeypress="return onlyNumberKey(event)"><br>
                <center><input type="submit" class="btn btn-success" id="submit" value="Place a Request."></center><br>
            </form>
                </div>

				@else
                    <p class="m-auto">No Items Added Yet.</p>
                    <center><a href="/products?category=0&searchbox=&sort=latest&page=1" class="btn btn-primary">Go to E-commerce</a></center>    
			<br>
				@endif
				<!-- </div> -->
			<!-- </div> -->

		</div>
	</div>
@endsection
<script>
    function onlyNumberKey(evt) {

// Only ASCII charactar in that range allowed
var ASCIICode = (evt.which) ? evt.which : evt.keyCode
if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57))
    return false;
return true;
}
</script>


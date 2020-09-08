@extends('patna.layouts.app')
@section('styles')

@endsection
@section('content')
	<div class="container">
		<div class="card mt-4">
			<center style="color:red"><em>Base Delivery Charges: 20/- Within 5 Kms (Delivery Charges May Vary According to Distance.)</em></center>
			<div class="card-header">
				<center>Choose Your Products</center>
			</div>
			<!-- <div class="row"> -->
				<!-- <div class="col-md-12">			 -->
                    <div clas="table-responsive">
                        @if(count($items)>0)
                    <table class="table table-striped">
                        <tr>
                            <th>Product Name</th>
                            <th>Product Price/Piece</th>
                            <th>Product Quantity</th>
                            <th>Remove</th>
                        </tr>
                        <form action="/patna/send" method="post">
                            {{ csrf_field() }}
                        @foreach ($items as $item)
                            <tr>
                                <?php $p=App\PatnaFood::where('id','=',$item->item_id)->first()?>
                                <input type="hidden" name="food_names[]" value="{{$p->food_name}}">
                                <input type="hidden" name="food_prices[]" value="{{$p->food_price}}">
                                <td>{{$p->food_name}}</td>
                                <td>{{$p->food_price}}</td>
                                <td><input type="number" value="{{$item->item_quantity}}" name="quans[]" class="form-control" placeholder="Enter Quantity" min="1" max="10" ></td>
                                <td><a href="/patna/food/remove/{{$item->id}}" class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
                            </tr>
                        @endforeach
                        {{-- <input type="submit" value="Place Request"> --}}

                    </table>
                    </div>
				@else
					<p class="m-auto">No Items Added Yet.</p>
				@endif
				<!-- </div> -->
			<!-- </div> -->
			@if(count($items)>0)
            <p class="text-center"><em>Contact Number Through which we can Confirm your Order.</em></p>
            <input type="text" name="contact" placeholder="Enter Here" class="form-control" style="width:30%;margin:auto" onkeypress="return onlyNumberKey(event)"><br>
			<center><input type="submit" class="btn btn-success" value="Place a Request"></center>
			<br>
			@else
			<center><a href="/patna/food" class="btn btn-primary">Go to Food Menu</a></center>
			<br>
            @endif
        </form>
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

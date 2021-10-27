<!DOCTYPE html>
<html>
<head>
	<title>SewaCity</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<style>
		#loading{
                position: fixed;
                width: 100%;
                height: 100vh;
                z-index: 999999;
                justify-content: center;
                align-items: center;
                display: flex;
                background-color: #E26A2C;
                background-color: rgb(15 6 20 / 90%);
            }
	</style>
</head>
	
<body onload="myFunction()">
	<div id="loading" >
        <img src="{{'assets/pred.gif'}}" alt="preloader">
      </div>
	<div class="container" style="
			border: 1px solid grey;
			border-radius: 20px;
			position: relative;
			background: url(http://dsc.test/storage/images/logo.png);
			background-repeat: no-repeat;
			background-position: center;
			background-size: contain;
			background-color: white;
			z-index: -2;">
		<div class="card">
			<div style="
				text-align:center
			">
			
			<img src="https://i.ibb.co/x6ZwVX0/logo.png" alt="logo" border="0" class="img" style="position: absolute;
			width: 50%;
			height: 50%;
			left: 50%;
			top: 50%;
			transform: translate(-50%,-50%);
			z-index: -1;
			opacity: 50%;
			">
			</div>
			<div class="card-header" style="background-color: #E6E6E6;
			color: black;
			font-weight: 500;
			/*padding: 0.1px;*/
			border-radius: 20px;
			border: 1px solid grey;
			border-bottom: 2px solid black;
			z-index: 2">
				<center>
				<h1>Request Recieved Successfully.</h1>
				</center>
			</div>
			<div class="card-body" style="border: 2px solid #F2F2F2;
			border-radius: 5px;
			margin: auto;
			/*margin-left:35%;*/
			/*margin-right: 25%;*/
			padding:2px;
			color: black;
			border: 2px solid #F2F2F2;
			z-index: 2">
						<p>Hello, This is {{$data['name']}}</p>
				<p>Registered Contact Number: {{$data['phone']}}</p>
                <p>Registered Email: {{$data['email']}}</p>
				<p>Delivery Address: {{$data['address']}}</p>
                <p>City: {{$data['city']}} </p>
				<p>Restaurant: {{$data['res_name']}} </p>
				<p>Payment Status: @if($data['paid']==true) Paid @else Not Done @endif</p>
				<p>I want:</p>

				<div style="margin:0;padding:0;text-align:center;">
                	<table style="width:100%;">
                		<thead >
                		<tr style="color: black">
                			<th style="border:2px solid black">No.</th>
                			<th style="border:2px solid black">Name:</th>
                			<th style="border:2px solid black">Price:</th>
                			<th style="border:2px solid black">Qty:</th>
                			<th style="border:2px solid black">Total:</th>
                		</tr>
                		</thead>
                		<tbody style="color: black">
                		    <?php $num=0;$sub=0;$tot=0;?>
                		    @foreach($data['items'] as $item)
                		        <tr style="color: black">
                        			<td style="border:2px solid black"><?php echo ++$num;?></td>
                        			<td style="border:2px solid black">{{$item->name}}</td>
                        			<?php $sub+=$item->price*$item->quantity?>
                        			<td style="border:2px solid black">Rs. {{$item->price}}</td>
                        			<td style="border:2px solid black">{{$item->quantity}}</td>
                        			<?php $tot+=round($item->price)*$item->quantity?>
                        			<td style="border:2px solid black">Rs.{{round($item->price)*$item->quantity}}</td>
                        		</tr>
							@endforeach
							<tr style="color: black">
                    			<td></td>
								<td  style="border:2px solid black" colspan="3">Sub-Total</td>
                    			<td style="border:2px solid black">Rs. {{$tot}}</td>
                    		</tr>
							<tr style="color: black">
                    			<td></td>
								<td  style="border:2px solid black" colspan="3">Delivery Charge</td>
								<?php $del=0;if($tot>=100)$del=15;else $del=20;?>
                    			<td style="border:2px solid black">R  s. {{$del}}</td>
                    		</tr>
                    		<tr style="color: black">
                    			<td></td>
                    			<td  style="border:2px solid black" colspan="3">Total</td>
                    			<td style="border:2px solid black">Rs. {{$tot+$del}}</td>
                    		</tr>
                		</tbody>
                	</table>
            	</div>

				Dear {{$data['name']}},<br>
				We have received your order and will begin processing it soon.<br>
				Thank you for giving a chance to Indian brand focused Startup Sewacity.
			</div>
		</div>

	</div>
	<footer>
		<center>@SewaCity 2021</center>
	</footer>
</body>
<script>
    var preloader = document.getElementById('loading');
    function myFunction (){
     preloader.style.display = 'none';
    }
 </script> 
</html>

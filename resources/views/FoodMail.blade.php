<!DOCTYPE html>
<html>
<head>
	<title>Sewa city</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
	<style type="text/css">
		.container{
			border: 1px solid grey;
			border-radius: 20px;
			position: relative;
		}
		.card{
			/*position: relative;*/
		}
		.card-header{
			background-color: #E6E6E6;
			color: black;
			font-weight: 500;
			/*padding: 0.1px;*/
			border-radius: 20px;
			border: 1px solid grey;
			border-bottom: 2px solid black;
		}
		.card-body{
			/*margin-left: 40%;*/
			border: 2px solid #F2F2F2;
			border-radius: 5px;
			margin-left:35%;
			margin-right: 25%;
			padding: 20px;
		}
		th,tr,td{
		    border:2px solid white !important;
		}
		@media only screen and (max-width:450px)
		{
		    tr{
		        font-size:10px;
		    }
		}
	</style>
<body>
	<div class="container" style="
			border: 1px solid grey;
			border-radius: 20px;
			position: relative;
			background: url(http://dsc.test/storage/images/logo.png);
			background-repeat: no-repeat;
			background-position: center;
			background-size: contain;
			background-color: #424242;
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
			color: white;
			border: 2px solid #F2F2F2;
			z-index: 2">
						<p>Hello, This is {{$data['name']}}</p>
				<p>Registered Contact Number: {{$data['phone']}}</p>
                <p>Registered Email: {{$data['email']}}</p>
                <p>City: {{$data['city']}} </p>
				<p>Restaurant: {{$data['res_name']}} </p>
				<p>Payment Status: @if($data['paid']==true) Paid @else Not Done @endif</p>
				<p>I want:</p>

				<div style="margin:0;padding:0;text-align:center;">
                	<table style="width:100%;">
                		<thead >
                		<tr style="color: white">
                			<th style="border:2px solid white">No.</th>
                			<th style="border:2px solid white">Name:</th>
                			<th style="border:2px solid white">Price:</th>
                			<th style="border:2px solid white">Qty:</th>
                			<th style="border:2px solid white">Total:</th>
                		</tr>
                		</thead>
                		<tbody style="color: white">
                		    <?php $num=0;$sub=0;$tot=0;?>
                		    @foreach($data['items'] as $item)
                		        <tr style="color: white">
                        			<td style="border:2px solid white"><?php echo ++$num;?></td>
                        			<td style="border:2px solid white">{{$item->name}}</td>
                        			<?php $sub+=$item->price*$item->quantity?>
                        			<td style="border:2px solid white">Rs. {{$item->price}}</td>
                        			<td style="border:2px solid white">{{$item->quantity}}</td>
                        			<?php $tot+=round($item->price)*$item->quantity?>
                        			<td style="border:2px solid white">Rs.{{round($item->price)*$item->quantity}}</td>
                        		</tr>
							@endforeach
							<tr style="color: white">
                    			<td></td>
								<td  style="border:2px solid white" colspan="3">Sub-Total</td>
                    			<td style="border:2px solid white">Rs. {{$tot}}</td>
                    		</tr>
							<tr style="color: white">
                    			<td></td>
								<td  style="border:2px solid white" colspan="3">Delivery Charge</td>
								<?php $del=0;if($tot>=200)$del=5;else if($tot<200 && $tot>=100)$del=10;else $del=20;?>
                    			<td style="border:2px solid white">Rs. {{$del}}</td>
                    		</tr>
                    		<tr style="color: white">
                    			<td></td>
                    			<td  style="border:2px solid white" colspan="3">Total</td>
                    			<td style="border:2px solid white">Rs. {{$tot+$del}}</td>
                    		</tr>
                		</tbody>
                	</table>
            	</div>

            	<div class="container">
        	        <p style="color:white;">Dear Customer,

Our Country Bharat, is going through challenging times. Due to the current circumstances in Covid-19, product availability may take some time. We will get back to you within the next 12 hours. Thank You for giving a chance to Indian Brands Focused startup -Sewacity.</p>
        	        <p style="color:#00ff00;">हमारा देश, भारत,आज एक चुनौतीपूर्ण दौर से गुजर रहा है | कोविद -19 में वर्तमान परिस्थितियों के कारण, प्रोडक्ट्स की उपलब्धता में थोड़ा समय लग सकता है | अतः आर्डर की पुष्टि आपको अगले 12 घंटो में दे दी जायेगी  | भारतीय ब्रांड्स पर केंद्रित स्टार्टअप - सेवासिटी  , का साथ देने के लिए सदा आपके आभारी रहेंगे |</p>
        	    </div>

				Thank You for Using Our Website.!
			</div>
		</div>

	</div>
	<footer>
		<center>@SewaCity 2020</center>
	</footer>
</body>
</html>

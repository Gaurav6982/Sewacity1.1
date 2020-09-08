<!DOCTYPE html>
<html>
<head>
	<title>SEWACITY</title>
	<meta name="google-site-verification" content="qf7YT88kyzp5VVimsMWRfSyshmyNcjjk2DUvOSlSiQc" />
    <title>Home Page</title>
    <!-- Responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Custom Css -->
    <link rel="stylesheet" type="text/css" href="/css/styles.css"><!-- Bootstrap --><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- font Awesome -->
    <script src="https://kit.fontawesome.com/988756cd88.js" crossorigin="anonymous"></script>
    <!-- slick -->
    <link rel="stylesheet" type="text/css" href="css/swiper.min.css">
    <!-- <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/> -->
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <!-- owl carousel -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous" />
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-166801585-1"></script>
		<!-- fonts -->
		<link href="https://fonts.googleapis.com/css2?family=Grenze+Gotisch:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
	body{
		background-image: linear-gradient(315deg, #21d190 0%, #d65bca 74%) !important;
    background-color: #21d190; font-weight:600;
	}
	.container{
		position: relative;
		/*border: 2px solid black;*/

		height: 100vh;
	}
	.container .choose{
		/*border: 2px solid black;
		border-style: dotted;*/
		height: 80vh;
		width: 100%;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
	}
	.options{
		position: relative;
		height: 100%;
		width: 100%;
	}
	.options .buttons{
		width: 50%;
		position: absolute;
		top: 50%;
		left: 50%;
		transform:translate(-50%,-50%);
	}
	.options .buttons a{
		height: 60px;
		position: relative;
		overflow: hidden;
		font-weight: 600;
		line-height: 45px;
		letter-spacing: 5px;
	}
	.options .buttons a:nth-child(1):before{
		content: '';
		position: absolute;
		width: 10px;
		height: 100%;
		background-color: white;
		top: 0;
		left: 0;
		z-index: 11;
		transition: 0.5s ease;
	}
	.options .buttons a:nth-child(1):hover::before{
		background-color: rgba(255,255,255,0.1);
		width: 100%
	}
	.options .buttons a:nth-child(2):before{
		content: '';
		color: black;
		align-content: center;
		transform: rotateZ(45deg);
		position: absolute;
		width: 100%;
		height: 100%;
		background-color: rgba(255,255,255,0.4);
		top: 0;
		left: 0%;
		z-index: 11;
		transition:1s ease;
	}
	.options .buttons a:nth-child(2):hover::before{
		left: -54%;
		transform: rotateZ(180deg);
	}
	.options h1{
		font-family: 'Grenze Gotisch', cursive;
		padding: 40px;
	}
</style>
<body>
	<div class="container">
		<div class="choose">
			<div class="options">
				<h1 class="text-center">CHOOSE YOUR CITY</h1>
				<div class="buttons">
					<a href="/fbg"class="btn btn-block btn-primary">FORBESGANJ</a>
					<a class="btn btn-block btn-secondary"  title="Header" data-toggle="popover" data-placement="bottom" data-content="Cross Your Fingers! We are Coming Soon">PATNA</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script>
$(document).ready(function(){
  $('[data-toggle="popover"]').popover();
});
</script>
<!DOCTYPE html>
<html>
<title>Sewacity Blog</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">

<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
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
<body class="w3-light-grey" onload="myFunction()">
  <div id="loading" >
    <img src="{{'assets/pred.gif'}}" alt="preloader">
  </div>
<!-- w3-content defines a container for fixed size centered content, 
and is wrapped around the whole page content, except for the footer in this example -->
<div class="w3-content" style="max-width:1400px">

<!-- Header -->
<header class="w3-container w3-center w3-padding-32"> 
  <h1><b>OUR BLOG</b></h1>
  <p>Welcome to the blog of <span class="w3-tag">Sewacity</span></p>
</header>

<!-- Grid -->
<div class="w3-row">

<!-- Blog entries -->
<div class="w3-col l8 s12">
  <!-- Blog entry -->
  <div class="w3-card-4 w3-margin w3-white">
    <div class="w3-container">
      <h3><b>Small cities are a land of opportunities -Sewacity </b></h3>
      <h5>By Amulya Verma, <span class="w3-opacity">Aug 15 , 2020</span></h5>
    </div>

    <div class="w3-container">
      <p>Forbesganj is my home. I have lived the most part of my life in Forbesganj until after completing
        my high school when I moved to larger cities like Kolkata and New Delhi for further studies, but
        in my heart I always felt connected to Forbesganj and ........................</p>
      <div class="w3-row">
        <div class="w3-col m8 s12">
          <p> <a href="{{asset('extra/Smallcities.html')}}"  class="w3-button w3-padding-large w3-white w3-border"><b>READ MORE »</b></a></p>
        </div>
        <div class="w3-col m4 w3-hide-small">
          <p><span class="w3-padding-large w3-right"><b>Comments  </b> <span class="w3-tag">0</span></span></p>
        </div>
      </div>
    </div>
  </div>
  <hr>

  <!-- Blog entry -->
 <!-- <div class="w3-card-4 w3-margin w3-white">
  <img src="/w3images/bridge.jpg" alt="Norway" style="width:100%">
    <div class="w3-container">
      <h3><b>BLOG ENTRY</b></h3>
      <h5>Title description, <span class="w3-opacity">April 2, 2014</span></h5>
    </div>

    <div class="w3-container">
      <p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed
        tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
      <div class="w3-row">
        <div class="w3-col m8 s12">
          <p><button class="w3-button w3-padding-large w3-white w3-border"><b>READ MORE »</b></button></p>
        </div>
        <div class="w3-col m4 w3-hide-small">
          <p><span class="w3-padding-large w3-right"><b>Comments  </b> <span class="w3-badge">2</span></span></p>
        </div>
      </div>
    </div>
  </div> -->
<!-- END BLOG ENTRIES -->
</div>

<!-- Introduction menu -->
<div class="w3-col l4">
  <!-- About Card -->
  <div class="w3-card w3-margin w3-margin-top">
  <img src="{{asset('/storage/blog/amulya22.jpeg')}}" style="width:100%">
    <div class="w3-container w3-white">
      <h4><b>Amulya Verma</b></h4>
      <p>My name is Amulya Verma. I'm an under grad arts student in Delhi University. I like to read. Recently I've been thinking of writing something of my own, so here is my personal blog. I hope it suits your liking.</p>
    </div>
  </div><hr>
  

  <hr> 
<!-- END Introduction Menu -->
</div>

<!-- END GRID -->
</div><br>

<!-- END w3-content -->
</div>

<!-- Footer -->
<footer class="w3-container w3-dark-grey w3-padding-32 w3-margin-top">
    <hr style="background-color: white">
    <b> &copy; 2020 Sewacity.com &nbsp;, All rights reserved | <a href='/privacy'>Privacy Policy</a> | <a href="/terms-and-conditions">Terms and Conditions</a> </b> </div>
</footer>

</body>
<script>
  var preloader = document.getElementById('loading');
  function myFunction (){
   preloader.style.display = 'none';
  }
</script>
</html>

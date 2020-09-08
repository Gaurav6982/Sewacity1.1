@extends('layouts.app')
  <style>
    * {
  box-sizing: border-box;
  
  
}
ul li{
    color:white;
}
.columns {
  float: left;
  width: 33.3%;
  padding: 8px;
  border: 1px solid black;
  background-color: #21d190;
    background-image: linear-gradient(315deg, #21d190 0%, #d65bca 74%);
  
}
.card{
    height:300px;
}

.price {
  list-style-type: none;
  border: 1px solid #eee;
  margin: 0;
  padding: 0;
  -webkit-transition: 0.3s;
  transition: 0.3s;
}

.price:hover {
  box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2)
}

.price .header {
  background-color: #111;
  color: white;
  font-size: 25px;
}

.price li {
  border-bottom: 1px solid #eee;
  padding: 20px;
  text-align: center;
}

.price .grey {
  background-color: #eee;
  font-size: 20px;
}

.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 10px 25px;
  text-align: center;
  text-decoration: none;
  font-size: 18px;
}
.ig{
      width: 100%;
      height: 150px;
      border: 1px solid black;
      padding: 15px 15px;
      background-color: lightblue;
    }

.pizzac{
font-family: "Sriracha";
font-size: 30px;
text-align: center;
}
@media only screen and (max-width: 600px) {
  .columns {
    width: 100%;
  }
  .ig{
      height:200px;
      padding:0;
  }
}
    


  </style>
    @section('content')
    <main style=" background:background-color: #21d190 !important;
    background-image: linear-gradient(315deg, #21d190 0%, #d65bca 74%) !important;">
    <div class="backgr">
    <div class="p-3 mb-2 bg-info text-white pizzac">Laziz Pizza</div>
  
    <center><img src="/storage/images/pizzas/pizza.webp" alt="..." class="img-thumbnail piz">
      <br>
      <br>
    <div class="badge badge-primary text-wrap " style="width: 15rem;font-size: x-large;">
     CLASSIC MENU
    </div>
    
  </center>
  <br>
  <div class="container">
    <div class="row row-cols-1 row-cols-md-5 ">
        <div class="col-md-3">
          <div class="card ">
            <img src="/storage/images/pizzas/crvl.webp" class="card-img-top ig" alt="...">
            <div class="card-body">
              <h5 class="card-title">Carnival pizza</h5>
              <p class="card-text">Corn,Tomato,Jalapeno,Mushroom</p>
            </div>
          </div>
        </div>
        <div class="col-md-3 mb-4">
          <div class="card ">
            <img src="/storage/images/pizzas/chfspl.webp" class="card-img-top ig" alt="...">
            <div class="card-body">
              <h5 class="card-title">Chefs Special
              </h5>
              <p class="card-text">Bell Peppers & Cottage Cheese</p>
            </div>
          </div>
        </div>
        
        <div class="col-md-3 mb-4">
          <div class="card">
            <img src="/storage/images/pizzas/panpap.webp" class="card-img-top ig" alt="...">
            <div class="card-body">
              <h5 class="card-title">Paneer Paprika</h5>
              <p class="card-text">Peppered Paneer,Paprika</p>
            </div>
          </div>
        </div>
        <div class="col-md-3 mb-4">
            <div class="card">
              <img src="/storage/images/pizzas/vegpap.webp" class="card-img-top ig" alt="...">
              <div class="card-body">
                <h5 class="card-title">Veg Paprika</h5>
                <p class="card-text">Paneer,Corn,Capsicum,Paprika</p>
              </div>
            </div>
          </div>
          <div class="col-md-3 mb-4">
            <div class="card">
              <img src="/storage/images/pizzas/khas2.webp" class="card-img-top ig" alt="...">
              <div class="card-body">
                <h5 class="card-title">LAZIZ DESI</h5>
                <p class="card-text">Tomato,Onion,Capsicum</p>
              </div>
            </div>
          </div>
          <div class="col-md-3 mb-4">
            <div class="card">
              <img src="/storage/images/pizzas/khas.webp" class="card-img-top ig" alt="...">
              <div class="card-body">
                <h5 class="card-title">LAZIZ KHAS</h5>
                <p class="card-text">Pizza with TangyTwist & Toppings</p>
              </div>
            </div>
          </div>
         
          
        </div>
        </div>
      </div>
      <h2 style="text-align:center">Pricing Tables</h2>
<p style="text-align:center">LAZIZ PIZZA</p>

<div class="columns">
  <ul class="price">
    <li class="header">SIZE-S</li>
    <li class="grey">₹ 120</li>
    <li>CARNIVAL</li>
    <li>CHEFS SPECIAL</li>
    <li>VEG SUPER</li>
    <li>VEG PAPRIKA</li>
    <li>DOUBLE CHEESE PIZZA</li>
    <li>LAZIZ DESI</li>
    <li>SCEZWAN PIZZA</li>
    <li>FOUR SEASON</li>
    <li>LAZIZ KHAS</li>
    <li>CREAMY CHEESE</li>
    <li>MUSHROOM PAPRIKA</li>
    <li class="grey"><button class="btn btn-success button" disabled>Delivery charge - ₹20</button></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#4CAF50">SIZE-M</li>
    <li class="grey">₹180</li>
    <li>CARNIVAL</li>
    <li>CHEFS SPECIAL</li>
    <li>VEG SUPER</li>
    <li>VEG PAPRIKA</li>
    <li>DOUBLE CHEESE PIZZA</li>
    <li>LAZIZ DESI</li>
    <li>SCEZWAN PIZZA</li>
    <li>FOUR SEASON</li>
    <li>LAZIZ KHAS</li>
    <li>CREAMY CHEESE</li>
    <li>MUSHROOM PAPRIKA</li>
    <li class="grey"><button class="btn btn-success button" disabled>Free Delivery</button></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header">SIZE-L</li>
    <li class="grey">₹270</li>
    <li>CARNIVAL</li>
    <li>CHEFS SPECIAL</li>
    <li>VEG SUPER</li>
    <li>VEG PAPRIKA</li>
    <li>DOUBLE CHEESE PIZZA</li>
    <li>LAZIZ DESI</li>
    <li>SCEZWAN PIZZA</li>
    <li>FOUR SEASON</li>
    <li>LAZIZ KHAS</li>
    <li>CREAMY CHEESE</li>
    <li>MUSHROOM PAPRIKA</li>
    
    <li class="grey"><button class="btn btn-success button" disabled>Free Delivery</button></li>
  </ul>
</div>
</div>
</main>
  @endsection
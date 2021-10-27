<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    {{-- google_font --}}
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('/ecomm_cart/css')}}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('ecomm_cart/all.css')}}">
    <!-- Bootstrap core CSS -->    <!-- Material Design Bootstrap -->
    <link rel="stylesheet" href="{{asset('ecomm_cart/mdb-pro.min.css')}}">
    <!-- Material Design Bootstrap Ecommerce -->
    <link rel="stylesheet" href="{{asset('ecomm_cart/mdb.ecommerce.min.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Order Summary</title>
</head>
    <style>
      *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body{
     background: rgb(100,124,235);
    }
     .heading_Space{
      padding: 35px 115px 44px 110px;
      font-size: 19px;
      text-align: center;
      font-family: 'Varela Round', sans-serif;
      font-weight: 500;
      /* color: aliceblue; */
      font-weight: 600;
     }
     .prd_img{
       width: 40px;
       height: 40px;
     }
     .rose{
       padding: 8px 0px;
       bottom: 10px;
       color: #444941;
       font-size: 18px;
       font-weight: 600;
     }
     .roseing{
       margin-bottom: 50px
     }
     .right_items{
       text-align: right;
     }
     .rosess{
       margin: 0px 0px 0px;
     }
     .img_height{
       width: 131px;
     }
     .diving{
       font-size: 21px;
       font-weight: 600;
       text-transform: capitalize;
       margin-bottom: 0;
       bottom: 0;
       overflow: hidden;
       text-align: center;
     }
     .diving p{
       color: chartreuse;
       text-shadow: 2px 1px 10px cyan;
     }
     #ioocon{
       padding-left: 25px;
       color: #1b1b1b;
     }
     #ioocon:hover{
      color: #6B4F4F;
     }
    .inner_heading_Space{
      font-size: 19px;
       padding: 38px 50px 44px 50px;
       text-align: center;
       font-family: 'Varela Round', sans-serif;
       font-weight: 500;
       color: aliceblue;
    }
    .left_tot{
       display: flex;
       flex-direction: column;
       margin-top: auto;
       padding-left: 8rem;
       padding-right: 8rem;
    }
   .back_ridirect{
     font-weight: 600;
     font-size: 15px;
     padding-top: 38px;
     color: #ebebeb;
   }
   .full_sizing{
     padding: 0;
     text-align: right;
   }
   .full_padd{
     padding: 0;
   }
   .back_ridirect a:hover{
      color: #D5BFBF;
    }
    .right-col{
     position: relative;
     float: left;
    }
  .imges{
    display: flex;
    justify-content: center;
    align-items: center;
  }
    #heading_summary{
      font-size: 75px;
    padding-left: 27rem;
    text-align: center;
    text-shadow: 0px ​1px 5px #FFFFFF;
    color: #FFFFFF;
    font-weight: 600;
    font-family: 'Varela Round', sans-serif;
    padding-bottom: 29px;
    padding-top: 29px;
}
     .back_page{
        display: block;
        position: absolute;
      }
     .card{
      width: 88%;
      top:50px;
      background: #FFF3E4;
      left: 6%;
      box-shadow: 2px 4px 5px 0 rgba(0,0,0,0.4);
      transition: 0.3s;
    }
    .card:hover{
      box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
    }
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
  .cont{
    right: 0;
    left: 0;
    font-size: 18px;
    font-style: italic;
    text-align: center;
    color: green;
    background: #ebebeb;
    padding-top: 25px;
  }
  @media only screen and (max-width: 600px){
    .card{
      width: 105%;
      top: 11px;
      left: 0px;
    }
    .back_ridirect{
      font-size: 8px;
      padding-top: 4px;
    }
    #ioocon{
      padding-left: 0px;
    }
    #heading_summary{
      font-size: 26px;
      padding-left: 7rem;
      padding-bottom: 11px;
      padding-top: 0px;
    }
    .heading_Space{
      padding: 4px 10px 4px 10px;
      font-size: 12px;
    }
    .inner_heading_Space{
      font-size: 10px;
      padding: 15px 0px 15px 0px;
    }
    .img_height {
      width: 70px;
    }
    .left_tot{
      padding-left: 1rem;
      padding-right: 1rem;
    }
    .rose{
      font-size:13px;
    }
    .roseing{
      margin-bottom:14px; 
    }
    .cont{
      padding-top: 10px;
      font-size: 12px;
    }
  }
</style>
<body onload="myFunction()">
    {{-- @include('nav') --}}
    <div id="loading" >
      <img src="{{'assets/pred.gif'}}" alt="preloader">
    </div>
    <div class="card">
      <div class="card-body" style="padding-bottom: 0px;">
        @php
                $grand_total=0;
                $delivery_charge=0;
                $tot = 0;
            @endphp
          <div class="row">
            <div class="row" style="position:absolute;">
              <div class="back_ridirect"> <a href="/e-commerce" id="ioocon"> <i class="fas fa-arrow-left"></i> Countiue Shoping</a></div>
            </div>
              <h1 id="heading_summary">Order Summary</h1>
               <div class="col col-lg-12 right-col">
                       <table>
                         <tr>
                           <th class="heading_Space text-dark">Product</th>
                           <th class="heading_Space text-dark">Product Name</th>
                           <th class="heading_Space text-dark">Units</th>
                           <th class="heading_Space text-dark">Amount</th>
                         </tr> 
                         @foreach ($shivam as $item)  
                          @php
                            $seller_total=0;
                            $delivery_charge+=$item->delivery_charge??0;
                            $seller_total+=$item->selling_price;
                          @endphp
                            <td class="inner_heading_Space imges">
                              <div class="col-md-5 col-lg-3 col-xl-3 img_height">
                                <div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
                                  <img class="img-fluid w-100" @if($item->showcase_image==NULL) src="{{asset('assets/not_found.jpg')}}" @else src="{{asset($item->showcase_image)}}" @endif  alt="Sample">
                                  <a >
                                    <div class="mask waves-effect waves-light">
                                      <img class="img-fluid w-100" @if($item->showcase_image==NULL) src="{{asset('assets/not_found.jpg')}}" @else src="{{asset($item->showcase_image)}}" @endif >
                                      <div class="mask rgba-black-slight waves-effect waves-light"></div>
                                    </div>
                                  </a>
                                </div>
                              </div>
                            </td>
                            <td class="inner_heading_Space text-dark">{{$item->product_name}}</td> 
                            <td class="inner_heading_Space text-dark">{{$item->quantity}}</td> 
                            @php
                                $size = $item->quantity;
                            @endphp
                            @if($item->quantity>2)
                              @php
                                  for ($i=0; $i <$size; $i++)  
                                      $tot += $item->selling_price;
                              @endphp
                              <td class="inner_heading_Space text-dark">₹{{$tot}}</td>
                            
                            @else
                            <td class="inner_heading_Space text-dark">₹{{$item->selling_price}}</td>
                            @endif
                            @php
                              $grand_total+=$seller_total;
                            @endphp
                          </tr> 
                          @endforeach  
                        </table>
               </div>
               <hr>
               <div class="col col-lg-12 col-sm-12 left_tot" >
                   <div class="row rose rosess">
                     <div class="col full_padd">Total </div>
                     <div class="col full_sizing"><span id="price_total">{{$grand_total}}₹</span></div>
                   </div>
                   {{-- @if($delivery_charge>0) --}}
                   <div class="row rose">
                     <div class="col">Delivery Charge  </div>
                     <div class="col right_items" >{{$delivery_charge}}</div>
                   </div>
                   {{-- @endif --}}
                 <hr >
                   <div class="row rose roseing">
                     <div class="col">Grand Total</div>
                     <div class="col right_items" ><span id="grand_total"></span></div>{{number_format((float)($grand_total+$delivery_charge),2,'.','')}}
                   </div>
                 </div>
                 <div class=" cont">
                    <p>Your Order has been placed <strong> Sucessfully</strong>.</p>
                    <p>It will reach you soon.</p>
                    <p>Any query regarding order Please feel free to contact <strong>Sewacity@gmail.com</strong> </p>
                 </div>
           </div>
      </div>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
 <script>
   var preloader = document.getElementById('loading');
   function myFunction (){
    preloader.style.display = 'none';
   }
</script> 
</html>
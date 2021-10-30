<!DOCTYPE html> 
 <html lang="en" dir="ltr"> 
   <head>
      <meta charset="utf-8">
      <link rel="stylesheet" href="css/styling.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
   </head>
   <body>
      <input type="checkbox" id="check">
      <nav>
      <div class="icon">Sewacity</div>
      <form action="{{route('e_comm_filtered')}}" method="get">
      <div class="search_box">        
            <input type="search" name="search_text" placeholder="Enter text...." value="{{$search_text??""}}">
            {{ csrf_field() }}
            <button type="submit" class="btns">
               <span class="fa fa-search"></span>
            </button>
      </form>
      </div>
      <ol id="OOel" >
         <li class="login_drop">
            @guest
               @if(Route::has('register'))
                  <a  href="{{ route('login') }}" class="login_drop"><i class="fas fa-key"></i>{{ __('Login') }}</a>
               @endif 
                  @else
                  <a class="hideing_mb"> {{ Auth::user()->name }}</a>
                  <ul>
                     @if(Auth::user()->usertype=='special')
                  <li><a href="/manage-feedbacks"> <i class="fas fa-comments-dollar" style="padding-right: 7px;"></i>Manage Feedbacks</a></li>
                              @endif
                              @if(Auth::user()->usertype=='admin' || Auth::user()->usertype=='special')
                  <li><a href="dashboard"><i class="fas fa-users-cog"></i>Admin Panel</a></li>
                  <li><a href="/posts?category=0&searchbox=page=1"><i class="fas fa-boxes" style="padding-right: 7px;"></i> Manage Products</a></li>
                  <li id="strech"><a href="/users"> <i class="fas fa-user" style="padding-right: 7px;"></i>User Details</a></li>
                              @endif
                  <li><a href="/profile" > <i class="far fa-id-badge" style="padding-right: 7px;"></i>Profile Settings</a></li>
                  <li>
                     <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">{{ __('Logout') }} </a></li>
                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                     @csrf
                  </form>
              @endguest      
                  </ul>
         </li>
         {{-- login eidting --}}
         <li><a href="/" class="mt"><i class="far fa-user" style="padding-right: 7px;"></i>Home </a></li>
         <li><a href="/tieup"> <i class="fas fa-hands-helping" style="padding-right: 7px;"></i>Want join us </a></li>
         <li><a href="/about"> <i class="fas fa-users" style="padding-right: 7px;"></i>About Us </a></li>
         <li class="strech" onclick="incHeight()"><a href="#" class="desktop-link strech" onclick="incHeight()"><i class="fas fa-toolbox" style="padding-right: 7px;"></i> Our Services <i class="fa fa-chevron-down" aria-hidden="true"></i></a>
            <ul>
              <li><a href="#"><i class="far fa-user" style="padding-right: 10px" ></i> Home</a></li>
              <li><a href="/foodie"><i class="fas fa-pizza-slice" style="padding-right: 10px" ></i>Food Services</a></li>
              <li><a href="{{route('e_comm')}}"><i class="fas fa-shopping-bag" style="padding-right: 10px" ></i>E-Commerce</a></li>
              <li><a href="/safari"><i class="fas fa-bus" style="padding-right: 10px" ></i>Locomo</a></li>
              <li><a href="/shelters"><i class="fas fa-hotel" style="padding-right: 10px" ></i>Shelter</a></li>
            </ul>
         </li>
         @if(Auth::guest())
         @else
         <li><a href="#"> <i class="fas fa-users"></i></a>
            <ul>
               <li><a href="/profile" > <i class="far fa-id-badge" style="padding-right: 7px;"></i>Profile Settings</a></li>
               <li>
                  <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class="fas fa-sign-out-alt" style="padding-right: 7px;"></i> {{ __('Logout') }} </a></li>
                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                     @csrf
                  </form>
             </ul>
         </li> 
         @endif
      </ol>
      <label for="check" class="bar">
         <span class="fa fa-bars" id="bars"></span>
         <span class="fa fa-times" id="times"></span>
         
      </label>
      <label for="" class="cart">
         <a href="/e-commerce/cart"><span class="fa fa-cart-plus" id="carts"></span></a>
      </label> 
   </nav>
   <script>
      var cur = document.querySelector('.')
      if(){

      }else{

      }
      // document.getElementById('div_register').setAttribute("style","width:500px");
         // function incHeight() {
         //    $('input[type="checkbox"]').click(function(){
         //    if($(this).prop("checked") == true){
         //          document.getElementById('OOel').setAttribute("style","height:650px");

         //                // var el = document.getElementById("OOel");
         //                // var height = el.offsetHeight;
         //                // var newHeight = height + 250;
         //                // el.style.height = newHeight + 'px';
         // }
         //    });
         // }
         
         //1 
         // function incHeight() {
         //          var checkBox = document.getElementById("check");
         //          let he = document.getElementById('OOel')
         //          let w = window.innerWidth;
         //          if ((checkBox.checked === true) && (w <= 768)){                     
         //             he.setAttribute("style","height:650px");
         //          } else {
         //             he.setAttribute("style","height:400px");
         //          }
         //       }
      // function incHeight() {
      //    var el = document.getElementById("OOel");
      //    var height = el.offsetHeight;
      //    var newHeight = height - 250;
      //    el.style.height = newHeight + 'px';
      // }
   </script>
   <script>
      $(document).ready(function () {
         $('input[type="checkbox"]').click(function(){
            if($(this).prop("checked") == true){
                 $('.strech').click(function(){
                  $('#OOel').animate({height:'650px'}, 500);
                });
            }
         });
      });
      if
   </script>
   </body>
</html>
<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
	<!-- favicon -->	<link rel = "icon" type = "image/png" href = "/storage/images/logo.png">    <!-- For apple devices -->    <link rel = "apple-touch-icon" type = "image/png" href = "/storage/images/logo.png"/>
    <title>{{ config('app.name', 'Laravel') }}</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- Scripts -->
    <!--<script src="{{ asset('js/app.js') }}" defer></script>-->

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <!-- Styles -->
    <!--<link href="{{ asset('css/app.css') }}" rel="stylesheet">-->
    {{-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> --}}
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<style>
 .outerdiv{ position:relative; overflow: hidden; } .innerimage{ position:relative; width:100%; } .sold{ position:absolute; left:50%; top:50%; transform:translate(-50%,-50%); width:100%; height: 100%; opacity:0.7; } .custom{ color: white; font-weight: 500 } .custom:hover{ color:black; font-weight:900

 }

.hoverable{ display:inline-block; backface-visibility: hidden; vertical-align: middle; position:relative; box-shadow: 0 0 1px rgba(0,0,0,0); transform: translateZ(0); transition-duration: .3s; transition-property:transform; }

.hoverable:before{ position:absolute; pointer-events: none; z-index:-1; content: ''; top: 100%; left: 5%; height:10px; width:90%; opacity:0; background: -webkit-radial-gradient(center, ellipse, rgba(255, 255, 255, 0.35) 0%, rgba(255, 255, 255, 0) 80%); background: radial-gradient(ellipse at center, rgba(255, 255, 255, 0.35) 0%, rgba(255, 255, 255, 0) 80%); /* W3C */ transition-duration: 0.3s; transition-property: transform, opacity; }

.hoverable:hover, .hoverable:active, .hoverable:focus{ transform: translateY(-5px); } .hoverable:hover:before, .hoverable:active:before, .hoverable:focus:before{ opacity: 1; transform: translateY(-5px); }



/*everything below here is just setting up the page, so dont worry about it */

body {
    /*background-image:url('./assets/bg.jpg');*/
    /*background-color: #21d190;*/
    background-image: linear-gradient(315deg, #21d190 0%, #d65bca 74%) !important;
    background-color: #21d190; font-weight:600; }

.page-title { opacity: .75 !important; } .comname{ letter-spacing: 8px; font-weight: 800;font-family:'Impact'; text-transform: uppercase; }
    @yield('styles');
</style>
<body>


    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light shadow-sm" style="background-color:#0AA903">
            <div class="container">
                <a class="navbar-brand"  href="{{ url('/') }}">

                   <div>
                     <div class="logo">
                    <img src="/storage/images/logo.png" height="40" alt="Logo"> <span class="comname">{{ config('app.name', 'Laravel') }}
                      </span>
                    </div>
                </div>
                </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">
                        <ul class="navbar-nav">
                            <li class="nav-item active"><a href="/"class="nav-link"><span class="custom hoverable" id="len1">HOME</span></a></li>

                            <!--<li class="nav-item hoverable"id="len4"><a href="#"class="nav-link"><span class="custom">CITY's MERCHANT</span></a></li>-->
                            <!--<li class="nav-item hoverable"><a href="#"class="nav-link"><span class="custom">ABOUT</span></a></li>-->
                            </ul>
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else

                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" style="color:white;font-weight:700"class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    @if(Auth::user()->usertype=='admin')
                                    <a href="/posts?category=0&searchbox=&page=1" class="dropdown-item">Manage Products</a>
                                    <a href="/users" class="dropdown-item">User Deatils</a>
                                    @endif
                                    <a href="/profile" class="dropdown-item">Profile Settings</a>
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>
        <nav>

        </nav>
        @include('inc.messages')
        <main class="py-0">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">{{ __('Register') }}</div>

                            <div class="card-body">
                                <form method="POST" action="{{ route('register') }}">
                                    @csrf

                                    <div class="form-group row">
                                        <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                                        <div class="col-md-6">
                                            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                            @error('name')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="phone" class="col-md-4 col-form-label text-md-right">{{ __('Phone') }}</label>

                                        <div class="col-md-6">
                                            <input id="phone" type="number" class="form-control @error('phone') is-invalid @enderror" name="phone" value="{{ old('phone') }}" required autocomplete="phone" autofocus>

                                            @error('phone')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address (Optional)') }}</label>

                                        <div class="col-md-6">
                                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" autocomplete="email">

                                            @error('email')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="city" class="col-md-4 col-form-label text-md-right">{{ __('Select Your City') }}</label>

                                        <div class="col-md-6">
                                            <?php $cities=App\City::all()?>
                                            <select name="city" id="city" class="form-control @error('city') is-invalid @enderror" required>
                                                {{-- <option >Select your City</option> --}}
                                                @foreach ($cities as $city)
                                                    <option value={{$city->id}}>{{$city->city_name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Create Password') }}</label>

                                        <div class="col-md-6">
                                            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                            @error('password')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                                        <div class="col-md-6">
                                            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-6 offset-md-4">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="terms" required>
                                                <label class="form-check-label" for="remember">
                                                    I agree to <a href="/terms-and-conditions">Terms & Condidtions</a>,<a href="/privacy">Privacy Policy</a>
                                                </label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row mb-0">
                                        <div class="col-md-6 offset-md-4">
                                            <button type="submit" class="btn btn-primary">
                                                {{ __('Register') }}
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
<script type="text/javascript">
    $(function () {
        $('[data-toggle="popover"]').popover()
    })
    $(function () {
        $('.example-popover').popover({
        container: 'body'
        })
    })

    $(function(){
  var str = '#len';
  $(document).ready(function(){
    var i, stop;
    i = 1;
    stop = 4;
    setInterval(function(){
      if (i > stop){
        return;
      }
      $('#len'+(i++)).toggleClass('bounce');
    }, 500)
  });
});

    @yield('js');
</script>
</html>




<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- favicon -->
    <link rel="icon" type="image/png" href="/storage/images/logo.png"> <!-- For apple devices -->
    <link rel="apple-touch-icon" type="image/png" href="/storage/images/logo.png" />
    <title>{{ config('app.name', 'Laravel') }}</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- Scripts -->
    <!--<script src="{{ asset('js/app.js') }}" defer></script>-->

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <!-- Styles -->
    <!--<link href="{{ asset('css/app.css') }}" rel="stylesheet">-->
    {{--
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    --}}
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.css" integrity="sha512-3QG6i4RNIYVKJ4nysdP4qo87uoO+vmEzGcEgN68abTpg2usKfuwvaYU+sk08z8k09a0vwflzwyR6agXZ+wgfLA==" crossorigin="anonymous" />

</head>
<style>
    body{
        position: relative;
        /* border:2px solid white; */
        min-height: 100vh;
    }
    /* #foot{
        position: absolute;
        bottom: 0;
        width: 100%;
    } */

    .outerdiv {
        position: relative;
        overflow: hidden;
    }

    .innerimage {
        position: relative;
        width: 100%;
    }

    .sold {
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        width: 100%;
        height: 100%;
        opacity: 0.7;
    }

    .custom {
        color: white;
        font-weight: 500
    }

    .custom:hover {
        color: black;
        font-weight: 900
    }

    .hoverable {
        display: inline-block;
        backface-visibility: hidden;
        vertical-align: middle;
        position: relative;
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        transform: translateZ(0);
        transition-duration: .3s;
        transition-property: transform;
    }

    .hoverable:before {
        position: absolute;
        pointer-events: none;
        z-index: -1;
        content: '';
        top: 100%;
        left: 5%;
        height: 10px;
        width: 90%;
        opacity: 0;
        background: -webkit-radial-gradient(center, ellipse, rgba(255, 255, 255, 0.35) 0%, rgba(255, 255, 255, 0) 80%);
        background: radial-gradient(ellipse at center, rgba(255, 255, 255, 0.35) 0%, rgba(255, 255, 255, 0) 80%);
        /* W3C */
        transition-duration: 0.3s;
        transition-property: transform, opacity;
    }

    .hoverable:hover,
    .hoverable:active,
    .hoverable:focus {
        transform: translateY(-5px);
    }

    .hoverable:hover:before,
    .hoverable:active:before,
    .hoverable:focus:before {
        opacity: 1;
        transform: translateY(-5px);
    }



    /*everything below here is just setting up the page, so dont worry about it */

    body {
        /*background-image:url('./assets/bg.jpg');*/
        /*background-color: #21d190;*/
        background-image: linear-gradient(315deg, #21d190 0%, #d65bca 74%) !important;
        background-color: #21d190;
        font-weight: 600;
    }

    .page-title {
        opacity: .75 !important;
    }

    .comname {
        letter-spacing: 8px;
        font-weight: 800;
        font-family: 'Impact';
        text-transform: uppercase;
    }

    @yield('styles');

</style>

<body>
    {{-- @include('patna.inc.messages') --}}

    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light shadow-sm" style="background-color:#0AA903">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">

                    <div>
                        <div class="logo">
                            <img src="/storage/images/logo.png" height="40" alt="Logo"> <span
                                class="comname">{{ config('app.name', 'Laravel') }}
                            </span>
                        </div>
                    </div>
                </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">
                        <ul class="navbar-nav">
                            <li class="nav-item active"><a href="/" class="nav-link"><span class="custom hoverable"
                                        id="len1">HOME</span></a></li>
                            {{-- <li class="nav-item hoverable" id="len2"><a href="/patna/food" class="nav-link"><span
                                        class="custom">FOOD SERVICE</span></a></li>
                            <li class="nav-item hoverable" id="len3"><a
                                    href="/patna/products?category=0&sort=latest&searchbox=" class="nav-link"><span
                                        class="custom">E-COMMERCE</span></a></li> --}}
                            {{-- <li class="nav-item hoverable" id="len3"><a href="/safari" class="nav-link"><span
                                        class="custom">LOCOMO</span></a></li>
                            <li class="nav-item hoverable" id="len3"><a href="/shelters" class="nav-link"><span
                                        class="custom">SHELTERS</span></a></li> --}}
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
                                <a id="navbarDropdown" style="color:white;font-weight:700" class="nav-link dropdown-toggle"
                                    href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                    v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    @if(Auth::user()->usertype=='special')
                                    <a href="/manage-feedbacks" class="dropdown-item">Manage Feedbacks</a>
                                    @endif
                                    @if(Auth::user()->usertype=='admin' || Auth::user()->usertype=='special')
                                    <a  class="dropdown-item" href="dashboard">Admin Panel</a>
                                    <a href="/posts?category=0&searchbox=&page=1" class="dropdown-item">Manage Products</a>
                                    {{-- <a href="/users" class="dropdown-item">User Deatils</a> --}}
                                    @endif
                                    {{-- <a href="/patna/profile" class="dropdown-item">Profile Settings</a> --}}
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                        style="display: none;">
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
            @yield('extra')
        </nav>
        @include('inc.messages')
        <main class="py-0">
            @yield('content')

        </main>


    </div>
    {{-- <div style="overflow: hidden;" id="foot">
        @include('patna.inc.footer')
    </div> --}}

</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.js" integrity="sha512-aDa+VOyQu6doCaYbMFcBBZ1z5zro7l/aur7DgYpt7KzNS9bjuQeowEX0JyTTeBTcRd0wwN7dfg5OThSKIWYj3A==" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>



<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous"></script>

<script type="text/javascript">
    $(function() {
        var str = '#len';
        $(document).ready(function() {
            var i, stop;
            i = 1;
            stop = 4;
            setInterval(function() {
                if (i > stop) {
                    return;
                }
                $('#len' + (i++)).toggleClass('bounce');
            }, 500)
        });
    });


</script>
    @yield('js');

</html>

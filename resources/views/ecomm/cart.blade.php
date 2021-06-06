@extends('layouts.app')
@section('styles')
    <link rel="stylesheet" href="{{asset('/ecomm-cart/css')}}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('ecomm-cart/all.css')}}">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="{{asset('ecomm-cart/bootstrap.min.css')}}">
    <!-- Material Design Bootstrap -->
    <link rel="stylesheet" href="{{asset('ecomm-cart/mdb-pro.min.css')}}">
    <!-- Material Design Bootstrap Ecommerce -->
    <link rel="stylesheet" href="{{asset('ecomm-cart/mdb.ecommerce.min.css')}}">
    <style>
    @-webkit-keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}@keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}.chartjs-render-monitor{-webkit-animation:chartjs-render-animation 0.001s;animation:chartjs-render-animation 0.001s;}</style>
    <link id="avast_os_ext_custom_font" href="chrome-extension://mbckjcfnjmoiinpgddefodcighgikkgn/common/ui/fonts/fonts.css" rel="stylesheet" type="text/css">
@endsection
@section('content')
     <!--Main Navigation-->
  <header>
    <div class="container text-center py-5">
      <h3 class="mb-0">Shopping cart</h3>
    </div>
</header>
<!--Main Navigation-->

<!--Main layout-->
<main>
<div class="container">

  <!--Section: Block Content-->
  <section class="mt-5 mb-4">

    <!--Grid row-->
    <div class="row">

      <!--Grid column-->
      <div class="col-lg-8">

        <!-- Card -->
        <div class="card wish-list mb-4">
          <div class="card-body">

            <h5 class="mb-4">Cart (<span>2</span> items)</h5>

            <div class="row mb-4">
              <div class="col-md-5 col-lg-3 col-xl-3">
                <div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
                  <img class="img-fluid w-100" src="{{asset('ecomm-cart/12a.jpg')}}" alt="Sample">
                  <a >
                    <div class="mask waves-effect waves-light">
                      <img class="img-fluid w-100" src="{{asset('ecomm-cart/12.jpg')}}">
                      <div class="mask rgba-black-slight waves-effect waves-light"></div>
                    </div>
                  </a>
                </div>
              </div>
              <div class="col-md-7 col-lg-9 col-xl-9">
                <div>
                  <div class="d-flex justify-content-between">
                    <div>
                      <h5>Blue denim shirt</h5>
                      <p class="mb-3 text-muted text-uppercase small">Shirt - blue</p>
                      <p class="mb-2 text-muted text-uppercase small">Color: blue</p>
                      <p class="mb-3 text-muted text-uppercase small">Size: M</p>
                    </div>
                    <div>
                      <div class="def-number-input number-input safari_only mb-0 w-100">
                        <button onclick="this.parentNode.querySelector(&#39;input[type=number]&#39;).stepDown()" class="minus"></button>
                        <input class="quantity" min="0" name="quantity" value="1" type="number">
                        <button onclick="this.parentNode.querySelector(&#39;input[type=number]&#39;).stepUp()" class="plus"></button>
                      </div>
                      <small id="passwordHelpBlock" class="form-text text-muted text-center">
                        (Note, 1 piece)
                      </small>
                    </div>
                  </div>
                  <div class="d-flex justify-content-between align-items-center">
                    <div>
                      <a  href="" type="button" class="card-link-secondary small text-uppercase mr-3"> Remove item </a>
                      <a  type="button" class="card-link-secondary small text-uppercase"> Move to wish list </a>
                    </div>
                    <p class="mb-0"><span><strong>$17.99</strong></span></p>
                  </div>
                </div>
              </div>
            </div>
            <hr class="mb-4">
            <div class="row mb-4">
              <div class="col-md-5 col-lg-3 col-xl-3">
                <div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
                  <img class="img-fluid w-100" src="{{asset('ecomm-cart/13a.jpg')}}" alt="Sample">
                  <a >
                    <div class="mask waves-effect waves-light">
                      <img class="img-fluid w-100" src="{{asset('ecomm-cart/13.jpg')}}">
                      <div class="mask rgba-black-slight waves-effect waves-light"></div>
                    </div>
                  </a>
                </div>
              </div>
              <div class="col-md-7 col-lg-9 col-xl-9">
                <div>
                  <div class="d-flex justify-content-between">
                    <div>
                      <h5>Red hoodie</h5>
                      <p class="mb-3 text-muted text-uppercase small">Hoodie - red</p>
                      <p class="mb-2 text-muted text-uppercase small">Color: red</p>
                      <p class="mb-3 text-muted text-uppercase small">Size: M</p>
                    </div>
                    <div>
                      <div class="def-number-input number-input safari_only mb-0 w-100">
                        <button onclick="this.parentNode.querySelector(&#39;input[type=number]&#39;).stepDown()" class="minus"></button>
                        <input class="quantity" min="0" name="quantity" value="1" type="number">
                        <button onclick="this.parentNode.querySelector(&#39;input[type=number]&#39;).stepUp()" class="plus"></button>
                      </div>
                    </div>
                  </div>
                  <div class="d-flex justify-content-between align-items-center">
                    <div>
                      <a  type="button"  class="card-link-secondary small text-uppercase mr-3"> Remove item </a>
                      <a  type="button" class="card-link-secondary small text-uppercase"> Move to wish list </a>
                    </div>
                    <p class="mb-0"><span><strong>$35.99</strong></span></p>
                  </div>
                </div>
              </div>
            </div>
            <p class="text-primary mb-0"> Do not delay the purchase, adding
              items to your cart does not mean booking them.</p>

          </div>
        </div>
        <!-- Card -->

        <!-- Card -->
        <div class="card mb-4">
          <div class="card-body">

            <h5 class="mb-4">Expected shipping delivery</h5>

            <p class="mb-0"> Thu., 12.03. - Mon., 16.03.</p>
          </div>
        </div>
        <!-- Card -->

        <!-- Card -->
        <div class="card mb-4">
          <div class="card-body">

            <h5 class="mb-4">We accept</h5>

            <img class="mr-2" width="45px" src="{{asset('ecomm-cart/visa.svg')}}" alt="Visa">
            <img class="mr-2" width="45px" src="{{asset('ecomm-cart/amex.svg')}}" alt="American Express">
            <img class="mr-2" width="45px" src="{{asset('ecomm-cart/mastercard.svg')}}" alt="Mastercard">

          </div>
        </div>
        <!-- Card -->

      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-4">

        <!-- Card -->
        <div class="card mb-4">
          <div class="card-body">
            <button type="button" class="btn btn-primary btn-block waves-effect waves-light">go to
              checkout</button>

          </div>
        </div>
    </div>
      <!--Grid column-->

    </div>
    <!--Grid row-->

  </section>
  <!--Section: Block Content-->

</div>
</main>
<!--Main layout-->

@endsection

@section('js')
    <script>

    </script>
@endsection
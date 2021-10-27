<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sewacity | Confirm Pay</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Scripts -->
    <!-- Fonts -->
    <link rel = "icon" type = "image/png" href = "/storage/images/logo.png">    <!-- For apple devices -->    <link rel = "apple-touch-icon" type = "image/png" href = "/storage/images/logo.png"/>
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <!-- Styles -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw==" crossorigin="anonymous" />
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
    <div class="container" style="height:100vh">
        <div class="row text-center d-flex" style="align-items: center;height:100%">
            <div class="col-6 offset-3">
                <div class="card">
                    <div class="card-header">
                        Confirm Payment
                    </div>
                    <div class="card-body">
                        <h3>Please Confirm to Pay Online.</h3>
                        <button class="my-2 btn btn-primary" id="rzp-button1">Confirm</button>

                        <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
                        <script>
                        // console.log(to);
                            // console.log(localStorage.getItem('amount'));
                            // console.log(localStorage.getItem('order_id'));
                        var options = {
                            "key": "{{env('RAZORPAY_KEY_ID')}}", // Enter the Key ID generated from the Dashboard
                            "amount":"{{$amount}}", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
                            "currency": "INR",
                            "name": "SewaCity",
                            "description": "Test Transaction",
                            "image": "{{url('/assets/sewacitylogo.png')}}",
                            "order_id": "{{$order_id}}", //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
                            "handler": function (response){
                                // alert(response.razorpay_payment_id);
                                // alert(response.razorpay_order_id);
                                // alert(response.razorpay_signature)
                                $.ajax({
                                type:"post",
                                url:'/pay',
                                async:false,
                                data:{
                                    "razorpay_payment_id":response.razorpay_payment_id,
                                    "razorpay_order_id":response.razorpay_order_id,
                                    "razorpay_signature":response.razorpay_signature,
                                },
                                success:function(data){
                                    alert(data);
                                    // Swal.fire(
                                    //         'Success!',
                                    //         'Payment Successful.',
                                    //         'success'
                                    //     )
                                    //     location.reload();
                                },
                                error:function(data){
                                    // Swal.fire(
                                    //         'Error!',
                                    //         'Something Went Wrong!',
                                    //         'error'
                                    //     )
                                    //     location.reload();
                                }
                                })
                            },
                            "prefill": {
                                @guest
                                "name": "",
                                "email": "",
                                "phone":""
                                @else
                                @if(Auth::user()->email!=null)
                                "email": "{{Auth::user()->email}}",
                                @endif
                                "name": "{{Auth::user()->name}}",
                                "contact": "{{Auth::user()->phone}}"
                                @endguest
                            },
                            "theme": {
                                "color": "#3399cc"
                            }
                        };
                        var rzp1 = new Razorpay(options);
                        rzp1.on('payment.failed', function (response){
                                alert(response.error.code);
                                alert(response.error.description);
                                alert(response.error.source);
                                alert(response.error.step);
                                alert(response.error.reason);
                                alert(response.error.metadata.order_id);
                                alert(response.error.metadata.payment_id);
                        });
                        document.getElementById('rzp-button1').onclick = function(e){
                            rzp1.open();
                            e.preventDefault();
                        }
                        </script>
                    </div>
                    <div class="card-footer">
                        <a href="/foodie/cart" class="btn btn-secondary">Cancel</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    var preloader = document.getElementById('loading');
    function myFunction (){
     preloader.style.display = 'none';
    }
 </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous"></script>
{{-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> --}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</html>
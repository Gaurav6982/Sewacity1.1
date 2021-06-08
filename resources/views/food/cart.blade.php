@extends('layouts.app')
@section('styles')
    <style>
        .btn{
           
        }
        .hide{
            display: none;
        }
        .btn:hover{
            box-shadow: 0 8px 6px -6px black;
            transform: translateY(-3px);
        }
        .item-img{
            width: 170px;
        }
        @media only screen and (max-width: 500px) {
            .hide {
                display: unset;
                
            }
            .item-img{
            width: 100px;
            height: 75px;
            }
        }
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
        }

        /* Firefox */
        input[type=number] {
        -moz-appearance: textfield;
        }
        .inquan{
            width: 50px;
            border-radius: 0;
            height: 25px;
            font-size: 12px;
        }
        .upbtn{
            padding: 0 10px;
            margin: 0;
            height: 25px;
            border-radius: 0 50% 50% 0;
        }
        .downbtn{
            height: 25px;
            padding: 0 12px;
            margin: 0;
            border-radius:50% 0 0 50%;
            
        }
        .text{
            font-size: 13px;
            margin-bottom: 2px;
        }
        .text{
            font-size: 10px;
        }
        .cont h5{
            font-size: 12px;
        }
    /* .bouter{
        position: relative;
        overflow: hidden;
        height: 100%;
        width: 100%;
        border:10px solid black
    } */
    .banner {
       /* border: 10px solid blaack; */
       /* overflow: hidden; */
       top: 0;
        position: fixed;
        width: 100%;
        height: 100vh;
        background-color: grey;
        background: rgba(0, 0, 0, 0.5);
        z-index: 1111;
    }

    .imag {
        border: 5px solid #31BB01;
        border-radius: 5px;
        position: fixed;
        top: 50%;
        width: 420px;
        left: 50%;
        transform: translate(-50%, -50%);
        /* overflow: hidden; */
        height: 80%;
    }

    .imag img {
        width: 100%;
        height: 100%;
    }
    i.fa-times {
        position: absolute;
        top: 10px;
        right: 10px;
        color: #BB2201;
        cursor: pointer;
        transition: all 0.3s;
    }

    i.fa-times:hover {
        transform: scale(1.3);
    }
    @media only screen and (max-width: 500px) {
        /* .bouter{
            overflow: hidden;
        } */
        .imag {
            width: 90%;
            height: 70%;
        }
    }
    </style>
@endsection
@section('content')
<div class="bouter" id="deliveryStatus">
    @if($status=="Busy")
    <div class="banner">
        <div class="imag"> <img src="/storage/images/deliveryNotAvailable.webp" class="sticky"> <i class="fa fa-times cross" 
                style="font-size: 30px"></i> </div>
    </div>
    @endif
</div>
<div class="container">
    
    <div class="card">
        <div class="card-header">
        <p>Items in your Bag</p>
        <p class="hide"><small>Swipe Left and Right to see Content</small></p>
        </div>
        <div class="card-body">
            @if(count($carts??[])>0)
            <form method="POST" action="/foodie/sendMail" onsubmit="event.preventDefault()" id="cart-form">
                {{ csrf_field() }}

                <div class="table-responsive-sm">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th scope="col">Image</th>
                            <th scope="col">Details</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                            @foreach ($carts as $cart)
                                <?php $item=$cart->item_details?>
                                <input type="hidden" name="" class="ids" value="{{$cart->id}}">
                                <tr>
                                    <td><img class="item-img" @if(isset($item->image)) src="{{asset('storage/restaurants/items/'.$item->image)}}" @else src="https://via.placeholder.com/150" @endif  alt=""></td>
                                    <td class="cont">
                                        <h5>{{$item->name}}</h5>
                                        <p class="text">{{substr($item->desc,0,200)}} @if(strlen($item->desc)>200)...@endif</p>
                                        <p class="text" >Rs. <span id="price{{$cart->id}}" data-value="{{$item->price}}">{{$item->price}}</span> X <span id="qshow{{$cart->id}}"></span> = <span id="multiply{{$cart->id}}"></span></p>
                                    </td>
                                    <td style="display: flex">
                                        <button class="downbtn btn btn-secondary" data-id="{{$cart->id}}">-</button>
                                        <input type="hidden" name="ids[]" value="{{$cart->id}}">
                                        <input type="number" name="quantities[]" class="form-control inquan" min="1" max="20" id="inquan{{$cart->id}}" value="{{$cart->quantity}}" data-id="{{$cart->id}}" readonly>
                                        <button class="upbtn btn btn-secondary" data-id="{{$cart->id}}">+</button>
                                    </td>
                                    <td>
                                        <button class="btn btn-sm remove-cart" data-id="{{$cart->id}}" >Remove</button>
                                    </td>
                                </tr>
                                {{-- {{$item}}-{{$cart->quantity}} --}}
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-4 offset-md-2">
                        <label for="phone">Enter Contact Number:</label>
                        <input type="number" name="phone" class="form-control" id="phone">
                        <p style="color: red" id="warning"></p>
                    </div>
                    <div class="col-md-4">
                        <label for="address">Enter Delivery Address:</label>
                        <input type="text" name="address" class="form-control" id="address" value="{{Auth::user()->address??''}}">
                        <p style="color: red" id="warning-address"></p>
                        <input type="checkbox" name="default_address" id="default_address">&nbsp;<span>Set as Default Address</span>
                    </div>
                </div>
                <hr>
                <p style="opacity: 0.6;padding:0;font-size:12px;width:100%;text-align:center" >Leave it Empty if you want us to contact on your registered mobile number only.</p>
                <small style="opacity: 0.6">
                <p >Delivery Charges Info:</p>
                <ul class="float-left">
                    {{-- <li>Rs. 5 Above a Total of Rs.200</li> --}}
                    <li>Rs. 15 Above a Total Rs. 100</li>
                    <li>Rs. 20 Below Rs. 100</li>
                </ul>
                </small>
            </form>
            @else
            <hr>
            <h4 class="text-center"><em>Bag is Empty.</em></h4>
            <hr>
            @endif
        
        </div>
        <div class="card-footer text-muted ">
            
            <p class="float-left">Total: Rs. <span id="total"></span> <span id="del-charge"></span> </p>
            @if(count($carts??[])>0)
            @if($status!="Busy")
                <div class="float-right d-flex" >
                    <button class="btn btn-primary " id="submit">Place Request</button>
                    <div style="padding-top:4px">&nbsp; OR &nbsp;</div>
                    <input type="hidden" id="amount-input"  value="">
                    <button class="btn btn-primary " id="pay-btn">Pay Online</button>
                    
                </div>
            @endif
            @endif
        </div>
    </div>
</div>
  {{-- {{$carts}} --}}
@endsection
@section('js')
<script>
    $(document).ready(function(){
        var inputs=$('.ids');
        var total=0;
        for(var i = 0; i < inputs.length; i++){
            //update price
            const val=$(inputs[i]).val();
            $('#qshow'+val).text($('#inquan'+val).val());
            const price=$('#price'+val).data("value");
            const multi=parseInt($('#inquan'+val).val())*parseFloat(price);
            $('#multiply'+val).text(multi.toFixed(2));
            total+=multi;
        }
        $('#total').text(total.toFixed(2));
        let extra=0;
        if(parseInt(total) >= 100)
        {
            $('#del-charge').text("+ 15");
            extra=15;
        }
        else if(parseInt(total) < 100 && parseInt(total) > 0)
        {
            $('#del-charge').text("+ 20");
            extra=20;
        }

        // {{-- $.ajax({url:"/set-amount",async:false,type:"POST",data:{"_token":"{{ csrf_token() }}","amount":parseInt(total)+parseInt(extra)} }); --}}
        // {{-- $('#amount-input').val(parseInt(total.toFixed(2))+parseInt(extra)); --}}
    });


    //updation
    $(document).ready(function(){
        $('.upbtn').click(function(){
            const id=$(this).data("id");
            var previous=$('#inquan'+id).val();
            var total=0;
            if( previous < 20)
            {
                const newv=parseInt(previous)+1;
                $('#inquan'+id).val(newv);
                $('#qshow'+id).text(newv);
                const price=$('#price'+id).data("value");
                $('#multiply'+id).text((newv*parseFloat(price)).toFixed(2));
                total=(parseFloat($('#total').text())+parseFloat(price)).toFixed(2);
                $('#total').text(total);
            }
            let extra=0;
            if(parseInt(total) >= 100)
            {
                $('#del-charge').text("+ 15");
                extra=15;
            }
            else if(parseInt(total) < 100 && parseInt(total) > 0)
            {
                $('#del-charge').text("+ 20");
                extra=20;
            }
            // {{-- if(total!==0 && extra!==0) --}}
            // {{-- $.ajax({url:"/set-amount",async:false,type:"POST",data:{"_token":"{{ csrf_token() }}","amount":parseInt(total)+parseInt(extra)} }); --}}
            // {{-- $('#amount-input').val(parseInt(total)+parseInt(extra)); --}}
        })

        $('.downbtn').click(function(){
            const id=$(this).data("id");
            var previous=$('#inquan'+id).val();
            var total=0;
            if( previous > 1)
            {
                const newv=parseInt(previous)-1;
                $('#inquan'+id).val(newv);
                $('#qshow'+id).text(newv);
                const price=$('#price'+id).data("value");
                $('#multiply'+id).text((newv*parseFloat(price)).toFixed(2));
                {{-- console.log($('#total').text()); --}}
                total=(parseFloat($('#total').text())-parseFloat(price)).toFixed(2);
                $('#total').text((parseFloat($('#total').text())-parseFloat(price)).toFixed(2));
            }
            let extra=0;
            if(parseInt(total) >= 100)
            {
                $('#del-charge').text("+ 15");
                extra=15;
            }
            else if(parseInt(total) < 100 && parseInt(total) > 0)
            {
                $('#del-charge').text("+ 20");
                extra=20;
            }
            
            // {{-- if(total!==0 && extra!==0)
            $.ajax({url:"/set-amount",async:false,type:"POST",data:{"_token":"{{ csrf_token() }}","amount":parseInt(total)+parseInt(extra)} }); --}}
            // {{-- $('#amount-input').val(parseInt(total)+parseInt(extra)); --}}
        })   
        $('.inquan').on("change",function(){
            var val=$(this).val();
            if(val==0)
            $(this).val(1);
            else
            $(this).val(val%11);
            var newv=$(this).val();
            const id=$(this).data("id");
            $('#qshow'+id).text(newv);
            const price=$('#price'+id).data("value");
            $('#multiply'+id).text((newv*parseFloat(price)).toFixed(2));
            {{-- console.log($('#total').text()); --}}
            var total=0;
            var inputs=$('.ids');
            for(var i = 0; i < inputs.length; i++){
                //update price
                const val=$(inputs[i]).val();
                const price=$('#price'+val).data("value");
                const multi=parseInt($('#inquan'+val).val())*parseFloat(price);
                total+=multi;
            }
            $('#total').text(total.toFixed(2));
            
            // {{-- $('#total').text((parseFloat($('#total').text())+parseFloat(price)).toFixed(2)); --}}

        });
    });

    //remove item
    $('.remove-cart').click(function(){
        const id=$(this).data("id");
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
          }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    type:"post",
                    url:'/foodie/delete/'+id,
                    data:{
                        "_token":"{{csrf_token()}}",
                        "_method":"delete"
                    },
                    success:function(data){
                        Swal.fire(
                            'Deleted!',
                            'Item Removed.',
                            'success'
                        )
                        location.reload();
                    },
                    error:function(error){
                        Swal.fire(
                            'Error!',
                            'There Might be Some Error.',
                            'error'
                        )
                    }
                }) //ajax
              
            }
        });
        let total=0;
        total=$('#total').text();
        let extra=0;
        if(parseInt(total) >= 100)
            extra=15;
        else if(parseInt(total) < 100 && parseInt(total) > 0)
            extra=20;
        // {{-- $.ajax({url:"/set-amount",async:false,type:"POST",data:{"_token":"{{ csrf_token() }}","amount":parseInt(total)+parseInt(extra)} }); --}}
    });
    $('#submit').click(function(){
        const p=$('#phone').val();
        const phone=p.toString();
        if(phone.length >10 || (phone.length > 0 && phone.length < 10 ))
        {
            $('#warning').text("Phone number should be of 10 digits only");
            setTimeout(function(){
                $('#warning').text("");
            },3000);
        }
        else
        {
            $('#preloader').css('display','unset');
            $.ajax({url:"/set-fail",async:false,type:"POST",data:{"_token":"{{ csrf_token() }}"} });
            $('#cart-form')[0].submit();
        }
      })


      //Directly Pay Online
      $('#pay-btn').click(function(){
        let total=0;
        total=$('#total').text();
        let extra=0;
        if(parseInt(total) >= 100)
            extra=15;
        else if(parseInt(total) < 100 && parseInt(total) > 0)
            extra=20;
            total=parseInt(total)+parseInt(extra);
        $.ajax({url:"/set-amount",async:false,type:"POST",data:{"_token":"{{ csrf_token() }}","amount":total},err:function(err){console.log("set-amount error")} });
        $.ajax({
            type:"post",
            url:"/payment",
            async:false,
            data:{
                // {{-- "amount":"{{Session::get('amount')}}", --}}
                // "_token":"{{ csrf_token() }}",
            },
            success:function(data){
                // {{-- alert(JSON.stringify(data)); --}}
                
                var options = {
                    "key": "{{config('services.razorpay.RAZORPAY_KEY_ID')}}", // Enter the Key ID generated from the Dashboard
                    "amount":data.amount, // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
                    "currency": "INR",
                    "name": "SewaCity",
                    "description": "Food Payment",
                    "image": "{{url('/assets/sewacitylogo.png')}}",
                    "order_id": data.order_id, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
                    "handler": function (response){
                        //to Save this order sync
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
                            // {{-- alert(JSON.stringify(data)); --}}
                           
                            // if(data==='success')
                            // {
                                Swal.fire(
                                     'Success!',
                                     'Payment Successful.',
                                        'success'
                                );
                                $.ajax({url:"/set-success",async:false,type:"POST",data:{"_token":"{{ csrf_token() }}"} });
                                $('#preloader').css('display','unset');
                                $('#cart-form')[0].submit();
                            // }
                            
                            //     location.reload();
                        },
                        error:function(data){
                            // <!--alert(JSON.stringify(data));-->
                             Swal.fire(
                                     'Error!',
                                     'Something Went Wrong!',
                                     'error'
                                 )
                                 console.log("Error Payment");
                                 location.reload();
                        }
                        })
                    },
                    "prefill": {
                       
                        // @if(Auth::user()->email!=null)
                        
                        // "email": "{{Auth::user()->email}}",
                        // @endif
                        
                        "name": "{{Auth::user()->name}}",
                        "contact": "{{Auth::user()->phone}}"
                    },
                    "theme": {
                        "color": "#3399cc"
                    }
                };
                var rzp1 = new Razorpay(options);
                rzp1.on('payment.failed', function (response){
                        // <!--alert("Payment Failed");-->
                        Swal.fire(
                             'Error!',
                             'Something Went Wrong!',
                             'error'
                         )
                         location.reload();
                        console.log("payment.failed")
                });
                rzp1.open();
            },
            error:function(err)
            {
                // <!--alert("Error");-->
                Swal.fire(
                                     'Error!',
                                     'Something Went Wrong!',
                                     'error'
                                 )
                                //  console.log("/payment failed")
                                 location.reload();
                // <!--alert(JSON.stringify(err));-->
            }
        })
      });
      $('.cross').click(function() {
        // console.log($(this).parent().parent());
        $(this).parent().parent().css('display', 'none');
    });
</script>
@endsection
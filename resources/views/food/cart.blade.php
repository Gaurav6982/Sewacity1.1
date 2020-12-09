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
    </style>
@endsection
@section('content')
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
                                        <p class="text">{{substr($item->desc,0,200)}} @if(strlen($item->price)>200)...@endif</p>
                                        <p class="text" >Rs. <span id="price{{$cart->id}}" data-value="{{$item->price}}">{{$item->price}}</span> X <span id="qshow{{$cart->id}}"></span> = <span id="multiply{{$cart->id}}"></span></p>
                                    </td>
                                    <td style="display: flex">
                                        <button class="downbtn btn btn-secondary" data-id="{{$cart->id}}">-</button>
                                        <input type="hidden" name="ids[]" value="{{$cart->id}}">
                                        <input type="number" name="quantities[]" class="form-control inquan" min="1" max="20" id="inquan{{$cart->id}}" value="{{$cart->quantity}}" data-id="{{$cart->id}}">
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
                    <div class="col-md-4 offset-md-4">
                        <label for="phone">Enter Contact Number:</label>
                        <input type="number" name="phone" class="form-control" id="phone">
                        <p style="color: red" id="warning"></p>
                    </div>
                </div>
                <hr>
                <p style="opacity: 0.6;padding:0;font-size:12px;width:100%;text-align:center" >Leave it Empty if you want us to contact on your rgeistered mobile number only.</p>
                <small style="opacity: 0.6">
                <p >Delivery Charges Info:</p>
                <ul class="float-left">
                    <li>Rs. 5 Above a Total of Rs.200</li>
                    <li>Rs. 10 Above a Total Rs. 100 and Below Rs. 200</li>
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

        <button class="btn btn-primary float-right" id="pay-btn" data-toggle="modal" data-target="#confirmModal">Place Request</button>
        </div>
    </div>
</div>
  {{-- {{$carts}} --}}
@endsection
@section('js')
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
        if(parseInt(total) >= 200)
        $('#del-charge').text("+ 5");
        else if(parseInt(total) < 200 && parseInt(total) >= 100)
        $('#del-charge').text("+ 10");
        else if(parseInt(total) < 100 && parseInt(total) > 0)
        $('#del-charge').text("+ 20");
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
                {{-- console.log($('#total').text()); --}}
                total=(parseFloat($('#total').text())+parseFloat(price)).toFixed(2);
                $('#total').text(total);
            }
            if(parseInt(total) >= 200)
            $('#del-charge').text("+ 5");
            else if(parseInt(total) < 200 && parseInt(total) >= 100)
            $('#del-charge').text("+ 10");
            else if(parseInt(total) < 100 && parseInt(total) > 0)
            $('#del-charge').text("+ 20");
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
            if(parseInt(total) >= 200)
            $('#del-charge').text("+ 5");
            else if(parseInt(total) < 200 && parseInt(total) >= 100)
            $('#del-charge').text("+ 10");
            else if(parseInt(total) < 100 && parseInt(total) > 0)
            $('#del-charge').text("+ 20");
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
            
            {{-- $('#total').text((parseFloat($('#total').text())+parseFloat(price)).toFixed(2)); --}}

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
        $('#cart-form')[0].submit();
      })
    $('#pay-btn').click(function(){
        let total=parseInt($('#total').text());
        if(total >= 200)
        total+=5;
        else if(total < 200 && total >= 100)
        total+=10;
        else if(total < 100 && total > 0)
        total+=20;
        localStorage.setItem('total',total);
        $.ajax({
            url:'/payment',
            type:'POST',
            data:{
                'amount':total,
                '_token':"{{ csrf_token() }}"
            },
            success:function(data){
                if(data.success)
                {
                    localStorage.setItem('orderId',data.order_id);
                }
            }
        })      
    })
@endsection
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
            font-size: 13px
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
            <form method="POST" onsubmit="event.preventDefault()">
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
                                    <td>
                                        <h5>{{$item->name}}</h5>
                                        <p class="text">{{substr($item->desc,0,200)}} @if(strlen($item->price)>200)...@endif</p>
                                        <p class="text" >Rs. <span id="price{{$cart->id}}" data-value="{{$item->price}}">{{$item->price}}</span> X <span id="qshow{{$cart->id}}"></span> = <span id="multiply{{$cart->id}}"></span></p>
                                    </td>
                                    <td style="display: flex">
                                        <button class="downbtn btn btn-secondary" data-id="{{$cart->id}}">-</button>
                                        <input type="number" class="form-control inquan" min="1" max="10" id="inquan{{$cart->id}}" value="{{$cart->quantity}}" data-id="{{$cart->id}}">
                                        <button class="upbtn btn btn-secondary" data-id="{{$cart->id}}">+</button>
                                    </td>
                                    <td>
                                        <button class="btn btn-sm" data-id="{{$cart->id}}">Remove</button>
                                    </td>
                                </tr>
                                {{-- {{$item}}-{{$cart->quantity}} --}}
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </form>
            @else
            <hr>
            <h4><em>Bag is Empty.</em></h4>
            <hr>
            @endif
        
        </div>
        <div class="card-footer text-muted ">
        <p class="float-left">Total: Rs. <span id="total"></span> </p>
        <button class="btn btn-primary float-right">Place Request</button>
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
    });
    $(document).ready(function(){
        $('.upbtn').click(function(){
            const id=$(this).data("id");
            var previous=$('#inquan'+id).val();
            if( previous < 10)
            {
                const newv=parseInt(previous)+1;
                $('#inquan'+id).val(newv);
                $('#qshow'+id).text(newv);
                const price=$('#price'+id).data("value");
                $('#multiply'+id).text((newv*parseFloat(price)).toFixed(2));
                {{-- console.log($('#total').text()); --}}
                $('#total').text((parseFloat($('#total').text())+parseFloat(price)).toFixed(2));
            }
        })

        $('.downbtn').click(function(){
            const id=$(this).data("id");
            var previous=$('#inquan'+id).val();
            if( previous > 1)
            {
                const newv=parseInt(previous)-1;
                $('#inquan'+id).val(newv);
                $('#qshow'+id).text(newv);
                const price=$('#price'+id).data("value");
                $('#multiply'+id).text((newv*parseFloat(price)).toFixed(2));
                {{-- console.log($('#total').text()); --}}
                $('#total').text((parseFloat($('#total').text())-parseFloat(price)).toFixed(2));
            }
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
            $('#total').text((parseFloat($('#total').text())-parseFloat(price)).toFixed(2));

        });
    });
@endsection
@extends('layouts.app')
@section('styles')
    <style>
        .btn{
           
        }
        .btn:hover{
            box-shadow: 0 8px 6px -6px black;
            transform: translateY(-3px);
        }
    </style>
@endsection
@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
        Items in your Bag
        </div>
        <div class="card-body">
        @foreach ($carts as $cart)
            <?php $item=$cart->item_details?>
            {{$item}}-{{$cart->quantity}}
        @endforeach
        </div>
        <div class="card-footer text-muted ">
        <button class="btn btn-primary float-right">Place Request</button>
        </div>
    </div>
</div>
  {{-- {{$carts}} --}}
@endsection
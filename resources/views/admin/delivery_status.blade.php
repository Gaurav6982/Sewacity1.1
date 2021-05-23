@extends('layouts.app')
<style>
    #delivery-status .card-body{
        position: relative;
        height: 70vh;
    }
    #delivery-status .card-body .text{
        position: absolute;
        text-align: center;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
    }
    
</style>
@section('content')
    <div class="container" id="delivery-status">
    	<div class="card">
            <div class="card-header">Change Delivery Status</div>
            <div class="card-body">
                <div class="text">
                    Current Status : <span class="{{$status=='Busy'?'text-danger':'text-success'}}">{{$status}}</span><br>
                    Change Status to:
                    <form action="/admin/set-delivery-status" method="POST">
                        {{ csrf_field() }}
                        @if ($status=="Busy")
                            <button type="submit" class="btn btn-success">Available</button>
                        @else
                            <button type="submit" class="btn btn-danger">Busy</button>
                        @endif
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('js')
   <script>
       
   </script>
@endsection

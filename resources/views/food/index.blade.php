@extends('layouts.app')
@section('styles')
<style>
    .ress{
        position: relative;
    }
    .ress::after{
        content: '';
        position:absolute;
        bottom: 0;
        left: 0;
        height: 10px;
        width: 0;
        background-color:green;
        z-index: 10;
        transition: 0.5s ease;
    }
    .ress:hover::after{ 
        width: 100%;
    }
</style>
@endsection
@section('content')
<link href="https://fonts.googleapis.com/css2?family=Grandstander:wght@300&display=swap" rel="stylesheet">
<style>
    .food{
        font-family: 'Grandstander', cursive;
    }
    a{
        text-decoration: none !important;
        color: black
    }
    #closed-img{
        opacity: 0.8;
        width: 100%;
        position: absolute;
        height: 100%
    }
    /* .col-md-3 .card{
        cursor: pointer;
    } */
</style>
    <div class="container food">
        <div class="card">
            <div class="card-header">
                {{count($res??[])}} restaurants
            </div>
            <div class="card-body">
                @if(count($res??[])>0)
                <div class="row">
                    
                    @foreach ($res as $r)
                    
                        <div class="col-md-3 my-4">
                            
                            <div class="card ress">
                                <div class="banner">
                                    {{-- {{intval(date('H',strtotime($r->open_time)))}} --}}
                                    @if( 
                                            (
                                                ( intval(date('H',strtotime($r->open_time))) < intval(date('H',strtotime($r->close_time))) ) 
                                                && 
                                                (! (time()>=strtotime($r->open_time)&& time()<=strtotime($r->close_time)) )
                                            )
                                            ||
                                            (
                                                ( intval(date('H',strtotime($r->open_time))) > intval(date('H',strtotime($r->close_time))) )
                                                &&
                                                ( (time()>=strtotime($r->close_time)&& time()<=strtotime($r->open_time)) )
                                            )
                                        )
                                        <img src="{{asset('storage/images/closed.jpg')}}" alt="Closed" id="closed-img">
                                    @endif
                                </div>
                                <a href="/foodie/{{$r->id}}">
                                <img class="card-img-top" @if($r->image)src="{{asset('storage/restaurants/'.$r->image)}}"@else src="https://via.placeholder.com/150" @endif alt="Card image cap" style="height:200px;">
                               
                                <div class="card-body" style="min-height: 150px">
                                    <h5 class="card-title">{{$r->name}} @if(isset($r->location))-{{$r->location}}@endif<p style="font-size:15px;">{{$r->type}}</p></h5>

                                <p class="card-text">{{$r->desc}}</p>
                                
                            
                                </div>
                                 </a>
                            </div>
                        
                        </div>
                   
                    @endforeach

                </div>
                @else
                <p class="text-center">Coming Soon to Your City</p>
                @endif
              {{-- <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a> --}}
            </div>
          </div>
    </div>
@endsection
@section('js')
@guest
$(function(){
    {{-- console.log(city); --}}
    
   var cit= sessionStorage.getItem("city");
   {{-- console.log(cit); --}}
   $('#session_city').val(cit);

    {{-- $('#select') --}}
});
@endguest
@endsection
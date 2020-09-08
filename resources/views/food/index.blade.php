@extends('layouts.app')

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
    /* .col-md-3 .card{
        cursor: pointer;
    } */
</style>
    <div class="container food">
        <div class="card">
            <div class="card-header">
                11 restaurants
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-3">
                        <a href="/food/1">
                        <div class="card">
                            <img class="card-img-top" src="https://via.placeholder.com/150" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Name<p style="font-size:15px;">type</p></h5>

                            <p class="card-text">Desc</p>
                            </div>
                        </div>
                        </a>
                    </div>
                    <div class="col-md-3">
                        <div class="card">
                            <img class="card-img-top" src="https://via.placeholder.com/150" alt="Card image cap">
                            <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card" >
                            <img class="card-img-top" src="https://via.placeholder.com/150" alt="Card image cap">
                            <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card">
                            <img class="card-img-top" src="https://via.placeholder.com/150" alt="Card image cap">
                            <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                    </div>
                </div>
              {{-- <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a> --}}
            </div>
          </div>
    </div>
@endsection

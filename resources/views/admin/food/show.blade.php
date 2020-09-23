@extends('layouts.app')

@section('styles')
<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
    <style>
      button{
        -webkit-box-shadow: 0 8px 6px -6px black;
	   -moz-box-shadow: 0 8px 6px -6px black;
	        box-shadow: 0 8px 6px -6px black;
      }
      .lead{
        font-family: 'Balsamiq Sans', cursive;
      }
      .item-img{
        box-shadow: 5px 5px rgba(0, 98, 90, 0.4),
              10px 10px rgba(0, 98, 90, 0.3),
              15px 15px rgba(0, 98, 90, 0.2),
              20px 20px rgba(0, 98, 90, 0.1),
              25px 25px rgba(0, 98, 90, 0.05);
      }
      h4{
        font-family: 'Balsamiq Sans', cursive;
      }
      .stylish{
        color: black;
      font-size: 20px;
      font-weight: bold;
      font-family: 'Balsamiq Sans', cursive;
      text-shadow: 
        0 1px 0 #ccc, 
        0 2px 0 #c9c9c9, 
        0 3px 0 #bbb, 
        0 4px 0 #b9b9b9, 
        0 5px 0 #aaa, 
        0 6px 1px rgba(0,0,0,.1), 
        0 0 5px rgba(0,0,0,.1), 
        0 1px 3px rgba(0,0,0,.3), 
        0 3px 5px rgba(0,0,0,.2), 
        0 5px 10px rgba(0,0,0,.25), 
        0 10px 10px rgba(0,0,0,.2), 
        0 20px 20px rgba(0,0,0,.15);
      }
    </style>
@endsection
@section('content')
    <div class="container-fluid">
        <div class="jumbotron jumbotron-fluid" style="color: green;padding:20px 3px;
        box-shadow: 0px 10px 1px #ddd, 0 10px 20px #ccc;border-radius:15px" >
            <div class="container-fluid">
              <div class="float-right"><button class="btn btn-primary" data-toggle="modal" data-target="#menus" id="add-menu-btn"> Add Item</button></div>
                <div class="row">
                    <div class="col-md-3">
                      {{-- {{$res->image}}wajdkawk --}}
                        <img class="card-img-top" @if(isset($res->image)) src="{{asset('storage/restaurants/'.$res->image)}}" @else src="https://via.placeholder.com/150" @endif alt="Card image cap" style="height:100%;padding:10px;
                        border:2px solid #fff;
                        background: url(img/tiger.png) no-repeat;
                        -moz-box-shadow: 10px 10px 5px #ccc;
                        -webkit-box-shadow: 10px 10px 5px #ccc;
                        box-shadow: 10px 10px 5px #ccc;
                        -moz-border-radius:25px;
                        -webkit-border-radius:25px;
                        border-radius:25px;">
                    </div>
                    <div class="col-md-9">
                        <h3 >Restaurant: {{$res->name}}</h3>
                        <p class="lead">{{$res->location}}</p>
                        <p class="lead">{{$res->type}}</p>
                        <p class="lead">{{$res->desc}}</p>
                    </div>
                </div>

            </div>
          </div>

          <div class="row" style="padding:10px;">
              <div class="card col-md-6 offset-md-3" style="border-radius: 10px;">
                <h4 class="my-2">Menu ({{count($items??[])}} items)</h4>
                @if(count($items??[])>0)
                    <div class="row">
                      @foreach ($items as $item)
                          <div class="col-md-12 my-4">
                            <div class="card">
                                <div class="card-body">
                                  <div class="row">
                                      <div class="col-md-4">
                                        <img class="card-img-top item-img"  @if($item->image)src="{{asset('storage/restaurants/items/'.$item->image)}}" @else src="https://via.placeholder.com/150" @endif alt="Card image cap">
                                      </div>
                                    
                                      <div class="col-md-8">
                                        <div style="padding: 20px 10px">
                                            <p class="stylish">Name : {{$item->name}}</p>
                                            <p class="stylish">Price :Rs. {{$item->price}}</p>
                                            <p class="stylish">{{$item->desc}}</p>
                                        </div>
                                      </div>
                                  </div>
                                </div>
                                <div class="m-4">
                                  <button class="float-right btn btn-primary edit-item" data-name="{{$item->name}}" data-price="{{$item->price}}" data-id="{{$item->id}}" data-desc="{{$item->desc}}" data-toggle="modal" data-target="#menus">Edit</button></div>
                                </div>
                              </div>
                          </div>
                      @endforeach
                        
                    </div>
                  @else
                  <div class="my-4">
                    Add Some Items
                  </div>
                  @endif
              </div>
          </div>
    </div>
    @include('inc.modals')
@endsection
@section('js')
$(document).ready(function(){
    $('#add-menu-btn').click(function(){
        $('#menus .modal-title').text("Add Item:");
            $('#menus #name').val("");
            $('#menus #price').val("");
            $('#menus #desc').val("");
            {{-- $('#loc').val(""); --}}
            $('#menus #submit').on('click',function(e){
              {{-- console.log("clicked"); --}}
                {{-- e.preventDefault(); --}}
                const name=$('#menus #name').val();
                const price=$('#menus #price').val();
                const desc=$('#menus #desc').val();
                const image=$('#menus #image').val();
                const res={{$res->id}};
                {{-- const loc=$('#loc').val(); --}}
                {{-- console.log(name+price+desc+image+res); --}}
                
                if(name!='' && price!='' && desc!=''&&image!=''){
                    
                  $('#menus #method').attr('name','');
                $('#menus #method').attr('value','');
                $('#menus #res_id').attr('value',res);
                $('#menus #menu-form').attr('action','/admin/food/item');
                    {{-- console.log(); --}}
                    {{-- ($('#menus #menu-form')[0]).submit(); --}}
                    {{-- $('#menus #menu-form').submit(); --}}
                }
                else
                {
                  
                    if(image=='')
                    $('#menus #warning').text('Please Choose a File.');
                    else if(name=='' || price=='' || desc=='')
                    $('#menus #warning').text('All Fields Are Required.');
                    
                    setTimeout(function(){
                        $('#menus #warning').text('');
                    },2000)
                }
            })
    })


    {{-- Edit --}}

    $('.edit-item').click(function(){
        const id=$(this).data("id");
        const name=$(this).data("name");
        const price=$(this).data("price");
        const desc=$(this).data("desc");
        $('#menus .modal-title').text("Edit Item:");
            $('#menus #name').val(name);
            $('#menus #price').val(price);
            $('#menus #desc').val(desc);
            $("#menus #image").removeAttr("required");
            $('#menus #submit').click(function(e){
                {{-- e.preventDefault(); --}}
                const name=$('#menus #name').val();
                const price=$('#price').val();
                const desc=$('#menus #desc').val();
                const image=$('#menus #image').val();
                if(name!='' && price!='' && desc!=''){
                    $('#menus #menu-form').attr('action','/admin/food/item/'+id);
                    $('#menus #method').attr('name','_method');
                    $('#menus #method').attr('value','PUT');
                }
                else
                {
                    if(name=='' || price=='' || desc=='')
                    $('#warning').text('All Fields Are Required.');
                    
                    setTimeout(function(){
                        $('#warning').text('');
                    },2000)
                }
            })
    })
})
@endsection
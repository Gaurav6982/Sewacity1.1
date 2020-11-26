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
    /* .col-md-3 .card{
        cursor: pointer;
    } */
   
</style>
    <div class="container food">
        <div class="card">
            <div class="card-header">
                <span id="count-res">{{count($res??[])}}</span> restaurants
                <button class="float-right btn btn-primary" data-toggle="modal" data-target="#add-res" id="add-res-button">Add</button>
            </div>
            <div class="card-body">
                @if(count($res??[])>0)
                <div class="row">
                    @foreach ($res as $r)
                        <div class="col-md-3 my-4" id="divres{{$r->id}}">
                            
                            <div class="card ress">
                               
                                <img class="card-img-top" @if($r->image)src="{{asset('storage/restaurants/'.$r->image)}}"@else src="https://via.placeholder.com/150" @endif alt="Card image cap" style="height:200px;">
                                <a href="/admin/food/{{$r->id}}">
                                <div class="card-body" style="min-height: 150px">
                                    <h5 class="card-title">{{$r->name}} @if(isset($r->location))-{{$r->location}}@endif<p style="font-size:15px;">{{$r->type}}</p></h5>

                                <p class="card-text">{{$r->desc}}</p>
                                
                            
                                </div> </a>
                                <div class="m-4">
                                    <button class="float-right btn btn-primary edit-res"
                                     data-name="{{$r->name}}"
                                      data-city="{{$r->city_id}}" 
                                      data-type="{{$r->type}}" 
                                      data-id="{{$r->id}}" 
                                      data-desc="{{$r->desc}}" 
                                      data-loc="{{$r->location}}" 
                                      data-open_time="{{$r->open_time}}" 
                                      data-close_time="{{$r->close_time}}" 
                                      data-toggle="modal" data-target="#add-res"
                                    >Edit</button>
                                    <button class="float-right btn del-res" data-id="{{$r->id}}" style="padding: 0;margin-right:5px"><img src="https://img.icons8.com/cute-clipart/64/000000/delete-forever.png" style="width: 36px"/></button>
                                </div>
                            </div>
                        
                        </div>
                    @endforeach
            </div>
            @else
            No Restaurants Found.
            @endif
          </div>
    </div>
    @include('inc.modals')
@endsection
@section('js')

$(document).ready(function(){
    $('#add-res-button').click(function(){
        $('#add-res .modal-title').text("Add Restaurant:");
            $('#add-res #name').val("");
            $('#add-res #type').val("");
            $('#add-res #desc').val("");
            $('#add-res #loc').val("");
            $('#add-res #open_time').val("");
            $('#add-res #close_time').val("");
            $('#add-res #submit').click(function(e){
                {{-- e.preventDefault(); --}}
                const name=$('#add-res #name').val();
                const type=$('#add-res #type').val();
                const desc=$('#add-res #desc').val();
                const image=$('#add-res #image').val();
                const open_time=$('#add-res #open_time').val();
                const close_time=$('#add-res #close_time').val();
                const loc=$('#add-res #loc').val();
                {{-- const city_id=$('#city').val(); --}}
                
                if(name!='' && type!='' && desc!=''&& loc!='' &&image!=''){
                    $('#add-res #method').attr('name','');
                    $('#add-res #method').attr('value','');
                    $('#add-res #res-form').attr('action','/admin/food');
                    {{-- console.log($('#res-form')[0]); --}}
                    {{-- document.resform.submit(); --}}
                    {{-- $('#res-form')[0].submit(); --}}
                }
                else
                {
                    if(image=='')
                    $('#warning').text('Please Choose a File.');
                    if(name=='' || type=='' || desc=='')
                    $('#warning').text('All Fields Are Required.');
                    
                    setTimeout(function(){
                        $('#warning').text('');
                    },2000)
                }
            })
    })


    {{-- Edit --}}

    $('.edit-res').click(function(){
        const id=$(this).data("id");
        const name=$(this).data("name");
        const type=$(this).data("type");
        const desc=$(this).data("desc");
        const loc=$(this).data("loc");
        const city_id=$(this).data("city");
        const open_time=$(this).data("open_time");
        const close_time=$(this).data("close_time");
        {{-- const id=$(this).data("id"); --}}
        $('#add-res .modal-title').text("Edit Restaurant:");
            $('#add-res #name').val(name);
            $('#add-res #type').val(type);
            $('#add-res #desc').val(desc);
            $('#add-res #loc').val(loc);
            $('#add-res #open_time').val(open_time);
            $('#add-res #close_time').val(close_time);
            $('#add-res #city').val(city_id);
            $("#add-res #image").removeAttr("required");
            $('#add-res #submit').click(function(e){
                {{-- e.preventDefault(); --}}
                const name=$('#name').val();
                const type=$('#type').val();
                const desc=$('#desc').val();
                const image=$('#image').val();
                const loc=$('#loc').val();
                
                if(name!='' && type!='' && desc!=''&& loc!=''){
                    $('#add-res #res-form').attr('action','/admin/food/'+id);
                    $('#add-res #method').attr('name','_method');
                    $('#add-res #method').attr('value','PUT');
                    {{-- console.log($('#res-form')[0]); --}}
                    {{-- document.resform.submit(); --}}
                    {{-- $('#res-form')[0].submit(); --}}
                }
                else
                {
                    if(name=='' || type=='' || desc=='' || loc=='')
                    $('#warning').text('All Fields Are Required.');
                    
                    setTimeout(function(){
                        $('#warning').text('');
                    },2000)
                }
            })
    })

    $('.del-res').click(function(){
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
                    url:'/admin/food/'+id,
                    data:{
                        "_token":"{{csrf_token()}}",
                        "_method":"delete",
                    },
                    success:function(data){
                        Swal.fire(
                            'Deleted!',
                            'Restaurant has been deleted.',
                            'success'
                        )
                        $('#divres'+id).hide();
                        var num_res=$('#count-res').text();
                        num_res--;
                        if(num_res==0)
                        location.reload();
                        else
                        $('#count-res').text(num_res);

                    },
                    error:function(error){
                       {{-- console.log(error); --}}
                        Swal.fire(
                            'Error!',
                            'There Might be Some Error.',
                            'error'
                        )
                    }
                })
              
            }
          })
    })
})
@endsection

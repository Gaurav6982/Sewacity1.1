@extends('layouts.app')
@section('styles')
    <style>

        .slides{
            height: 200px;
        }
        .card .card-img-top{
            width: 100%;
            height: 125px;
        }
    </style>
@endsection
@section('content')
    <div class="container my-4">
    	<div class="card">
            <div class="card-header">
                <center>Manage Slides of Sliders on Front Page</center>
                <div class="d-flex justify-content-between my-1 py-1">
                    <div>{{$slider->slider_name}}</div>
                    <div class="btn btn-dark border-aqua mr-2 disabled">InActive</div> 
                    <div class="btn btn-outline-dark border-black border-2 mr-2 disabled">Active</div> 
                    <button class="btn btn-secondary" id="openSlideModal" data-toggle="modal" data-target="#slideModal">Add a Slide</button>
                </div>
            </div>
    		<br>
            <div class="container-fluid my-3">
                <input type="hidden" name="slider_id" id="slider_id" value="{{$slider->id}}">
                @if(count($slides??[])>0)
                    @php
                    $i=0;    
                    @endphp
                    
                     {{-- <div class="row"> --}}
                    @foreach ($slides as $slide)
                    @if($i%5==0)
                    <div class="row m-4 justify-content-center">
                    @endif
                        <div class="col-md-2 mx-2">
                            <a href="{{$slide->url}}" target="_blank"data-toggle="tooltip" title="{{$slide->name}}">
                                <div class="slides ">
                                    <div class="card @if($slide->is_active==0)bg-dark text-white @endif">
                                        <div class="card-header ">{{substr($slide->name,0,10)}}@if(strlen($slide->name)>10)...@endif</div>
                                        <img src="{{asset('/storage/frontSliders/'.$slider->id.'/'.$slide->image)}}" class="card-img-top" alt="{{$slide->name}}">
                                        
                                        <div class="card-footer text-center py-1">
                                            <a href="" class="btn btn-sm btn-primary edit-slide"data-toggle="modal" data-target="#slideModal" data-id="{{$slide->id}}" data-name="{{$slide->name}}" data-status="{{$slide->is_active}}" data-url="{{$slide->url}}" ><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                            <a href="" data-id="{{$slide->id}}" class="btn btn-sm btn-danger delete-slide"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <?php $i++;?>
                    @if($i%5==0)
                    </div>
                    @endif
                    @endforeach
                     </div>
                @else
                <hr>
                <h5 class="text-center">No Slides Added Yet.</h5>
                <hr>
                @endif
            </div>
            
    	</div>
    </div>
    @include('inc.modals')
@endsection
@section('js')
<script>
  $('#openSlideModal').click(function(){
        $('#slideModal #slide_name').val('');
        $('#slideModal #slide_status').val(0);
        $('#slideModal #slide_url').val('');
      $('#slideModal #slideModalTitle').html("Add a Slide");
        $('#slideModal .submit').click(function(){
            var form='#slideModal form';
            {{-- console.log($(form)[0]); --}}
            $(form).attr('action','/admin/sliders/addSlide/'+$('#slider_id').val());
            $(form)[0].submit();
            
        })      
  })
  $('.edit-slide').click(function(e){
      e.preventDefault();
    const id=$(this).data("id");
    $('#slideModal #slide_name').val($(this).data("name"));
    $('#slideModal #slide_status').val($(this).data("status"));
    $('#slideModal #slide_url').val($(this).data("url"));
  $('#slideModal #slideModalTitle').html("Edit a Slide");
    $('#slideModal .submit').click(function(){
        var form='#slideModal form';
        {{-- console.log($(form)[0]); --}}
        $(form).attr('action','/admin/sliders/'+$('#slider_id').val()+'/editSlide/'+id);
        $(form)[0].submit();
        
    })      
})
  $('.delete-slide').click(function(e){
      e.preventDefault();
      const slide_id=$(this).data("id");
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
                url:'/admin/sliders/{{$slider->id}}/delete/'+slide_id,
                type:'delete',
                data:{
                    "_token":"{{csrf_token()}}",
                    "_method":"delete"
                },
                success:function(data){
                
                    if(data.success==true){
                        Swal.fire(
                            'Deleted!',
                            'Your file has been deleted.',
                            'success'
                        );
                        location.reload();
                    }
                    else{
                        Swal.fire({
                            icon: 'error',
                            title: 'Oops...',
                            text: 'Something went wrong!',
                          })
                    }
                },
                error:function(err){
                    console.log(err);
                }
            })
          
        }
      })
      
  })
</script>
@endsection

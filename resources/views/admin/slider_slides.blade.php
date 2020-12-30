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
                                <div class="card slides @if($slide->is_active==0)bg-dark text-white @endif">
                                    <div class="card-header ">{{substr($slide->name,0,10)}}@if(strlen($slide->name)>10)...@endif</div>
                                    <img src="{{asset('/storage/frontSliders/'.$slider->id.'/'.$slide->image)}}" class="card-img-top" alt="{{$slide->name}}">
                                    
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
  $('#openSlideModal').click(function(){
      $('#slideModal #slide_name').val('');
      $('#slideModal #slide_status').val(0);
      $('#slideModal #slide_url').val('');
      $('#slideModal #slideModalTitle').html("Add a Slide");
        $('#slideModal .submit').click(function(){
            var form='#slideModal form';
            $(form).attr('action','/admin/sliders/addSlide/'+$('#slider_id').val());
            $(form).submit();
        })      
  })
@endsection

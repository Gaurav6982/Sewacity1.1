@extends('layouts.app')
@section('styles')

@endsection
@section('content')
    <div class="container my-4">
    	<div class="card">
            <div class="card-header">
                <center>Manage Sliders on Front Page</center>
                <div class="d-flex justify-content-end">
                    <div class="btn btn-dark border-aqua mr-2 disabled">InActive</div> 
                    <div class="btn btn-outline-dark border-black border-2 mr-2 disabled">Active</div> 
                    <button class="btn btn-secondary" id="openSliderModal" data-toggle="modal" data-target="#sliderModal">Add a Slider</button>
                </div>
            </div>
    		<br>
            <div class="container-fluid">
                @php
                    $i=0;    
                @endphp
                @foreach ($sliders as $slider)
                @if($i%5==0)
                <div class="row m-4">
                @endif
                    <div class="col-md">                        
                        <div class="card">
                            <div class="card-header d-flex justify-content-between @if($slider->is_active==0)bg-dark @endif()"><a href="/admin/sliders/{{$slider->id}}" style="text-decoration: none"><span>{{$slider->slider_name}}</span></a> <span> <button class="btn btn-outline-info flex-end openEditModal" data-toggle="modal" data-target="#sliderModal"  data-id="{{$slider->id}}" data-name="{{$slider->slider_name}}" data-status="{{$slider->is_active}}">Edit</button></span></div>
                        </div>
                    </div>
                    <?php $i++;?>
                @if($i%5==0)
                </div>
                @endif
                @endforeach
            </div>
            
    	</div>
    </div>
    @include('inc.modals')
@endsection
@section('js')
  $('#openSliderModal').click(function(){
      $('#sliderModal #slider_name').val('');
      $('#sliderModal #slider_status').val(0);
      $('#sliderModal #sliderModalTitle').html("Add a Slider");
        $('#sliderModal .submit').click(function(){
            var name=$('#sliderModal #slider_name').val();
            var status=$('#sliderModal #slider_status').val();
            if(name!='' && status!='')
            {
                $.ajax({
                    type:"post",
                    url:'/admin/sliders',
                    data:{
                        "_token":"{{csrf_token()}}",
                        "name":name,
                        "status":status,
                    },
                    success:function(data){
                        Swal.fire(
                            'Added!',
                            'Slider has been Added.',
                            'success'
                        )
                        setTimeout(function(){
                            location.reload();
                        },500)
                    },
                    error:function(error){
                        if(error.responseJSON=="Exist")
                        {
                            Swal.fire(
                                'Error!',
                                'Slider Name Already Exist!',
                                'error'
                            )

                        }
                        else
                        {
                            Swal.fire(
                                'Error!',
                                'There Might be Some Error.',
                                'error'
                            )

                        }

                    }
                })
            }
            else
            {
                Swal.fire(
                            'Error!',
                            'Name Field Cannot be Empty',
                            'error'
                        )
            }
        })      
  })

  {{-- Edit --}}
  $('.openEditModal').click(function(){
    $('#sliderModal #slider_name').val($(this).data("name"));
    $('#sliderModal #slider_status').val($(this).data("status"));
    $('#sliderModal #sliderModalTitle').html("Edit a Slider");
    var slider_id=$(this).data("id");
      $('#sliderModal .submit').click(function(){
          var name=$('#sliderModal #slider_name').val();
          var status=$('#sliderModal #slider_status').val();
          if(name!='' && status!='' && slider_id!='')
          {
              $.ajax({
                  type:"PUT",
                  url:'/admin/sliders/'+slider_id,
                  data:{
                      "_token":"{{csrf_token()}}",
                      "_method":"PUT",
                      "name":name,
                      "status":status,
                  },
                  success:function(data){
                      Swal.fire(
                          'Added!',
                          'Slider has been Updated.',
                          'success'
                      )
                      setTimeout(function(){
                          location.reload();
                      },500)
                  },
                  error:function(error){
                      if(error.responseJSON=="NoId")
                      {
                          Swal.fire(
                              'Error!',
                              'Id Not Fond!',
                              'error'
                          )

                      }
                      else
                      {
                          Swal.fire(
                              'Error!',
                              'There Might be Some Error.',
                              'error'
                          )

                      }

                  }
              })
          }
          else
          {
              Swal.fire(
                          'Error!',
                          'Name Field Cannot be Empty',
                          'error'
                      )
          }
      })      
})
@endsection

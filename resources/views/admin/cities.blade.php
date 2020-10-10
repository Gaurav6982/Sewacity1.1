@extends('layouts.app')

@section('content')
<div class="container my-2">
    <div class="card" >
        <div class="card-header">
            Manage Cities
            <div class="float-right">
                <button class="btn btn-primary" id="add_city" data-toggle="modal" data-target="#editCityModal">Add a City</button>
            </div> 
        </div>
        <div class="card-body">
            <div class="table-responsive p-2">
                <table class="table table-sm">
                    <thead class="thead-dark">
                      <tr>
                        <th scope="col">S. No.</th>
                        <th scope="col">Name</th>
                        <th scope="col">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                        <?php $i=1;?>
                        @foreach ($cities as $item)
                            <tr>
                                <td>{{$i++}}</td>
                                <td><span @if($item->is_active==0) style="color:grey" @endif>{{$item->city_name}}</span></td>
                                <td style="display: flex">
                                    <input type="hidden" name="city_id" value="{{$item->id}}">
                                    <input type="hidden" name="city_name" value="{{$item->city_name}}">
                                    <input type="hidden" name="city_status" value="{{$item->is_active}}">
                                    <input type="hidden" name="city_order" value="{{$item->order}}">
                                    <button class="btn btn-info ml-2 edit btn-sm" data-toggle="modal" data-target="#editCityModal"><img src="https://img.icons8.com/material/20/000000/edit--v1.png"/></button >
                                    {{-- <button class="btn btn-danger ml-2 delete btn-sm" data-id="{{$item->id}}"><i class="fa fa-trash" aria-hidden="true"></i></button> --}}
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                  </table>

            </div>    
        </div>    
    </div>
</div>
@include('inc.modals')
@endsection

@section('js')
$(document).ready(function(){
    

    $('#add_city').click(function(){
        $('#editCityModal .modal-title').text("Add City:");
        $('#editCityModal #name').val("");
        $('#editCityModal #status').val("0");

        var options='<option value="0">On Top</option>';
        @foreach ($cities as $key=>$item)
                @if($item->is_active==1)
                    options+='<option value="{{$item->id}}" @if($key==0) selected @endif>{{$item->city_name}}</option>';
                @endif
        @endforeach
        $('#editCityModal #order').html(options);

        $('#editCityModal #edit-submit').click(function(){
            name=$('#editCityModal #name').val();
            status=$('#editCityModal #status').val();
            order=$('#editCityModal #order').val();
            if(name!='' && status!=''){
                $.ajax({
                    type:"post",
                    url:"/add-city",
                    data:{
                        "_token": "{{ csrf_token() }}",
                        "name":name,
                        "status":status,
                        "order":order,
                    },
                    success:function(data)
                    {
                        if(data=="save"){
                            $('#editCityModal #name').val("");
                            Swal.fire(
                                'Success!',
                                'City Added!',
                                'success'
                            )
                            setTimeout(function(){
                                location.reload();
                            },800);
                        }
                        else if(data=="exist")
                        {
                            Swal.fire(
                                'Error!',
                                'Name Already Exist',
                                'error'
                            )
                        }
                        else
                        {
                            Swal.fire(
                                'Error!',
                                'There is Some Error!!!',
                                'error'
                            )
                        }
                    },
                }); //ajax
            }
            else
            {
                if(name=='')
                $('#warning-text-name').text("This Field can't be empty!");
                else
                $('#warning-text-order').text("This Field can't be empty!");
                setTimeout(function(){
                    $('#warning-text-name').text("");
                    $('#warning-text-order').text("");
                },2000);
            }
        }); //button click
    });
    
    //**************** Edit form**************
    $('.edit').on('click',function(){

        const city_id=$(this).closest('td').find("input[name='city_id']").val();
        var options='<option value="0">On Top</option>';
        @foreach ($cities as $key=>$item)
                @if($item->is_active==1)
                    options+='<option value="{{$item->id}}" >{{$item->city_name}}</option>';
                @endif
        @endforeach
        $('#editCityModal #order').html(options);

        
        var name=$(this).closest('td').find("input[name='city_name']").val();
        var status=$(this).closest('td').find("input[name='city_status']").val();
        var order=parseInt($(this).closest('td').find("input[name='city_order']").val())-1;
        $('#editCityModal #name').val(name);
        $('#editCityModal #status').val(status);
        $('#editCityModal #order').val(order);
        $('#editCityModal .modal-title').text("Edit City:");
        $('#editCityModal #edit-submit').click(function(){
            name=$('#editCityModal #name').val();
            status=$('#editCityModal #status').val();
            order=$('#editCityModal #order').val();
            $.ajax({
                type:"post",
                url:"/edit-city",
                data:{
                    "_token": "{{ csrf_token() }}",
                    "name":name,
                    "status":status,
                    "city_id":city_id,
                    "order":order,
                },
                success:function(data)
                {
                    console.log(data);
                    if(data=="save"){
                        Swal.fire(
                            'Success!',
                            'City Updated!',
                            'success'
                        )
                        setTimeout(function(){
                            location.reload();
                        },500);
                    }
                    else if(data=="exist")
                    {
                        Swal.fire(
                            'Error!',
                            'This Combination Exist',
                            'error'
                        )
                    }
                    else
                    {
                        Swal.fire(
                            'Error!',
                            'There is Some Error!!!',
                            'error'
                        )
                    }
                },
            });
        }); //button click
    });

});
@endsection
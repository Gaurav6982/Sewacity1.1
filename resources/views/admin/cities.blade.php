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
                                <td>{{$item->city_name}}</td>
                                <td style="display: flex">
                                    <input type="hidden" name="city_id" value="{{$item->id}}">
                                    <input type="hidden" name="city_name" value="{{$item->item_name}}">
                                    <input type="hidden" name="city_status" value="{{$item->is_active}}">
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
    $('#add_category').click(function(){
        $('.modal-title').text("Add Category:");
        $('#name').val("");
        $('#order').val("");
        $('#edit-submit').click(function(){
            name=$('#name').val();
            order=$('#order').val();
            if(name!='' && order!=''){
                $.ajax({
                    type:"post",
                    url:"/add-category",
                    data:{
                        "_token": "{{ csrf_token() }}",
                        "name":name,
                        "order":order,
                        "city_id":$('#city_id').val(),
                    },
                    success:function(data)
                    {
                        if(data=="save"){
                            $('#name').val("");
                            Swal.fire(
                                'Success!',
                                'Category Added!',
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
    $('#add_category_submit').click(function(e){
        e.preventDefault();
        const value=$('#category_name').val();
        if(value=='')
        {
            $('#category_name').css("border","1px solid red");
        }
        else
        {
            $.ajax({
                type:"post",
                url:"/add-category",
                data:{
                    "_token": "{{ csrf_token() }}",
                    "name":value,
                    "city_id":$('#city_id').val(),
                },
                success:function(data)
                {
                    if(data=="save"){
                        $('#category_name').val("");
                        Swal.fire(
                            'Success!',
                            'Category Added!',
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
            });
        }
    });
    //**************** Edit form**************
    $('.edit').on('click',function(){
        const cat_id=$(this).closest('td').find("input[name='category_id']").val();
        var name=$(this).closest('td').find("input[name='category_name']").val();
        var order=$(this).closest('td').find("input[name='category_order']").val();
        $('#name').val(name);
        $('#order').val(order);
        $('.modal-title').text("Edit Category:");
        $('#edit-submit').click(function(){
            name=$('#name').val();
            order=$('#order').val();
            $.ajax({
                type:"post",
                url:"/edit-category",
                data:{
                    "_token": "{{ csrf_token() }}","_token": "{{ csrf_token() }}",
                    "name":name,
                    "order":order,
                    "category_id":cat_id,
                },
                success:function(data)
                {
                    console.log(data);
                    if(data=="save"){
                        Swal.fire(
                            'Success!',
                            'Category Updated!',
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
@endsection
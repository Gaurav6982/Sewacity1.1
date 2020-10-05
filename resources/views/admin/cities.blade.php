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
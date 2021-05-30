@extends('layouts.app')

@section('content')
    <div class="container mt-3">
        <div class="card">
            <div class="card-header d-flex">
                <div class="w-50">Products ( {{$seller->shop_name}} )</div>
                <div class="w-100 text-right">
                    <a href="{{route('sellers')}}" class="btn btn-secondary btn-sm mr-2">back</a>
                    <a href="{{route('create_product',['seller_id'=>$seller->id])}}" class="btn btn-primary btn-sm">Add Product</a>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive table-hover">
                    <table class="table table-sm">
                        <thead>
                            <tr data-url="header">
                                {{-- <th>Product Images</th> --}}
                                <th>Product Name </th>
                                <th>Product Category</th>
                                <th>Product Price</th>
                                <th>Product Discount (%)</th>
                                <th>Product Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(count($products??[])>0)
                               @foreach ($products as $product)
                               <tr class="clickable-rows">
                                   {{-- <td> <a href="" class="btn btn-sm btn-success"><i class="fa fa-download" aria-hidden="true"></i></a></td> --}}
                                   <td> {{$product->product_name}}</td>
                                   <td> {{$product->category->category_name}}</td>
                                   <td> {{$product->price}}</td>
                                   <td> {{$product->discount}}</td>
                                   <td> {!!$product->is_active?'<button disabled class="btn btn-sm btn-success">Active</button>':'<button class="btn btn-sm btn-danger" disabled>InActive</button>'!!}</td>
                                   <td class="d-flex w-100 justify-content-around">
                                    <a href="{{route('edit_product',['id'=>$product->id])}}"  class="btn btn-sm btn-inline-block btn-warning edit_seller_btn"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                    <form action="{{route('delete_product',['id'=>$product->id])}}" method="POST">
                                        {{method_field('DELETE')}}
                                        {{ csrf_field() }}
                                        <button class="btn btn-sm btn-danger delete_seller_btn btn-inline-block"><i class="fa fa-trash" aria-hidden="true"></i></button>
                                    </form>
                                    </td>
                                </tr>
                                @endforeach
                            @else
                            {{-- <hr> --}}
                            <tr >
                                <td colspan="7">

                                    <p class="text-center">No Products Found</p>
                                </td>
                            </tr>
                            {{-- <hr> --}}
                            @endif
                        </tbody>
                    </table>
                  </div>
            </div>
        </div>
    </div>
@endsection

@section('js')
    <script>
        // var $  = require( 'jquery' );
// var dt = require( 'datatables.net' )();
        $(document).ready(function(){
            // alert("ad");
            $('table').DataTable();
            $('form').on("submit",function(){
                $('#preloader').css('display','unset');
            })
            $('.edit_seller_btn,.img-btn').click(function(e){
                e.stopPropagation();
            });
            $('.delete_seller_btn').click(function(e){
                e.stopPropagation();
                e.preventDefault();
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
                    $(this).parent().closest("form").submit();
                    Swal.fire(
                    'Deleted!',
                    'Your file has been deleted.',
                    'success'
                    )
                    }
                })
            })
           
        })
    </script>
@endsection
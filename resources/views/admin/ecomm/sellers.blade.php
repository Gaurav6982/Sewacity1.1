@extends('layouts.app')

@section('content')
    <div class="container mt-3">
        <div class="card">
            <div class="card-header d-flex">
                <div>Sellers</div>
                <div class="w-100 text-right">
                    <a href="{{route('admin')}}" class="btn btn-secondary btn-sm mr-2">back</a>
                    <a href="{{route('create_seller')}}" class="btn btn-primary btn-sm">Add Seller</a>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive table-hover">
                    <table class="table table-sm">
                        <thead>
                            <tr>
                                <th>S.No</th>
                                <th>Shop Image</th>
                                <th>Shop Name (Owner)</th>
                                <th>Shop Status</th>
                                <th>Delivery Charge</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(count($sellers??[])>0)
                                @foreach ($sellers as $k=>$seller)
                                    <tr class="clickable-rows" data-url="{{route('show_products',['id'=>$seller->id,'shop_name'=>$seller->shop_name])}}">
                                        <td>{{$k+1}} </td>
                                        <td><a href="{{url($seller->shop_image)}}" target="_blank" class="img-btn"><img style="width: 100px;height:50px" src="{{asset($seller->shop_image)}}" alt="Shop Image"></a></td>
                                        <td>{{$seller->shop_name}} ( {{$seller->seller_name}} )</td>
                                        <td>{!!$seller->is_active==1?'<button class="btn btn-sm btn-success" disabled>Active</button>':'<button class="btn btn-sm btn-danger" disabled>InActive</button>';!!}</td>
                                        <td>{{$seller->delivery_charge}}</td>
                                        <td class="d-flex w-100 justify-content-around">
                                            <a href="{{route('edit_seller',['id'=>$seller->id])}}"  class="btn btn-sm btn-inline-block btn-warning edit_seller_btn"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                            <form action="{{route('delete_seller',['id'=>$seller->id])}}" method="POST">
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
                                <td colspan="6">

                                    <p class="text-center">No Sellers Found</p>
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
        $(document).ready(function(){
            $('table').DataTable();
            $('tr.clickable-rows').click(function(){
                var url=$(this).data("url");
                // if(url=="header") return false;
                // var url="{{route('edit_coupon',['id'=>"+id+"])}}";
                // console.log(url);
                window.location.href=url;
            });
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
@extends('layouts.app')

@section('content')
    <div class="container mt-3">
        <div class="card">
            <div class="card-header d-flex">
                <div>Coupons</div>
                <div class="w-100 text-right">
                    <a href="{{route('admin')}}" class="btn btn-secondary btn-sm mr-2">back</a>
                    <a href="{{route('create_coupon')}}" class="btn btn-primary btn-sm">Add Coupon</a>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive table-hover">
                    <table class="table table-sm">
                        <thead>
                            <tr>
                                <th>S.No</th>
                                <th>Coupon Name</th>
                                <th>Coupon Status</th>
                                <th>Coupon Type</th>
                                <th>Value</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(count($coupons??[])>0)
                                @foreach ($coupons as $k=>$coupon)
                                    <tr data-url="{{route('edit_coupon',['id'=>$coupon->id])}}">
                                        <td>{{$k+1}}</td>
                                        <td>{{$coupon->coupon_code}}</td>
                                        <td>{!!$coupon->is_active==1?'<button class="btn btn-success btn-sm" disabled>Active</button>':'<button disabled class="btn btn-danger btn-sm">Expired</button>'!!}</td>
                                        <td>{{ucfirst($coupon->discount_type)}}</td>
                                        <td>{{$coupon->value}}</td>
                                        <td>
                                            <form action="{{route('delete_coupon',['id'=>$coupon->id])}}" method="POST">
                                                {{method_field('DELETE')}}
                                                {{ csrf_field() }}
                                                <button class="btn btn-sm btn-danger delete_coupon_btn"><i class="fa fa-trash" aria-hidden="true"></i></button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                            @else
                            {{-- <hr> --}}
                            <tr >
                                <td colspan="6">

                                    <p class="text-center">No Coupons Found</p>
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
            $('tr').click(function(){
                var url=$(this).data("url");
                // var url="{{route('edit_coupon',['id'=>"+id+"])}}";
                // console.log(url);
                window.location.href=url;
            });
            $('.delete_coupon_btn').click(function(e){
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
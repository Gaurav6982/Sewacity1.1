@extends('layouts.app')

@section('content')
    <div class="container">
        <a href="/manage-feedbacks" class="btn btn-secondary">Back</a>
        <div class="row my-3">
            <div class="col-sm-2">
                <strong>Name :</strong>
            </div>
            <div class="col-sm-10">
                {{$feed->name}}
            </div>
        </div>
        <div class="row my-3">
            <div class="col-sm-2">
                <strong>Email : </strong>
            </div>
            <div class="col-sm-10">
                {{$feed->email}}
            </div>
        </div>
        <div class="row my-3">
            <div class="col-sm-2">
                <strong>Experience</strong>
            </div>
            <div class="col-sm-10">
                {{$feed->experience}}
            </div>
        </div>
        <div class="row my-3">
            <div class="col-sm-2">
                <strong>Comment</strong>
            </div>
            <div class="col-sm-10">
                {!!$feed->comments!!}
            </div>
        </div>
        <div class="row my-3">
            <div class="col-md-6 offset-md-3">
                @if($feed->is_approved==0)
                <a href="/approve/{{$feed->id}}" class="btn btn-success">Approve</a>
                @else
                <a href="/approve/{{$feed->id}}" class="btn btn-info">Disapprove</a>
                @endif
                <a data-id="{{$feed->id}}" style="cursor:pointer" class="delete-feedback-btn btn btn-danger">Delete</a>
            </div>
        </div>
    </div>
@endsection
@section('js')
<script>
    $(document).ready(function(){
        $('.delete-feedback-btn').click(function(){
            const id=$(this).data("id");
            const swalWithBootstrapButtons = Swal.mixin({
                customClass: {
                  confirmButton: 'btn btn-success',
                  cancelButton: 'btn btn-danger'
                },
                buttonsStyling: false
              })

              swalWithBootstrapButtons.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, cancel!',
                reverseButtons: true
              }).then((result) => {
                if (result.value) {
                    $.ajax({
                        method:"post",
                        url:'/delete-feedback',
                        data:{
                            "_token": "{{ csrf_token() }}",
                            id:id,
                        },
                        success:function(data){
                            if(data=="success")
                            {
                                swalWithBootstrapButtons.fire(
                                'Deleted!',
                                'This feedback has been deleted.',
                                'success'
                                );
                                setTimeout(function(){
                                    window.location.href="/manage-feedbacks";
                                },800);

                            }
                            else
                            {
                                swalWithBootstrapButtons.fire(
                                    'Error',
                                    'There Might be Some Error!',
                                    'error'
                                )
                            }

                        }
                    });
                } else if (
                  /* Read more about handling dismissals below */
                  result.dismiss === Swal.DismissReason.cancel
                ) {
                  swalWithBootstrapButtons.fire(
                    'Cancelled',
                    'This Feedback is safe :)',
                    'error'
                  )
                }
              });

        });
    });
</script>

@endsection

@extends(Auth::user()->city_id==1?'layouts.app':'patna.layouts.app')
@section('content')
    <div class="container table-responsive">
        <h4 class="text-center">Manage Feedbacks</h4>
        @if(count($feeds)>0)
        <table class="table ">
            <thead class="thead-dark">
              <tr>
                <th scope="col" style="width:10%">S.No</th>
                <th scope="col">Experience</th>
                <th scope="col">Status</th>
                <th scope="col">Handle</th>
              </tr>
            </thead>
            <tbody>
                <?php $i=1;?>
                @foreach ($feeds as $feed)
                    <tr>
                        <th scope="row">{{$i++}}</th>
                        <td>{{$feed->experience}}</td>
                        <td>
                            @if ($feed->is_approved==1)
                                <span style="color: green;font-weight:800">Approved</span>
                            @else
                                <span style="color:red">Not Approved</span>
                            @endif
                            / <a href="/feedback/{{$feed->id}}"> View</a>
                        </td>
                        <td>
                            @if ($feed->is_approved==0)
                            <a href="/approve/{{$feed->id}}" class="btn btn-secondary " style="color: green"><i class="fa fa-check" aria-hidden="true"></i></a>
                            @else
                            <a href="/approve/{{$feed->id}}" class="btn btn-secondary " style="color: red;"><i class="fa fa-times" aria-hidden="true"></i></a>
                            @endif
                            <a  data-id="{{$feed->id}}" class="delete-feedback-btn btn btn-dark" style="color: crimson;cursor:pointer"><i class="fa fa-trash" aria-hidden="true"></i></a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
          </table>
          @else
            No Feedbacks Found.
          @endif
    </div>
@endsection
@section('js')

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
                                    location.reload();
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


@endsection


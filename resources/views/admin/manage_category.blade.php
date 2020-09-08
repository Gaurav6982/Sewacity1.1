@extends($id==1?'layouts.app':'patna.layouts.app')

@section('content')
    <div class="container mt-4">
        <div class="card">
            <div class="card-header">Manage Categories in E-Commerce</div>
            <div class="card-body">
                <div class="card-title text-success ">City : @if($id==1) <span> Forbesganj</span> @else <span>Patna</span> @endif</div>
                <button class="btn btn-success" id="add_category" data-toggle="modal" data-target="#editModal">Add a Category</button>
                <input type="hidden" name="city_id" id="city_id" value="{{$id}}">
                {{-- <div id="toggle-form" class="mt-4">
                    <form>
                        {{csrf_field()}}
                        <div class="row">
                        <div class="form-group col-md-6">
                            <div class="row">
                                <input type="hidden" name="city_id" id="city_id"value="{{$id}}">
                                <div class="col-md-4"><label for="">Category Name :</label></div>
                                <div class="col-md-4"><input type="text" name="category_name" id="category_name" class="form-control"></div>
                                <div class="col-md-4"><button id="add_category_submit" class="btn btn-secondary">Add</button></div>
                            </div>
                        </div>
                        </div>
                    </form>
                </div> --}}
            </div>
            <div class="table-responsive p-2">
                <table class="table table-sm">
                    <thead class="thead-dark">
                      <tr>
                        <th scope="col">S. No.</th>
                        <th scope="col">Name</th>
                        <th scope="col">Order</th>
                        <th scope="col">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                        <?php $i=1;?>
                        @foreach ($categories as $category)
                            <tr>
                                <td>{{$i++}}</td>
                                <td>{{$category->category_name}}</td>
                                <td>{{$category->order}}</td>
                                <td style="display: flex">
                                    <input type="hidden" name="category_id" value="{{$category->id}}">
                                    <input type="hidden" name="category_name" value="{{$category->category_name}}">
                                    <input type="hidden" name="category_order" value="{{$category->order}}">
                                    <button class="btn btn-info ml-2 edit btn-sm" data-toggle="modal" data-target="#editModal"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button >
                                    <button class="btn btn-danger ml-2 delete btn-sm" data-id="{{$category->id}}"><i class="fa fa-trash" aria-hidden="true"></i></button>
                                </td>

                            </tr>
                        @endforeach
                    </tbody>
                  </table>

            </div>
        </div>
    </div>

    {{-- ***************************Edit MOdal******************* --}}
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Category: <span id="category_name"></span></h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="name">Category Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                    <p style="color: red" id="warning-text-name"></p>
                </div>
                <div class="form-group">
                    <label for="order">Category Order:</label>
                    <input type="number" min="0" class="form-control" id="order" name="order" required>
                    <p style="color: red"  id="warning-text-order"></p>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary" id="edit-submit">Save changes</button>
            </div>
          </div>
        </div>
      </div>
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

        //Delete Button
        $('.delete').click(function(){
            const id=$(this).data("id");
            const swalWithBootstrapButtons = Swal.mixin({
                customClass: {
                  confirmButton: 'btn btn-success',
                  cancelButton: 'btn btn-danger mr-2'
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
                        type:"POST",
                        url:"/delete-category",
                        data:{
                            "_token": "{{ csrf_token() }}",
                            "id":id,
                        },
                        success:function(data){
                            if(data="success")
                            {
                                swalWithBootstrapButtons.fire(
                                    'Deleted!',
                                    'Category has been deleted.',
                                    'success'
                                );
                                setTimeout(function(){
                                    location.reload();
                                },500);
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

                } else if (
                  /* Read more about handling dismissals below */
                  result.dismiss === Swal.DismissReason.cancel
                ) {
                  swalWithBootstrapButtons.fire(
                    'Cancelled',
                    'This Category is safe :)',
                    'error'
                  )
                }
              });//sweet alert
        });
    })
@endsection

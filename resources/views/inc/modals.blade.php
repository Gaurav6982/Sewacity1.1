
{{-- 
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
    Launch demo modal
  </button> --}}
  
  <!-- Modal -->
  <div class="modal fade" id="add-res" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Add Restaurant</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form id="res-form" name="resform" method="POST" enctype="multipart/form-data" >
            @csrf
            <input type="hidden" id="method">
            <div>
              <label for="city">Select City:</label>
              <select name="city" id="city" class="form-control" required>
                @foreach (App\City::where('is_active',1)->orderBy('order')->get() as $item)
                    <option value="{{$item->id}}">{{$item->city_name}}</option>
                @endforeach
              </select>
            </div>
            <div class="my-4">
                <label for="name">Enter Name:</label>
                <input type="text" name="name" id="name" placeholder="Enter Restaurant Name:" class="form-control" required>
            </div>
            <div class="my-4">
                <label for="name">Enter Type:</label>
                <input type="text" name="type" id="type" placeholder="Enter Restaurant Type:" class="form-control" required>
            </div>
            <div class="my-4">
                <label for="name">Enter Description:</label>
                <input type="text" name="desc" id="desc" placeholder="Enter Restaurant Description:" class="form-control" required>
            </div>
            <div class="my-4">
              <label for="loc">Enter Address:</label>
              <input type="text" name="loc" id="loc" placeholder="Enter Restaurant Address:" class="form-control" required>
            </div>
            <div class="my-4">
              <label for="open_time">Select Open Time:</label>
              <input type="time" name="open_time" id="open_time" class="form-control" required>
            </div>
            <div class="my-4">
              <label for="close_time">Select Close Time:</label>
              <input type="time" name="close_time" id="close_time" class="form-control" required>
            </div>
            {{-- <div>
                <label for="city">Select City:</label>
                <select name="" id=""></select>
            </div> --}}
            <div class="my-4">
                <label for="image">Choose Restaurant Image:</label>
                <input type="file" name="image" accept="image/*,.jpeg,.jpg,.png" id="image" class="form-control" required>
            </div>
            <p style="color: red" id="warning"></p>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" id="submit" class="btn btn-primary">Save changes</button>
            </div>
            {{-- <button type="submit" id="submit">Submit</button> --}}
          </form>
        </div>
        
        
      </div>
    </div>
  </div>

  {{-- Menus Modal --}}

  <div class="modal fade" id="menus" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add Item</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form method="POST" id="menu-form" enctype="multipart/form-data">
            {{ csrf_field() }}
            <input type="hidden" name="res_id" id="res_id">
            <input type="hidden" name="" id="method">
            
            <div>
              <label for="name">Enter Name:</label>
              <input type="text" name="name" id="name" placeholder="Enter Item Name" class="form-control" required>
            </div>
            <div>
              <label for="price">Enter Price:</label>
              <input type="number" name="price" id="price" placeholder="Enter Item Price" step="0.01" min="0" class="form-control" required>
            </div>
            <div>
              <label for="type">Select Food Type:</label>
              <select name="type" id="type" required class="form-control">
                <option value="1">Veg</option>
                <option value="0">Non-Veg</option>
              </select>
            </div>
            <div>
              <label for="desc">Enter Desc:</label>
              <input type="text" name="desc" id="desc" placeholder="Enter Item Desc" class="form-control" required>
            </div>
            <div>
              <label for="name">Choose Image:</label>
              <input type="file" name="image" id="image" placeholder="Enter Item Image" class="form-control" required>
            </div>
            <p style="color: red" id="warning"></p>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary" id="submit">Save changes</button>
            </div>
          </form>
        </div>
        
      </div>
    </div>
  </div>


  {{-- ***************City Modal************ --}}
  <div class="modal fade" id="editCityModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Edit City: <span id="city_name"></span></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <label for="name">City Name:</label>
                <input type="text" class="form-control" id="name" name="name" required>
                <p style="color: red" id="warning-text-name"></p>
            </div>
            <div class="form-group">
              <label for="order">Position:</label>
              <select name="order" id="order" class="form-control">
                
              </select>
              
              <p style="color: red"  id="warning-text-order"></p>
          </div>
            <div class="form-group">
                <label for="status">City Status:</label>
                <select name="status" id="status" class="form-control">
                  <option value="0">Not Active</option>
                  <option value="1">Active</option>
                </select>
                
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

  {{-- ********************Front Slider Modal************************** --}}

  <div class="modal fade" id="sliderModal" tabindex="-1" role="dialog" aria-labelledby="sliderModal" aria-hidden="true">
    <div class="modal-dialog modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="sliderModalTitle">Add Slider</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="" method="post">
            <div class="form-group">
              <label for="slider_name">Slider Name:</label>
              <input type="text" name="slider_name" id="slider_name" class="form-control">
            </div>
            
            <div class="form-group">
              <label for="slider_name">Slider Status:</label>
              <select name="slider_status" id="slider_status" class="form-control">
                <option value="0">InActive</option>
                <option value="1">Active</option>
              </select>
            </div>

          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary submit" >Save changes</button>
        </div>
      </div>
    </div>
  </div>

   {{-- ********************Add a Slide Modal************************** --}}

   <div class="modal fade" id="slideModal" tabindex="-1" role="dialog" aria-labelledby="slideModal" aria-hidden="true">
    <div class="modal-dialog modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="slideModalTitle">Add Slider</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}
            <div class="form-group">
              <label for="slide_name">Slide Name:</label>
              <input type="text" name="slide_name" id="slide_name" class="form-control">
            </div>
            
            <div class="form-group">
              <label for="slide_status">Slide Status:</label>
              <select name="slide_status" id="slide_status" class="form-control">
                <option value="0">InActive</option>
                <option value="1">Active</option>
              </select>
            </div>

            <div class="form-group">
              <label for="slide_url">Slide URL:</label>
              <input type="text" name="slide_url" id="slide_url" class="form-control" placeholder="https://sewacity.com/example">
            </div>

            <div class="form-group">
              <label for="slide_img">Slide Image:</label>
              <input type="file" name="slide_img" id="slide_img" class="form-control">
            </div>
            

          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary submit" >Save changes</button>
        </div>
      </div>
    </div>
  </div>

  {{-- Confirm BUtton modal --}}
  <div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Please Confirm</h5>
        </div>
        <div class="modal-body">
          <div class="text-center">
            <button class="btn btn-primary " id="rzp-button1">Confirm Payment</button>
          </div>
          <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
        <script>
          // console.log(to);
            console.log(localStorage.getItem('amount'));
            console.log(localStorage.getItem('order_id'));
        var options = {
            "key": "{{env('RAZORPAY_KEY_ID')}}", // Enter the Key ID generated from the Dashboard
            "amount": localStorage.getItem('amount'), // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
            "currency": "INR",
            "name": "SewaCity",
            "description": "Test Transaction",
            "image": "{{url('/assets/sewacitylogo.png')}}",
            "order_id": localStorage.getItem('order_id'), //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
            "handler": function (response){
                // alert(response.razorpay_payment_id);
                // alert(response.razorpay_order_id);
                // alert(response.razorpay_signature)
                $.ajax({
                  url:'/pay',
                  type:"post",
                  data:{
                    "_method":"{{csrf_token()}}",
                    "razorpay_payment_id":response.razorpay_payment_id,
                    "razorpay_payment_id":response.razorpay_payment_id,
                    "razorpay_signature":response.razorpay_signature,
                  },
                  success:function(data){
                    alert(data);
                    // Swal.fire(
                    //         'Success!',
                    //         'Payment Successful.',
                    //         'success'
                    //     )
                    //     location.reload();
                  },
                  error:function(data){
                    // Swal.fire(
                    //         'Error!',
                    //         'Something Went Wrong!',
                    //         'error'
                    //     )
                    //     location.reload();
                  }
                })
            },
            "prefill": {
                "name": "{{Auth::user()->name}}",
                @if(Auth::user()->email!=null)
                "email": "{{Auth::user()->email}}",
                @endif
                "contact": "{{Auth::user()->phone}}"
            },
            "theme": {
                "color": "#3399cc"
            }
        };
        var rzp1 = new Razorpay(options);
        rzp1.on('payment.failed', function (response){
                alert(response.error.code);
                alert(response.error.description);
                alert(response.error.source);
                alert(response.error.step);
                alert(response.error.reason);
                alert(response.error.metadata.order_id);
                alert(response.error.metadata.payment_id);
        });
        document.getElementById('rzp-button1').onclick = function(e){
            rzp1.open();
            e.preventDefault();
        }
        </script>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
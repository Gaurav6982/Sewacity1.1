
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
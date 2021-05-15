@extends('layouts.app')
<style>
    ul li{
        margin:5px 0;
        list-style: none;
    }
</style>
@section('content')
    <div class="container">
    	<div class="card">
    		<div class="card-header"><center>Welcome Admin</center></div>
    		<br>
            
    		<ul >
                <li>
                    <form id="category_form" method="POST">
                        {{csrf_field()}}
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-2">
                                    <label for="manage-category">Manage Categories</label>
                            </div>
                            <div class="col-md-4">
                                <select name="manage-category" id="manage-category" class="form-control" style="width:90%">
                                    <option value="">Select City</option>
                                    <?php $cities=App\City::where('is_active',1)->get()?>
                                    @foreach ($cities as $city)
                                    <option value="{{$city->id}}">{{$city->city_name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" id="city_id" name="city_id">
                    </form>
                </li>
    			<li><a href="/posts?category=0&searchbox=&page=1" class="btn btn-primary">Go to E-Commerce Panel</a></li>
    			<li><a href="#"data-container="body" data-toggle="popover" data-placement="top" data-content="Coming Soon!!" class="btn btn-primary">Send a Email</a></li>
    			<li><a href="#" class="btn btn-primary">Go to Hotel Panel!</a></li>
                <li><a href="/admin/food" class="btn btn-primary">Go to Food Panel!</a></li>
                @auth @if(Auth::user()->usertype=='special')
                <li><a href="/admin/city" class="btn btn-primary">Go to City Panel!</a></li>
                <li><a href="/admin/sliders" class="btn btn-primary">Front Page Slider!</a></li>
                <li><a href="/admin/delivery-status" class="btn btn-primary">Change Delivery Status</a></li>
                @endif @endauth
    		</ul>
    	</div>



    </div>
@endsection
@section('js')
    $(document).ready(function(){
        $('#manage-category').on("change",function(){
            if($(this).val()=='')
            {
                $(this).css("border","1px solid red");
            }
            else
            {
                $(this).css("border","");
                $('#city_id').attr("value",$(this).val());
                $(this.form).attr("action","/manage-category");
                $(this.form).submit();
            }
        });
    });
@endsection

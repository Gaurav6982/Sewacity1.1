@extends('layouts.app')
@section('styles')
    <style>
        .text-small{
            font-size: 10px;
            font-style: italic
        }
        .img-relative-div{
            position: relative;
           
        }
        .cross-button{
            cursor: pointer;
            position: absolute;
            right: 2px;
            top: 50%;
            transform: translateY(-50%);
        }
    </style>
@endsection
@section('content')
    <div class="container mt-3">
        <div class="card">
            <div class="card-header d-flex">
                <div class="w-50">
                  
                @isset($product)
                Edit
                @else
                Create
                @endif
                Product ( Shop Name : {{$seller->shop_name}} )
                </div>
                <div class="text-right w-100">
                    <a  href="{{route('show_products',['id'=>$seller->id])}}"class="btn btn-sm btn-secondary">back</a>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        @isset($product)
                        <form action="{{route('update_product',['id'=>$product->id,'seller_id'=>$seller->id])}}" method="POST" enctype="multipart/form-data">
                            {{method_field('PUT')}}
                        @else
                        <form action="{{route('store_product',['seller_id'=>$seller->id])}}" method="POST" enctype="multipart/form-data">
                        @endif
                            {{csrf_field()}}
                        <div class="form-group">
                            <label for="product_name">Product Name*</label>
                            <input type="text" name="product_name" id="product_name" value="{{isset($product)?$product->product_name:(old('product_name')??'')}}" class="form-control" placeholder="Enter Product Name">
                            @if($errors->has('product_name'))
                                <div class="text-danger">{{ $errors->first('product_name') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="specs">Product Specs*</label>
                            <textarea  name="specs" id="specs" value="{!!isset($product)?$product->specs:(old('specs')??'')!!}" class="ckeditor form-control" placeholder="Enter Product Specs"></textarea>
                            @if($errors->has('specs'))
                                <div class="text-danger">{{ $errors->first('specs') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="offers">Product Offers</label>
                            <textarea  name="offers" id="offers" value="{!!isset($product)?$product->offers:(old('offers')??'')!!}" class="ckeditor form-control" placeholder="Enter Product Offers"></textarea>
                            @if($errors->has('offers'))
                                <div class="text-danger">{{ $errors->first('offers') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="category_id">Product Category*</label>
                            <select  name="category_id" id="category_id" class="form-control select2">
    
                                @foreach ($categories as $category)
                                    <option value="{{$category->id}}" {{old('category_id')==$category->id || ($product->category_id??0)==$category->id?'selected':''}}>{{$category->category_name}}</option>
                                @endforeach
                            </select>
                            @if($errors->has('category_id'))
                                <div class="text-danger">{{ $errors->first('category_id') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="status">Product Status*</label>
                            <select  name="status" id="status" class="form-control">
    
                                <option value="1" @isset($product) {{$product->is_active==1?'selected':''}} @endisset>Active</option>
                                <option value="0" @isset($product) {{$product->is_active==0?'selected':''}} @endisset>InActive</option>
                            </select>
                            @if($errors->has('status'))
                                <div class="text-danger">{{ $errors->first('status') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="sold_out">Product Status*</label>
                            <select  name="sold_out" id="sold_out" class="form-control">
    
                                <option value="0" @isset($product) {{$product->sold_out==0?'selected':''}} @endisset>In Stock</option>
                                <option value="1" @isset($product) {{$product->sold_out==1?'selected':''}} @endisset>Sold Out</option>
                            </select>
                            @if($errors->has('sold_out'))
                                <div class="text-danger">{{ $errors->first('sold_out') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="price">Product Price*</label>
                            <input type="number"  name="price" id="price" value="{{isset($product)?$product->price:(old('price')??'')}}" class="form-control" placeholder="Enter Product Price">
                            @if($errors->has('price'))
                                <div class="text-danger">{{ $errors->first('price') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="discount">Product Discount( in %)*</label>
                            <input type="number"  name="discount" id="discount" value="{{isset($product)?$product->discount:(old('discount')??'')}}" class="form-control" placeholder="Enter Product Discount">
                            @if($errors->has('discount'))
                                <div class="text-danger">{{ $errors->first('discount') }}</div>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="description">Product Description</label>
                            <textarea  name="description" id="description" value="{!!isset($product)?$product->description:(old('description')??'')!!}" class="ckeditor form-control" placeholder="Enter Product Description"></textarea>
                            @if($errors->has('description'))
                                <div class="text-danger">{{ $errors->first('description') }}</div>
                            @endif
                        </div>
                        @if(count($product->uploaded_images??[])>0)
                        <div class="form-group">
                            <label for="showcase_image">Product ShowCase Image</label>
                           <select name="showcase_image" id="showcase_image" class="form-control select2">
                               <option value="{{NULL}}">No Image Selected</option>
                               @foreach ($product->uploaded_images as $image)
                                   <option value="{{$image->file_path}}" @isset($product) {{$product->showcase_image==$image->file_path?'selected':''}} @endisset>{{$image->image_name}} </option>
                               @endforeach
                           </select>
                           <small> <em>You can view the image by clicking on a image name below.</em></small>
                            @if($errors->has('showcase_image'))
                                <div class="text-danger">{{ $errors->first('showcase_image') }}</div>
                            @endif
                        </div>
                        
                        @endif
                        <div class="form-group">
                            <label for="images">Product Images</label>
                            @isset($product)
                            <div id="input-show-div"  class="">
                                <table class="table table-sm">
                                @foreach ($product->uploaded_images??[] as $k=>$image)
                                    {{-- <div class="row"> --}}
                                        {{-- <div class="card image-card"> --}}
                                            <tr>
                                            <td class="img-relative-div">
                                                <a href="{{url($image->file_path)}}" target="_blank">{{$image->image_name}}</a>
                                                <div class="cross-button btn text-danger" data-id="{{$image->id}}"><i class="fa fa-times"></i></div>
                                            </td>
                                            </tr>
                                            {{-- </div> --}}
                                        {{-- </div> --}}
                                    {{-- </div> --}}
                                @endforeach
                                </table>
                            </div>
                            @endisset
                            <div id="images-input-div">
                                <div>
                                <input name="images[]" id="images" type="file"  class="form-control" multiple>
                                {{-- <div class='float-right' onclick="removeImage(this)"> <i class='fa fa-times'></i></div> --}}
                                </div>
                            </div>
                            <div class="text-small">Select Upto 8 files only.</div>
                            <div class="text-danger" id="img-warning"></div>
                            {{-- <button type="button" class="btn btn-sm mt-1" id="add-img">Add Image</button> --}}
                            {{-- @if($errors->has('images'))
                                <div class="text-danger">{{ $errors->first('images') }}</div>
                            @endif --}}
                        </div>
                        <button type="submit" id="submit-form" class="btn btn-block btn-success">@isset($product) Update @else Save @endif</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js')
<script>
    $(document).ready(function(){
        

        // $('.ckeditor').ckeditor();
        $('.select2').select2();
        $('.cross-button').click(function(){
            $(this).parent().parent().html("<input type='hidden' name='removed_images[]' value='"+$(this).data("id")+"'>");
        });
        $('#submit-form').click(function(e){
            var len=$('input[name="removed_images[]"]').length;
           
            var limit=8-parseInt("{{($product->images??0)}}")+len;
            if($("#images")[0].files.length > limit)
            {
                $('#img-warning').html("You Cannot Upload More Than 8 Files.");
                return false;
            }
        })
        $('form').on("submit",function(){
            
            $('#preloader').css('display','unset');
        })
        $('#add-img').click(function(e){
            e.preventDefault();
            // alert("awd");
            append="<div>";
            append+="<input type='file' name='images[]' class='form-control'>";
            append+="<div class='float-right'  onclick='removeImage(this)'> <i class='fa fa-times'></i></div>"
            append+="</div>";
            // console.log(append);
            $('#images-input-div').append(append);
                // return false;
        });
        window.removeImage=function(el){
            if($('input[type="file"]').length==1) return false;
            $(el).parent().remove();
        }
        // alert("awd");
            var specs="{!!str_replace(array("\r","\n"),"",$product->specs??'')!!}";
            var description="{!!str_replace(array("\r","\n"),"",$product->description??'')!!}";
            var offers="{!!str_replace(array("\r","\n"),"",$product->offers??'')!!}";
            CKEDITOR.instances['specs'].setData(specs)
            CKEDITOR.instances['description'].setData(description)
            CKEDITOR.instances['offers'].setData(offers)
    })
</script>
@endsection

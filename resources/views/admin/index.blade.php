@extends('layouts.app')
@section('content')
<?php if(!isset($_GET['page']))
        {
            $_GET['page']=1;
        }
?>
    <div class="container">
        <div class="card">
            <br>
            <h3 class="text-center">Choose A Feature</h1>
           <br>
        </div>
        <br>
        <ul>
            <li><a href="/posts/create" class="btn btn-success">Add a Product</a></li>
        </ul>
        <hr>
        <section>
        <div class="row">
                    <div class="col-md-4 col-sm-12">
                <h5>Available Products</h5> </div>

                    <div class="col-md-4 col-sm-12">
                        <form action="/posts" method="get">
                            <div class="row">

                                    <div class="col-md-12 form-group"  id="categoryselect">
                                        <select class="form-control" name="category" id="catselectEdit">
                                            <option value="0">All</option>
                                            @foreach ($categories as $item)
                                                <option value="{{$item->id}}">{{$item->category_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-12 form-group"  id="categoryselect">
                                        <select class="form-control" name="city" id="city">
                                            @foreach ($cities as $item)
                                                <option value="{{$item->id}}">{{$item->city_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                     <div class="col-md-12 form-group" id="searchinputEdit">
                                        <input type="text"  name="searchbox" placeholder="Enter Some Text" class="form-control">
                                    </div>

                            </div>
                            <div class="row">
                                <div class="col-md-2 offset-md-2">
                                    <button type="submit" class="btn btn-primary">Go</button>
                                </div>
                                <div class="col-md-2 offset-md-2">
                                    <a href="/posts?category=0&searchbox=&page=1" class="btn btn-danger pull-right">Reset</a>
                                </div>
                            </div>
                        </form>
                    </div>
        </div>
        <div>
            <section class="container">
                @if(count($posts)>0)
                <h3 style="margin-top:20px">Products</h3>
                @foreach ($posts as $post)
                    <div class="well" style="border:2px solid black;border-radius:5px;margin:2px 0px">
                        <div class="row">
                            <div class="col-md-4" style="height: 300px;" >
                                <div class="outerdiv">
                                <img src="/storage/product_images/{{$post->image}}" alt="PRODUCT_IMAGE" class="innerimage" style="border-right:2px solid black;border-radius:5px;height:300px">
                                @if($post->valid==0)
                                  <img src="/storage/images/sold.jpg" alt="sold out" class="sold" >
                                @endif
                                </div>
                            </div>
                            <div class="col-md-4 m-md-auto" style="border-right: 2px solid black">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h5><span style="color:green">Name</span> : <span style="font-family: 'MuseoModerno', cursive;">{{$post->product_name}}</span></h5>
                                    </div>
                                    <div class="col-md-12">
                                        <h5><span style="color:green">Quantity</span> : <span style="font-family: 'MuseoModerno', cursive;">{{$post->product_quantity}}</span></h5>
                                    </div>
                                    <div class="col-md-12">
                                        <h5><span style="color:green">Price</span> :  <span style="font-family: 'MuseoModerno', cursive;">Rs.{{$post->product_price}}</span></h5>
                                    </div>
                                    <div class="col-md-12">
                                        <h5><span style="color:green">Category</span> : <span style="font-family: 'MuseoModerno', cursive;">{{$post->category}}</span></h5>
                                    </div>
                                    @if($post->discount>0)

                                    <div class="col-md-12">
                                        <h5><span style="color:green">Discount</span> : <span style="font-family: 'MuseoModerno', cursive;">{{$post->discount}} %</span></h5>
                                    </div>
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-4 m-md-auto">
                                <a href="/posts/{{$post->id}}/edit" class="btn btn-primary d-block">Edit</a>
                                {!!Form::open(['action'=>['PostController@destroy',$post->id],'method'=>'post'])!!}
                                    {!!Form::hidden('_method','DELETE')!!}
                                    {{Form::submit('Delete',['class'=>'btn btn-danger btn-block'])}}

                                {!!Form::close()!!}
                            </div>
                        </div>
                    </div>

                @endforeach
                <div class="row">
                        <div class="col-md-12">
                            <center>
                        <?php
                        if($_GET['page']>1)
                        {
                            $link="/posts?category=".$page."&searchbox=".$input."&page=".($_GET['page']-1);
                            echo "<a href=".$link."><i class='fa fa-step-backward scale'></i></a> ";
                        }
                        ?>
                        <!-- // for($i=1;$i<=$pages;$i++)
                        // {
                        //     $link="/posts?category=".$page."&searchbox=".$input."&page=".$i;
                        //     echo "<a href=".$link." id=number".$i." class='btn btn-outline-success'>".$i."</a>";
                        // } -->

                        Jump to:
                            <select id="jumpEdit" onchange="changeEdit(this.id)">
                                <?php
                                    for($i=1;$i<=$pages;$i++)
                                    {
                                        if($i==$_GET['page'])
                                        echo "<option values=".$i." selected>".$i."</option>";
                                        else
                                        echo "<option values=".$i.">".$i."</option>";
                                    }

                                ?>
                            </select>
                        <?php
                        if($_GET['page']<$pages-1)
                        {
                            $link="/posts?category=".$page."&searchbox=".$input."&page=".($_GET['page']+1);
                            echo " <a href=".$link."><i class='fa fa-step-forward scale'></i></a> ";
                        }
                            ?>
                        </center>
                        </div>
                </div>
            @else
            <br>
                <p style="text-align:center">No Product Found.</p>
            @endif
            </section>
        </div>
<script>
    var slt3=document.getElementById('jumpEdit');
    function changeEdit($id)
     {
        <?php $link=("/posts?category=".$page."&searchbox=".$input."&page=");?>
        window.location.href="<?php echo $link;?>"+slt3.value;
     }
</script>

@endsection

@section('js')

    $(function(){
        $('#catselectEdit').val({{$page}});
        $('#city').val({{$city}});
    });

    

@endsection

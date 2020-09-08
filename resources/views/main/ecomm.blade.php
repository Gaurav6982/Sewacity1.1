@extends('layouts.app')
@section('styles')
    .login-alert{
        font-weight:500;
        color:red;
    }
    .cart{
    transition:0.5s ease;
    }
    .cart:hover{
    transform:scale(1.05);
}
    .scale{
        transition:0.5s;
    }
    .scale:hover{
        transform:scale(1.25);
    }
    <!--@media only screen and (max-width:1200px)-->
    <!--{-->
    <!--    .top-buttons button{-->
    <!--        font-size:2px;-->
    <!--        height:2px;-->
    <!--    }-->
    <!--}-->
    #catselect,#soslt,#searchinput{
        transition:display 0.5s ease;
    }

@endsection
@section('content')
<?php if(!isset($_GET['page']))
        {
            $_GET['page']=1;
        }
?>
    <div class="container bouter">
        <div class="card overflow-auto">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-4 col-sm-12">
                <h5>Available Products</h5> </div>

                    <div class="col-md-4 col-sm-12">
                        <div class="row radio-group">
                            <div class="col-md-4">
                                <input type="radio"  id="cat"name="choice" value="category">Category
                            </div>
                            <div class="col-md-4">
                                <input type="radio" id="sea"name="choice" value="search">Search
                            </div>
                            <div class="col-md-4">
                                <input type="radio" id="sort"name="choice" value="sort">Sort By
                            </div>
                        </div>
                        <form action="/products" method="get">
                            <div class="row">

                                    <div class="col-md-12 form-group"  id="categoryselect">
                                    <select class="form-control" name="category" id="catselect">
                                        <!-- <option value="-1">Select</option> -->
                                        <option value="0">All</option>
                                        @foreach ($categories as $category)
                                            <option value="{{$category->id}}">{{$category->category_name}}</option>
                                        @endforeach
                                    </select>
                                    </div>


                                    <div class="col-md-12 form-group" id="sortselect">

                                        <select class="form-control"  id="soslt"name="sort">
                                            <option value="latest">Latest</option>
                                            <option value="oldest">Oldest</option>
                                            <option value="hprice">Highest Price</option>
                                            <option value="lprice">Lowest Price</option>
                                        </select>
                                    </div>


                                     <div class="col-md-12 form-group" id="searchinput">
                                    <input type="text"  name="searchbox" placeholder="Enter Some Text" class="form-control">
                                    </div>

                            </div>
                            <div class="row">
                                <div class="col-md-2 offset-md-2">
                                    <button type="submit" class="btn btn-primary">Go</button>
                                </div>
                                <div class="col-md-2 offset-md-2">
                                    <a href="/products?category=0&searchbox=&sort=latest&page=1" class="btn btn-danger pull-right">Reset</a>
                                </div>
                            </div>
                        </form>
                    </div>
                    @guest
                    <div class="col-md-4 col-sm-12">

                        <a href="/products/cart" class="btn btn-primary pull-right ">Go to Cart</a>
                        </div>
                    @else
                    @if(auth()->user()->usertype=='normal')
                        <div class="col-md-4 col-sm-12">

                        <a href="/products/cart" class="btn btn-primary pull-right ">Go to Cart</a>
                        </div>
                    @endif
                    @endguest


                </div>

            </div>
            <div class="card-body">

                @if(count($posts)>0)
                <!-- <div class="row m-md-auto"> -->
                    <?php $count=0?>
                    @foreach ($posts as $post)
                        @if($count%3===0)
                        <div class="row m-md-auto" style="width: 100%;margin: auto;">
                        @endif
                            <!-- <div class=""> -->
                                <div class="card col-md-4">
                                    <div class="outer">
                                  <img class="card-img-top inner" src="/storage/product_images/{{$post->image}}" alt="Product Image" height="340px">
                                  @if($post->valid==0)
                                  <img src="/storage/images/sold.jpg" alt="sold out" class="sold">
                                  @endif
                                  </div>
                                  <div class="card-body">
                                    <h5 class="card-title">{{$post->product_name}} </h5>
                                    <p class="card-text">{{$post->product_quantity}} -
                                    @if($post->discount>0)

                                        {{$post->discount}} % OFF!  <br>
                                        <span style="font-size: 30px">
                                        <span>&#x20B9</span> <strike>{{$post->product_price}}</strike>&nbsp;&nbsp;<i class="fa fa-arrow-right" aria-hidden="true"></i>&nbsp;&nbsp;<span>&#x20B9</span> <strong>{{round($post->product_price*(1.0-$post->discount/100))}}</strong>
                                        </span>
                                    @else
                                        <span style="font-size: 30px">
                                        <span>&#x20B9</span><strong>{{$post->product_price}}</strong>
                                        </span>
                                    @endif</p>
                                    <!-- <p class="card-text"></p> -->
                                    <p class="card-text">{{$post->description}}</p>
                                    @if($post->valid==1)
                                        @guest
                                            <a href="{{url('/products/addItem',$post->id)}}" class="btn btn-primary cart">Add To Cart</a>
                                        @else
                                            @if(auth()->user()->usertype=="normal")
                                                <a href="{{url('/products/addItem',$post->id)}}" class="btn btn-primary">Add To Cart</a>
                                            @endif
                                        @endguest
                                    @endif

                                  </div>
                                </div>
                            <!-- </div> -->
                        @if(($count+1)%3==0)
                        </div>
                        @endif
                        <?php $count+=1?>
                    @endforeach
                <!-- </div> -->
                    <!-- links -->



                </div>
                <div class="row">
                        <div class="col-md-12">
                            <center>
                        <?php
                        if($_GET['page']>1)
                        {
                            $link="/products?category=".$page."&searchbox=".$input."&sort=".$sort."&page=".($_GET['page']-1);
                            echo "<a href=".$link."><i class='fa fa-step-backward scale'></i></a> ";
                        }
                        ?>
                        <!-- // for($i=1;$i<=$pages;$i++)
                        // {
                        //     $link="/products?category=".$page."&searchbox=".$input."&sort=".$sort."&page=".$i;
                        //     echo "<a href=".$link." id=number".$i." class='btn btn-outline-success'>".$i."</a>";
                        // } -->

                        Jump to:
                            <select id="jump" onchange="change(this.id)">
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
                            $link="/products?category=".$page."&searchbox=".$input."&sort=".$sort."&page=".($_GET['page']+1);
                            echo " <a href=".$link."><i class='fa fa-step-forward scale'></i></a> ";
                        }
                            ?>
                        </center>
                        </div>
                </div>
                <br>
                @guest
               <button type="button" class="btn btn-success btn-block" data-container="body"data-toggle="popover" data-placement="bottom" data-content="Please Login or Register To mail Us Your WishList. So That we can arrange Items for You as Soon as Possible.">
                    Interested in Buying?
                    </button>
                @else
                <button type="button" class="btn btn-success btn-block" data-container="body"data-toggle="popover" data-placement="bottom" data-content="Add Some Items to Cart And GO ahead by placing a Request. Have a Good Day!">
                    Interested in Buying?
                    </button>
                @endguest
                    <br>
            @else
                <p>No Product Found.</p>
            @endif

        </div>
    </div>
@endsection

@section('js')

    function load($id)
    {

        $category=document.getElementById($id).value;
        <!-- console.log($category); -->

        <!-- window.location.href('/products/'$category+'/') -->
    }
var slt1=document.getElementById('catselect');
slt1.value={{$page}};

var slt2=document.getElementById('soslt');
slt2.getElementsByTagName('option')[{{$st}}].setAttribute("selected", "selected");

var slt3=document.getElementById('jump');
 function change($id)
 {
    <?php $link=("/products?category=".$page."&searchbox=".$input."&sort=".$sort."&page=");?>
    window.location.href="<?php echo $link;?>"+slt3.value;
    <!--console.log(""+slt3.value);-->
 }
    $(document).ready(function(){
        <!-- $('#categoryselect').css('display','none'); -->
        $('#cat').attr("checked","checked");
         $('#searchinput').css('display','none');
         $('#sortselect').css('display','none');
         <?php $num="#number".$_GET['page']?>
$('{{$num}}').removeClass('btn-outline-success');
         $('{{$num}}').addClass('btn-success');
    });
    $('#cat').click(function() {
        $('#categoryselect').css('display','block');
         $('#searchinput').css('display','none');
         $('#sortselect').css('display','none');
    });
    $('#sea').click(function() {
        $('#searchinput').css('display','block');
         $('#categoryselect').css('display','none');
         $('#sortselect').css('display','none');
    });
    $('#sort').click(function() {
        $('#sortselect').css('display','block');
         $('#categoryselect').css('display','none');
         $('#searchinput').css('display','none');
    });
@endsection

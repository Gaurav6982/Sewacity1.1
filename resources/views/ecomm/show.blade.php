@extends('layouts.app')
@section('styles')
    <style>
        body{
            position: relative !important;
        }
        #search-form{
            height: 65px;
            position: sticky;
            top: 0;
            z-index: 11;
            background-color: black;
            color: white;
            
        }
        ul li{
            word-break: break-all
        }
        .custom-card{
            background-color: white;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            padding: 15px;
            font-size: 20px;
        }
        #show-more{
            font-size: 11px;
        }
        header .wrapper{
            display: flex;
            padding-top: 1%;
            position: relative;
            height: 100%;
            width: 100%;
            justify-content: center;
        }
        #user,
        #more,
        #cart{
            cursor: pointer;
            padding: 4px 20px 0 20px;
            margin: 0 20px;
            /* height: 100%; */
            position: relative;
        }
        #user::after,#more::after{
            content: '';
            position: absolute;
            bottom: -12%;
            z-index: 1;
            left: 45%;
            transform: translateX(-50%);
            width: 10px;height: 10px;
            transform: rotateZ(45deg);
            opacity: 0;
            background-color: grey;
        }
        .submenu{
            padding: 0;
            margin: 0;
            position: absolute;
            /* min-height:100px; */
            width: 200%;
            z-index: 2;
            left: -50%;
            top: 100%;
            background-color: grey;
            opacity: 0;
        }
        .submenu ul{
            margin: 0;
            padding: 0;
        }
        .submenu ul li{
            text-decoration: none;
            display: block;
            padding: 10px;
            border-bottom: 2px solid rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .submenu ul li:hover{
            background-color: darkgrey;
        }
        #user:hover::after,
        #user:hover .submenu,
        #more:hover .submenu,
        #more:hover::after{
            opacity: 1;
        }
        .search {
            width: 100%;
            position: relative;
            display: flex;
        }

        .searchTerm {
        width: 100%;
        border: 3px solid #00B4CC;
        border-right: none;
        padding: 5px;
        height: 100%;
        border-radius: 5px 0 0 5px;
        outline: none;
        color: #9DBFAF;
        }

        .searchTerm:focus{
        color: #00B4CC;
        }

        .searchButton {
        width: 40px;
        height: 36px;
        border: 1px solid #00B4CC;
        background: #00B4CC;
        text-align: center;
        color: #fff;
        border-radius: 0 5px 5px 0;
        cursor: pointer;
        font-size: 20px;
        }

        .search-wrap{
            
        width: 30%;
        margin-right: 20px;
        /* position: absolute; */
        /* top: 50%; */
        /* left: 50%; */
        /* transform: translate(-50%, -50%); */
        }
        
        .show-for-mobile{
            display: none;
        }
        @media only screen and (max-width: 600px) {
            body {
            background-color: lightblue;
            }
            .extra{
                display: none;
            }
            header .wrapper{
                padding-top: 3%;
                padding-left: 2%;
                justify-content:space-between;
            }
            #cart{
                /* cursor: pointer; */
                padding: 5px 0px 0 5px;
                text-align: center;
                margin: 0 5px;
                width: 100px;
                /* height: 100%; */
                /* position: relative; */
            }
            .search-wrap{
                width: 90%;
            }
            .header-section h6{
                font-size: 10px;
            }
            #products-list .sort-section .sort-button,
            #products-list .sort-section .sort-heading{
                font-size: 45%;
            }
            #products-list .items-list .product-item .image img{
                
                height: 50%;
            }
            .specs{
                padding: 10px 0 !important;
                margin: 0;
            }
            .name h4{
                font-weight: 600;
                font-size: 30%;
                text-align: left;
            }
            .show-for-mobile{
                display: unset;
            }
        }



        /* product page */
        main{
            position: relative;

            overflow: unset;
        }
        #image-section{
            width: 50% ;
            height: 90vh;
            position: sticky;
            top: 10vh;
            /* border: 2px solid black; */
        }
        #image-section .d-flex{
            margin: 0;
            padding: 0;
        }
        #description-section{
            /* flex: 60%; */
            min-height: 100vh;
            width: 100%;
            /* border: 2px solid red; */
        }
        .select-div{
            margin: 10px 0;
        }
        .select-div,
        .myFont,
        .select2-results__option{
            font-size: 10px;
        }

        .categories{
            width: 100%;
        }
        #category-list{
            width: 100% ;
        }
        select{
            font-size: 10px;
        }
        #image-section .small-images{
            /* width: 15% !important; */
            height: 100%;
            margin: 0 2px;
        }
        #image-section .small-images .image{
            width: 100%;
            padding: 10px;
            border: 1px solid rgba(0, 0, 0, 0.2);
            height: 80px;
            cursor: pointer;
        }
        #image-section .small-images .image:hover{
            border: 2px solid rgba(0, 0, 0, 0.6);
        }
        #image-section .small-images .image img{
            width: 100%;
            height: 100%;
        }
        #image-section .main-image{
            width: 80%;
            height: 450px;
            max-height: 500px;
            position: relative;
            display: flex;
            overflow: hidden;
            align-items: center;
            /* overflow: hidden; */
            /* border: 2px solid black; */
        }
        #image-section .main-image img{
            display: inline-block;
            /* vertical-align: middle; */
            width: 100%;
            /* height: 100%; */
            /* height: 100%; */
            /* position: absolute;
            top: 50%;
            z-index: -5;
            left: 50%;
            transform: translate(-50%,-50%); */
            /* height: 100%; */
            max-height: 450px;
            padding:20px 20px;
            margin: auto;
            /* object-fit: contain !important; */
        }
        .img-magnifier-container {
            position:relative;
        }
        
        .img-magnifier-glass {
            position: absolute;
            border: 3px solid #000;
            /* border-radius: 50%; */
            cursor: none;
            /*Set the size of the magnifier glass:*/
            width: 100px;
            height: 100px;
        }
        #description-section .product-price .price{
            font-size: 30px;
            font-weight: 600;
        }
        #description-section .product-price .striked,
        #description-section .product-price .discount{
            vertical-align: middle;
            padding: 8px 10px;
        }
        #description-section .offers{
            font-size: 12px;
            padding: 10px 0;
        }
        #description-section .highlights{
            font-size: 14px;
            padding: 10px 0;
        }
        #description-section .specs{
            border: 1px solid rgba(0, 0, 0, 0.1);
            padding: 10px 5px;
            margin: 10px 0;
            font-size: 14px;
        }
        .addToCart{
            width: 100%;
        }
        /* .addToCart:nth-child(1){
            display: none;
        } */
        .w-15{
            width: 15% !important;
        }
        .not_in_desktop{
            display: none;
        }
        .not_in_mobile{
            display: block;
        }
        @media only screen and (max-width:600px)
        {
            
            .addToCart{
                display: block;
            }
            #small_images_div{
                flex-direction: column;
            }
            #image-section .main-image{
                width: 99%;
                height: 300px;
                padding: 0;
                overflow: hidden;
                margin: 0;
              
            }
            #show-image{
                max-width: 100%;
                /* width: 100%; */
            }
            #image-section .main-image img{
                padding-left: 5px !important;
                width: 100%;
            }
            #image-section .main-image img{
                height: 100%;
                width: auto
            }
            .small-images-horizontal .image{
                border: 2px solid black;
            }
            .small-images-horizontal{
                width: 100%;
                height: auto;
            }
            .small-images-horizontal img{
                width: 100%;
                height: 15vh;
                padding:5px 15px
            }
            .not_in_desktop{
                display: block;
            }
            .not_in_mobile{
                display: none;
            }
            #image_and_content{
                flex-direction: column;
            }
            #image-section{
                position: relative;
                width: 100%;
                top:0;
                min-height:50vh;
                height: auto;
            }
            .img-magnifier-glass{
                display: none;
            }
        }
    </style>
@endsection
@section('content')
<input type="hidden" name="authCheck" value="{{\Auth::check()?'true':'false'}}">
<form action="{{route('e_comm_filtered')}}" method="POST" id="search-form">
    {{ csrf_field() }}
<header id="search-bar-ecommerce">
    <div class="wrapper">
        <div class="search-wrap">
            <div class="search">
               <input type="text" class="searchTerm" name="search_text" id="search_text" value="{{$search_text??""}}" placeholder="What are you looking for?">
               <button type="submit" class="searchButton">
                 <i class="fa fa-search"></i>
              </button>
            </div>
         </div>
         <!-- <div class="extra"> -->
            <!-- <div id="user" class="extra">
                Gaurav
                <span><i class="fas fa-caret-down"></i></span>
                <div class="submenu">
                    <ul>
                        <li>User Profile</li>
                        <li>Options</li>
                        <li>Logout</li>
                    </ul>
                </div>    
            </div>
            <div id="more" class="extra">More <span><i class="fas fa-caret-down"></i></span>
                <div class="submenu">
                    <ul>
                        <li>Download App</li>
                        <li>E</li>
                        <li>F</li>
                    </ul>
                </div> 
            </div> -->
        <!-- </div> -->
         <div id="cart">Cart <span><i class="fa fa-shopping-cart"></i></span></div>
    </div>
</header>
</form>
<main>
    <div class="custom-card">
        <div class="container-fluid">
            <div class="d-flex" id="image_and_content" style="position: relative;">
                <div id="image-section" class="custom-card">
                    <div class="d-flex " id="small_images_div">
                        <div class="not_in_mobile w-15">
                        <div class="small-images d-flex flex-column w-100">
                            @foreach ($images as $k=>$image)
                                <?php if($k==4) break;?>
                                <div class="image"><img src="{{asset($image->file_path)}}" alt=""></div>
                            @endforeach
                            {{-- <div class="image"><img src="https://i.ibb.co/3FKhxwz/rog1.jpg" alt=""></div> --}}
                        </div>
                        </div>
                        <div class="main-image img-magnifier-container">
                            <img id="show-image" @isset($images[0]) src="{{asset($images[0]->file_path)}}" @else src="{{asset('assets/not_found.jpg')}}" @endif alt="">
                        </div>
                        <div class="not_in_desktop">
                        <div class="small-images-horizontal d-flex owl-carousel owl-theme mb-4">
                            @foreach ($images as $image)
                            <div class="image item"><img src="{{asset($image->file_path)}}" alt=""></div>
                            @endforeach
                            {{-- <div class="image item"><img src="https://i.ibb.co/3FKhxwz/rog1.jpg" alt=""></div> --}}
                        </div>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div class="addToCart">
                            <button class="btn btn-block btn-warning">Add To Cart</button>
                        </div>
                    </div>
                </div>
                <div id="description-section" class="custom-card">
                    <div class="product-title">
                        {{$product->product_name}}
                    </div>
                    <div class="product-price">
                        <div class="row">
                            <div class="price col-xs-6 col-md-2 text-center">{!! '<span class="m-0">&#8377;</span>'.round($product->selling_price)!!}</div>
                            <div class="striked col-xs-6 col-md-2 text-center"><strike> {!!'<span class="m-0">&#8377;</span>'.$product->price!!}</strike></div>
                            <div class="discount col-xs-12 col-md-2 text-center text-success">{{round($product->discount,2)}}% off</div>
                        </div>
                    </div>
                    <div class="offers">
                        <h6>Available Offers</h6>
                       {!!$product->offers!!}
                        <br>
                    </div>
                    <div class="highlights">
                        <h6>Highlights</h6>
                        <hr>
                        {!!$product->specs!!} <br>


                    </div>
                    <div class="specs">
                        <h5 class="px-2">Specifications</h5>
                        <hr>
                        <div class="px-2">
                            {!!$product->description!!}
                        </div>
                    </div>
                </div>
                <div class="d-flex ">
                    <div class="addToCart not_in_desktop">
                        <button class="btn btn-block btn-warning">Add To Cart</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection

@section('js')
    <script>
            $(document).ready(function(){
                $('.owl-carousel').owlCarousel({
                    loop:false,
                    margin:10,
                    nav:false,
                    responsive:{
                        0:{
                            items:3
                        },
                        800:{
                            items:5
                        },
                        1000:{
                            items:6
                        }
                    }
                })
            $('#image-section .image img').hover(function(){
                $('#image-section .main-image img').attr('src',$(this).attr('src'));
                $('.img-magnifier-glass').remove();
                magnify("show-image", 2);
            });
            $('#image-section .main-image').hover(function(){
                $('.img-magnifier-glass').remove();
                magnify("show-image", 2);
            });
            $('#description-section').hover(function(){
                $('.img-magnifier-glass').remove();
            });

            $('.addToCart button').click(function(){
                if($('#authCheck').val()=="true"){
                    $.ajax({
                        url:"{{url('/')}}"+'/add-to-ecomm-cart',
                        type:'POST',
                        data:{
                            "_token":"{{csrf_token()}}",
                            "product_id":$('#product_id').val()
                        },
                        success:function(data){
                            if(data=="auth"){
                                Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: 'Please Login First!',
                                })
                            }
                            else if(data=="success"){
                                Swal.fire('Added To Cart!', '', 'success')
                                window.location.href="{{url('/e-commerce/cart')}}";
                            }
                        }
                    })
                }
                else{
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Please Login First!',
                        })
                }
               
            })
        });
        function magnify(imgID, zoom) {
            var img, glass, w, h, bw;
            img = document.getElementById(imgID);
            /*create magnifier glass:*/
            glass = document.createElement("DIV");
            glass.setAttribute("class", "img-magnifier-glass");
            /*insert magnifier glass:*/
            img.parentElement.insertBefore(glass, img);
            /*set background properties for the magnifier glass:*/
            glass.style.backgroundImage = "url('" + img.src + "')";
            glass.style.backgroundRepeat = "no-repeat";
            glass.style.backgroundSize = (img.width * zoom) + "px " + (img.height * zoom) + "px";
            bw = 3;
            w = glass.offsetWidth / 2;
            h = glass.offsetHeight / 2;
            /*execute a function when someone moves the magnifier glass over the image:*/
            glass.addEventListener("mousemove", moveMagnifier);
            img.addEventListener("mousemove", moveMagnifier);
            /*and also for touch screens:*/
            glass.addEventListener("touchmove", moveMagnifier);
            img.addEventListener("touchmove", moveMagnifier);
            function moveMagnifier(e) {
            var pos, x, y;
            /*prevent any other actions that may occur when moving over the image*/
            e.preventDefault();
            /*get the cursor's x and y positions:*/
            pos = getCursorPos(e);
            x = pos.x;
            y = pos.y;
            /*prevent the magnifier glass from being positioned outside the image:*/
            if (x > img.width - (w / zoom)) {x = img.width - (w / zoom);}
            if (x < w / zoom) {x = w / zoom;}
            if (y > img.height - (h / zoom)) {y = img.height - (h / zoom);}
            if (y < h / zoom) {y = h / zoom;}
            /*set the position of the magnifier glass:*/
            glass.style.left = (x - w) + "px";
            glass.style.top = (y - h) + "px";
            /*display what the magnifier glass "sees":*/
            glass.style.backgroundPosition = "-" + ((x * zoom) - w + bw) + "px -" + ((y * zoom) - h + bw) + "px";
            }
            function getCursorPos(e) {
            var a, x = 0, y = 0;
            e = e || window.event;
            /*get the x and y positions of the image:*/
            a = img.getBoundingClientRect();
            /*calculate the cursor's x and y coordinates, relative to the image:*/
            x = e.pageX - a.left;
            y = e.pageY - a.top;
            /*consider any page scrolling:*/
            x = x - window.pageXOffset;
            y = y - window.pageYOffset;
            return {x : x, y : y};
            }
        }

        magnify("show-image", 2);
    </script>
@endsection
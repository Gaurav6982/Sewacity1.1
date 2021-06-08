@extends('layouts.app')
@section('styles')
    <style>
        body{
            position: relative !important;
        }
        #search-bar-ecommerce{
            height: 65px;
            position: sticky;
            top: 0px;
            z-index: 11;
            background-color: #DCDCDC;
            box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
            color: white;
            
        }
        .select2-selection__rendered{
            font-size: 10px ;
        }
        .select2-results__option{
            font-size: 10px;
        }
        #filters{
            padding: 10px;
            /* font-size: 8px !important; */
            /* border-right: 2px solid black; */
        }
        .custom-card{
            background-color: white;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            padding: 15px;
            font-size: 20px;
        }
        #filters .custom-card .heading{
            border-bottom: 1px solid rgba(0, 0, 0, 0.2);
            padding-bottom: 0px;
            font-size: 14px;
            display: flex;
            justify-content: space-between;
            font-weight: bolder;
        }
        #filters .custom-card .categories{
            transition: all 1s ease-in;
            display: unset;
            overflow: hidden;

        }
        #filters .custom-card .select-div span.pick{
            letter-spacing: 3px;
            font-size: 8px;
            /* width: 100%; */
            /* padding: 5px; */
        }
        #filters .custom-card ul{
            padding-left: 15px;
        }
        #filters .custom-card ul li{
            list-style: none;
            padding: 4px;
            font-size: 14px;
        }
        #filters .custom-card ul li a{
            text-decoration: none;
            color: black;
            cursor: pointer;
            font-weight: 600;
        }
        #show-more{
            font-size: 11px;
        }

        #products-list{
            padding: 10px;
        }
        #products-list .sort-section{
            display: flex;
            padding: 10px 10px 0 10px;
            border-bottom: 2px solid rgba(0, 0, 0, 0.2);
        }
        #products-list .sort-section .sort-button a{
            cursor: pointer;
            text-decoration: none;
            color: black;
        }
        #products-list .sort-section .sort-button,
        #products-list .sort-section .sort-heading{
            padding: 10px;
            text-align: center;
            font-size: 70%;
            position: relative;
            /* border: 2px solid black; */
        }
        #products-list .sort-section .sort-button::after{
            position: absolute;
            content: '';
            height: 5px;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: orange;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            opacity: 0;
            transition: all 0.3s ease-out;
        }

        #products-list .sort-section .sort-button:hover::after,
        #products-list .sort-section .sort-button.selected::after{
            opacity: 1;
        }
        #products-list .items-list a{
            text-decoration: none;
            color: black;
            cursor: pointer;
        }
        #products-list .items-list .product-item:hover .specs h4{
            color: blue;
        }
        #products-list .items-list .product-item{
            border-bottom: 0.5px solid rgba(0, 0, 0, 0.1);
        }
        #products-list .items-list .product-item .specs{
            padding: 20px;
        }
        #products-list .items-list .product-item .specs .text{
            font-size: 13px;
        }
        /* #products-list .items-list .product-item .specs ul li{
            font-size: 13px;
        } */
        #products-list .items-list .product-item .image{
            padding: 15px 0px;
            width: 100%;
            height: 100%;
            overflow: hidden;
            position: relative;
            /* border: 2px solid black; */
        }
        #products-list .items-list .product-item .image img{
            /* width: 100%; */
            padding: 10px 0;
            max-width: 100%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            max-height: 200px;
        }
        #products-list .items-list .product-item .price-section{
            padding: 10px;
            width:100%;
        }

        #products-list .items-list .product-item .price-section .price{
            font-size: 35px;
            font-weight: 600;
            text-align: center;
        }
        #products-list .items-list .product-item .price-section .original-price{
            padding: 10px;
        }
        #products-list .items-list .product-item .price-section .discount{
            padding-top: 10px;
            color: green;
            font-weight: 600;
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
            color: black;
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
        .price-for-mobile{
            display: none;
        }
        .price-for-mobile span{
            margin: 0 5px;
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
            #filter{
                position: relative;
            }
            #filter i{
                line-height: 40px;
                /* position: absolute; */
                /* top: 50%; */
                /* left: 0; */
                /* transform: translateY(-50%); */
                font-size: 20px
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
            #products-list .items-list .product-item{
                padding: 10px 0;
                min-height: 65px
            }
            #products-list .items-list .product-item .d-flex {
                min-height: 65px
            }
            #products-list .items-list .product-item .col-md-3{
                width: 50%;
            }
            #products-list .items-list .product-item .image img{
                /* padding-top: 5px ; */
                max-height: 100%;
            }
            .specs{
                padding: 10px 0 !important;
                margin: 0;
            }
            .name h4{
                font-weight: 600;
                font-size: 48%;
                text-align: left;
            }
            .price-for-mobile{
                font-size: 9.5px;
                display: block;
            }
            .show-for-mobile{
                display: block;
            }
            #filters .custom-card .heading .text{
                font-size: 18px;
                line-height: 40px;
            }
            #filters .custom-card .select-div{
                display: none;
                /* opacity: 0; */
            }
            #filters .custom-card .categories span{
                font-size: 60%;
                font-weight: 600;
            }
            #products-list .items-list .product-item .col-md-3{
                width: 60%;
                padding-right: 0;
            }
        }
        #cart{
            text-decoration: none;
            cursor: pointer;
        }
    </style>
@endsection
@section('content')
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
         <a href="{{route('ecomm_cart')}}" id="cart">Cart <span><i class="fa fa-shopping-cart"></i></span></a>
    </div>
</header>
<main>
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2">
                <div id="filters">
                    <div class="custom-card">
                        <div class="heading">
                            <div class="text">Filters</div>
                            <div class="show-for-mobile" id="filter" data-open="false">
                                <i class="fa fa-caret-square-o-down" aria-hidden="true"></i>
                            </div>
                        </div>
                        <div  class="select-div">
                            <span class="pick">PICK A SELLER</span><br>
                            <select id="seller_id" name="seller_id" style="width: 100%" class="form-control select">
                                <option value="" selected hidden>-- Select Seller --</option>
                                @foreach ($sellers as $seller)
                                    <option value="{{$seller->id}}" @isset($seller_id) @if($seller->id==$seller_id) selected @endif @endisset>{{$seller->shop_name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="select-div">
                            <span class="pick">PICK A CATEGORY</span><br>
                            <select id="category_id" name="category_id" style="width: 100%" class="form-control select ">
                                <option value="" selected hidden>-- Select Category --</option>
                                @foreach ($categories as $cat)
                                    <option value="{{$cat->id}}"@isset($category_id) @if($cat->id==$category_id) selected @endif @endisset>{{$cat->category_name}}</option>
                                @endforeach
                            </select>
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="col-md-10">
                <div id="products-list">
                    <div class="custom-card">
                        <div class="header-section">
                            {{-- <h6>Showing 1 - 40 of 5,549 results of 'rog'</h6> --}}
                            <div class="sort-section">
                                <span class="sort-heading">Sort By</span>
                                <!-- <div class="sort-buttons"> -->
                                    <input type="hidden" name="price_filter" id="price_filter" value="{{$price_filter??""}}">
                                    <div class="sort-button {{$price_filter??""=='lth'?'selected':''}}" data-filter="lth"><a>Price - low to high</a></div>
                                    <div class="sort-button {{$price_filter??""=='htl'?'selected':''}}" data-filter="htl"><a>Price - high to low</a></div>
                                <!-- </div> -->
                            </div>
                        </div>

                        <div class="items-list">
                            @foreach ($products as $product)
                            <div class="product-item">
                                <a href="{{route('show_product',['product_id'=>$product->id])}}">
                                    <div class="d-flex">
                                        <div class="col-md-3">
                                            <div class="image">
                                                <img @if($product->showcase_image==NULL) src="{{asset('assets/not_found.jpg')}}" @else src="{{asset($product->showcase_image)}}" @endif alt="">
                                            </div>
                                        </div>
                                        <div class="col-md-9">
                                            
                                            <div class="specs d-flex">
                                                <div class="col-sm-8 px-0">
                                                    <div class="name"> <h4>{{$product->product_name}}</h4></div>
                                                    <div class="price-for-mobile">
                                                        @if($product->discount>0)
                                                        <span>
                                                        {!! '<span class="m-0">&#8377;</span>'.round($product->selling_price)!!}
                                                        </span>
                                                        <span class="mx-1"><strike> {!!'<span class="m-0">&#8377;</span>'.$product->price!!}</strike>
                                                        </span>
                                                        <br>
                                                        <span class="text-success mx-1">{{round($product->discount,2)}}% off</span>
                                                        @else 
                                                        <span>&#8377;</span> {{round($product->price)}} 
                                                        @endif
                                                    </div>
                                                    <div class="text extra">
                                                        {!!$product->specs!!}
                                                    </div>

                                                    
                                                </div>
                                                <div class="col-sm-4 px-0 extra">
                                                    <div class="price-section">
                                                        @if($product->discount>0)
                                                        <div class="price"><span>&#8377;</span> {{round($product->price-$product->price*($product->discount/100))}}</div>
                                                        <div class="d-flex justify-content-center">
                                                            <div class="original-price"><strike><span>&#8377;</span> {{$product->price}}</strike></div>

                                                            <br>
                                                            <div class="discount">{{round($product->discount,2)}}% off</div>
                                                        </div>
                                                        @else 
                                                        <div class="price"><span>&#8377;</span> {{round($product->price,2)}}</div>
                                                        @endif
                                                        
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </a>
                            </div> <!--Item End-->
                            @endforeach
                            
                        </div> <!--List End-->
                    </div>
                </div>
            </div> <!--Item Detials End-->
        </div>
    </div>
</main>
</form>
@endsection

@section('js')
    <script>
        $(document).ready(function(){
        $(".owl-carousel").owlCarousel({
            items:3,
            loop:false,
            margin:10,
            // merge:true,
            // responsive:{
            //     678:{
            //         mergeFit:true
            //     },
            //     1000:{
            //         mergeFit:false
            //     }
            // }
        });
        // $('select').selectize({
        //     sortField: 'text'
        // });
        
    });
    $(document).ready(function(){
        $("option").addClass("myFont")
        $('select').select2({
            theme: 'classic',
            // dropdownCssClass: "myFont"
        });
        
        $('#show-more').click(function(e){
            e.preventDefault();
            $(this).parent().find("li.more").toggleClass('d-none');
            if($(this).data("open")+""=="false"){
                $(this).html("show less categories");
                $(this).data("open","true");
            }
            else{
                $(this).html("show more categories");
                
                $(this).data("open","false");
            }
        });

        $('#user,#more').hover(function(){
            $(this).find("span").html('<i class="fas fa-caret-up"></i>')
        },function(){
            $(this).find("span").html('<i class="fas fa-caret-down"></i>')
        });

        $('#filter').click(function(){
            if($(this).data("open")+""=="false"){
                $(this).html('<i class="fa fa-caret-square-o-up" aria-hidden="true"></i>');
                $('.select-div').css('display','unset');
                $(this).data("open","true");
            }
            else{            
                $(this).html('<i class="fa fa-caret-square-o-down" aria-hidden="true"></i>');
                $('.select-div').css('display','none');
                $(this).data("open","false");
            }
            
        });
        $('.select').on("change",function(){
            $('#search-form').submit();
        })
        $('.sort-button').click(function(){
            $('#price_filter').val($(this).data("filter"))
            $('#search-form').submit();
        })
    });
    </script>
@endsection
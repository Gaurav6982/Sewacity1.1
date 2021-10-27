<?php

use App\Http\Controllers\cartDataDBController;
use App\Http\Controllers\OrderhistoryController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OrderSummaryController;
use App\OrderHistory;

// use Auth;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// Route::get('/orderSummary', function () {
//     return view('orderSummary');
// });
Route::get('/orderSummary',[OrderSummaryController::class,'show']);
Route::get('/', function () {
    return view('main.choose');
});
Route::get('pathkind-labs',function(){
    try{
        return File::get(public_path('pathkindlabs/index4.html'));
    }
    catch(Exception $e){
        return back()->with('error','Page Not Found!');
    }
});
Route::get('pathkind-labs-test',function(){
    try{
        return File::get(public_path('pathkindlabstest/book.html'));
    }
    catch(Exception $e){
        return back()->with('error','Page Not Found!');
    }
});
Route::get('/',"Main@index");
Route::get('/about',"Main@about");
Route::post('setSession','Main@setSession');
Route::post('gettSession','Main@getSession');
Auth::routes();
Route::get('/cleareverything-advance', function () {
    $clearcache = Artisan::call('cache:clear');
    echo "Cache cleared<br>";

    $clearview = Artisan::call('view:clear');
    echo "View cleared<br>";

    $clearconfig = Artisan::call('config:cache');
    echo "Config cleared<br>";

});
//User E-Comm
Route::get('/e-commerce','UserEcommController@index')->name('e_comm');
Route::post('/e-commerce','UserEcommController@filtered')->name('e_comm_filtered');
Route::get('/e-commerce/product/{product_id}','UserEcommController@show')->name('show_product');
Route::get('/get-seller/{id}','UserEcommController@getSeller')->name('get_seller');


Route::group(['middleware'=>['admin','auth'],'prefix'=>'admin'],function(){
    Route::resource('food','FoodController');
    Route::get('/city','Admin\AdminController@manage_cities');
    Route::resource('food/item','FoodItemController');
    //coupons Route
    Route::get('/coupons','CouponController@index')->name('coupons');
    Route::get('/coupons/create','CouponController@create')->name('create_coupon');
    Route::get('/coupons/edit/{id}','CouponController@edit')->name('edit_coupon');
    Route::post('/coupons/store','CouponController@store')->name('store_coupon');
    Route::put('/coupons/update/{id}','CouponController@update')->name('update_coupon');
    Route::delete('/coupons/delete/{id}','CouponController@destroy')->name('delete_coupon');

    //Sellers Routes
    Route::get('/ecomm-sellers','AdminECommController@sellers')->name('sellers');
    Route::get('/ecomm-sellers/create','AdminECommController@createSeller')->name('create_seller');
    Route::get('/ecomm-sellers/edit/{id}','AdminECommController@editSeller')->name('edit_seller');
    Route::post('/ecomm-sellers/store','AdminECommController@storeSeller')->name('store_seller');
    Route::put('/ecomm-sellers/update/{id}','AdminECommController@updateSeller')->name('update_seller');
    Route::delete('/ecomm-sellers/delete/{id}','AdminECommController@deleteSeller')->name('delete_seller');
    
    //products
    Route::get('/ecomm-products/{id}','AdminECommController@showProducts')->name('show_products');
    Route::get('/ecomm-products/{seller_id}/create','AdminECommController@createProduct')->name('create_product');
    Route::get('/ecomm-products/edit/{id}','AdminECommController@editProduct')->name('edit_product');
    Route::post('/ecomm-products/{seller_id}/store','AdminECommController@storeProduct')->name('store_product');
    Route::put('/ecomm-products/update/{id}','AdminECommController@updateProduct')->name('update_product');
    Route::delete('/ecomm-products/delete/{id}','AdminECommController@deleteProduct')->name('delete_product');
});
Route::group(['middleware'=>['special','auth'],'prefix'=>'admin'],function(){
    Route::resource('sliders','SlidersController');
    Route::get('delivery-status','Main@deliveryStatus');
    Route::post('set-delivery-status','Main@setDeliveryStatus');
    Route::post('sliders/addSlide/{id}','SlidersController@addSlide');
    Route::post('sliders/{slider_id}/editSlide/{slide_id}','SlidersController@editSlide');
    Route::delete('sliders/{slider_id}/delete/{slide_id}','SlidersController@deleteSlide');
});
Route::group(['middleware'=>['admin','auth']],function(){
    Route::get('/dashboard',function(){
        return view('admin.dashboard');
    })->name('admin');
    // Route::resource('posts', 'PostController');
    Route::get('/users','Main@users');
    
    Route::post('/manage-category','Admin\AdminController@manage_categories');
    Route::post('/add-category','Admin\AdminController@add_category');
    Route::post('/edit-category','Admin\AdminController@edit_category');
    Route::post('/add-city','Admin\AdminController@add_city');
    Route::post('/edit-city','Admin\AdminController@edit_city');
    Route::post('/delete-category','Admin\AdminController@delete_category');
});
Route::group(['middleware'=>['auth']],function(){
	// Route::get('/products/addItem/{pid}','CartController@addItem');
	// Route::get('/products/cart','CartController@show');
	// Route::get('/products/cart/delete/{pid}','CartController@remove');
    // Route::post('/products/send','CartController@send');
    // Route::put('/products/update/{id}','CartController@update');
    Route::get('/profile','ProfileController@index');
    Route::put('/profile/update','ProfileController@update');
    Route::get('/safari','SafariController@safari');
    Route::post('/safari/book','SafariController@safariBook');
    Route::get('/e-commerce/cart','UserEcommController@cart')->name('ecomm_cart');
    Route::post('/add-to-ecomm-cart','UserEcommController@addToCart')->name('add_to_cart');
    Route::delete('/remove-from-ecomm-cart','UserEcommController@removeFromCart')->name('remove_from_cart');
    Route::post('/place-ecomm-request','UserEcommController@placeEcommRequest')->name('place_ecomm_request');
    Route::get('/orderhistory',[OrderhistoryController::class,'show']);
    // /////////////////////////////////////////////////////////////////////////////////////////////////

    // Route::post('/place-ecomm-request',[cartDataDBController::class, 'create'])->name('create');

    
    // /////////////////////////////////////////////////////////////////////////////////////////////////
});

// Route::get('/products','Main@ecomm');
Route::get('/tieup',function(){
    return view('main.tieup');
});
Route::get('/feedback','Main@feedback');
Route::post('/feedback/submit','Main@feedSubmit');
Route::get('/manage-feedbacks','SpecialAccessController@manageFeed');
Route::get('/approve/{id}','SpecialAccessController@approveFeed');
Route::post('/delete-feedback','SpecialAccessController@delete');
Route::get('/feedback/{id}','SpecialAccessController@show');
Route::get('/sanmomo',function(){
    return view('main.sanmomo');
});
Route::get('/privacy',function(){
    return view('others.privacy');
});
Route::get('/foodie','UserFoodController@index');
Route::post('/foodie/{res_id}/filter','UserFoodController@filterInRes');
Route::get('/foodie/cart','UserFoodController@show_cart')->middleware('auth');
Route::post('/foodie/sendMail','UserFoodController@sendMail')->middleware('auth');
Route::delete('/foodie/delete/{id}','UserFoodController@deleteitem')->middleware('auth');
Route::post('/foodie/deleteAll','UserFoodController@del_all')->middleware('auth');
Route::get('/foodie/{id}','UserFoodController@show');
Route::post('/foodie/addToCart','UserFoodController@addToCart')->middleware('auth');
Route::post('/foodie/subFromCart','UserFoodController@SubQuan')->middleware('auth');
Route::post('/foodie/addQuan','UserFoodController@AddQuan')->middleware('auth');

// Auth::routes();
Route::get('/terms-and-conditions',function(){
   return view('others.terms');
});
Route::get('/home', 'HomeController@index')->name('home');

//hotel route
Route::get('/shelters','HotelController@index');
Route::get('/shelters/rooms/{id}','HotelController@rooms');
Route::get('/shelters/rooms/{id}/form','HotelController@show_form');
Route::post('/shelters/rooms/{id}/submit','HotelController@submit');

Route::get('/blogs',function(){
    return view('blogs');
});

//RazorPay Routes
Route::group(['middleware'=>'auth'],function(){
    Route::get('payment-success','PayController@success');
    Route::post('payment','PayController@payment');
    Route::post('pay','PayController@pay');
    Route::post('get-amount','PayController@get_amount');
    Route::post('set-success','PayController@set_success');
    Route::post('set-fail','PayController@set_fail');
    Route::get('mark-order-placed-read','UserFoodController@forgetOrderPlaced')->name('mark_order_placed_read');
});
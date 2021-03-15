<?php

use Illuminate\Support\Facades\Route;
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

// Route::get('/', function () {
//     return view('main.choose');
// });
Route::get('/',"Main@index");
Route::get('/about',"Main@about");
Route::post('setSession','Main@setSession');
Route::post('gettSession','Main@getSession');
Auth::routes();
Route::group(['middleware'=>['admin','auth'],'prefix'=>'admin'],function(){
    Route::resource('food','FoodController');
    Route::get('/city','Admin\AdminController@manage_cities');
    Route::resource('food/item','FoodItemController');
});
Route::group(['middleware'=>['special','auth'],'prefix'=>'admin'],function(){
    Route::resource('sliders','SlidersController');
    Route::post('sliders/addSlide/{id}','SlidersController@addSlide');
});
Route::group(['middleware'=>['admin','auth']],function(){
    Route::get('/dashboard',function(){
        return view('admin.dashboard');
    });
    Route::resource('posts', 'PostController');
    Route::get('/users','Main@users');
    
    Route::post('/manage-category','Admin\AdminController@manage_categories');
    Route::post('/add-category','Admin\AdminController@add_category');
    Route::post('/edit-category','Admin\AdminController@edit_category');
    Route::post('/add-city','Admin\AdminController@add_city');
    Route::post('/edit-city','Admin\AdminController@edit_city');
    Route::post('/delete-category','Admin\AdminController@delete_category');
});
Route::group(['middleware'=>['auth']],function(){
	Route::get('/products/addItem/{pid}','CartController@addItem');
	Route::get('/products/cart','CartController@show');
	Route::get('/products/cart/delete/{pid}','CartController@remove');
    Route::post('/products/send','CartController@send');
    Route::put('/products/update/{id}','CartController@update');
    Route::get('/profile','ProfileController@index');
    Route::put('/profile/update','ProfileController@update');
    Route::get('/safari','SafariController@safari');
    Route::post('/safari/book','SafariController@safariBook');
});

Route::get('/products','Main@ecomm');
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
    Route::post('set-amount','PayController@set_amount');
    Route::post('set-success','PayController@set_success');
    Route::post('set-fail','PayController@set_fail');
});
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

Route::get('/', function () {
    return view('main.choose');
});
Route::get('/fbg',"Main@index");
Route::get('/about',"Main@about");

Auth::routes();
Route::group(['middleware'=>['admin','auth'],'prefix'=>'admin'],function(){
    Route::resource('food','FoodController');
    Route::resource('food/item','FoodItemController');
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
Route::get('/patna/products','PatnaController@ecomm');
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


//PATNA ROUTES
Route::get('/patna','PatnaController@index');
Route::get('/patna/tieup',function(){
    return view('patna.main.tieup');
});
Route::get('/patna/food','PatnaController@food');
Route::get('/patna/{type}/{id}','Patna\FoodController@add_to_cart');
Route::get('/patna/food/cart','Patna\FoodController@view_cart');
Route::get('/patna/food/remove/{id}','Patna\FoodController@remove_from_cart');
Route::post('/patna/send','Patna\FoodController@send_request');
Route::get('/patna/profile','PatnaController@ShowProfile');


Route::group(['middleware'=>['admin','auth']],function(){
    Route::get('/patna-dashboard','PatnaController@admin');
    Route::resource('patna-products', 'Patna\PostController1');
    //Route::get('/users','Main@users');
});


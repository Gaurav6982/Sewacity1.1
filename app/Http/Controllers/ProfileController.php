<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\City;
class ProfileController extends Controller
{
// 	public function __construct()
//      {
//          $this->middleware(['auth'=>'verified']);
//      }
    public function index(){
		$user=Auth::user();
		$cities=City::where('is_active',1)->orderBy('order')->get();
        return view('profile.index')->with('user',$user)->with('cities',$cities);
    }
    public function update(Request $request){
    	$this->validate($request,[
    		'name'=>'required',
    		'email'=>'string|email|max:255',
    	]);

    	$user=Auth::user();
    	$user->name=$request->input('name');
    	$user->email=$request->input('email');
    	$user->address=$request->input('address');
    	$user->city_id=$request->input('city');
    	$user->update();
    	return back()->with('success','Profile Updated');
    }
}

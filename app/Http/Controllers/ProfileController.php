<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
class ProfileController extends Controller
{
// 	public function __construct()
//      {
//          $this->middleware(['auth'=>'verified']);
//      }
    public function index(){
    	$user=Auth::user();
        return view('profile.index')->with('user',$user);
    }
    public function update(Request $request){
    	$this->validate($request,[
    		'name'=>'required',
    		'email'=>'required|string|email|max:255',
    	]);

    	$user=Auth::user();
    	$user->name=$request->input('name');
    	$user->email=$request->input('email');
    	$user->update();
    	return back()->with('success','Profile Updated');
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserFoodController extends Controller
{
    public function index(){
        return view('food.index');
    }
    public function show($id){
        return view('food.show')->with('id',$id);
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Categories;
use App\Posts;
use App\City;

class AdminController extends Controller
{
    public function manage_categories(Request $request){
        $id=$request->input('city_id');
        $categories=Categories::where('city_id','=',$id)->get();
        return view('admin.manage_category')->with('id',$id)->with('categories',$categories);
    }
    
    public function add_category(Request $request)
    {
        $city_id=$request->input('city_id');
        //return $city_id;
        $name=$request->input('name');
        $order=$request->input('order');
        $category=Categories::where('category_name','=',$name)->where('city_id',$city_id)->first();
        if($category)
        {
            return "exist";
        }
        $category=new Categories;
        $category->category_name=$name;
        $category->order=$order;
        $category->city_id=$city_id;
        $categories=Categories::where('city_id','=',$city_id)->get();
        if($category->save())
        return "save";
        return "fail";
        //return back()->with('id',$city_id)->with('categories',$categories)->with('success','Category Added Successfully!');
        //else
        //return back()->with('id',$city_id)->with('categories',$categories)->with('error','There Might be Some Error!!');

    }
    public function edit_category(Request $request){
        $category=Categories::find($request->input('category_id'));
        $name=$request->input('name');
        $order=$request->input('order');
        //return $order;
        $check_exist=Categories::where('category_name','=',$name)->where('order','=',$order)->first();
        //return $check_exist;
        if($check_exist)
        {
            return "exist";
        }
        $category->category_name=$name;
        $category->order=$order;
        if($category->save())
        return "save";
        return "fail";

    }
    public function delete_category(Request $request){
        $id=$request->input("id");
        $category=Categories::find($id);
        $posts=Posts::where('category_id',$id)->get();
        foreach($posts as $post)
            $post->delete();
        if($category->delete())
        return "success";
        return "fail";
    }
    public function manage_cities(){
        $cities=City::all();
       return view('admin.cities')->with('cities',$cities);
    }

    public function add_city(Request $request)
    {
        $name=$request->input('name');
        $status=$request->input('status');
        $category=City::where('city_name',$name)->first();
        if($category)
        {
            return "exist";
        }
        $city=new City;
        $city->city_name=$name;
        $city->is_active=$status;
        if($city->save())
        return response()->json(["save"],200);
        return response()->json(["fail"],400);
        //return back()->with('id',$city_id)->with('categories',$categories)->with('success','Category Added Successfully!');
        //else
        //return back()->with('id',$city_id)->with('categories',$categories)->with('error','There Might be Some Error!!');

    }
    public function edit_city(Request $request){
        
        $city=City::find($request->input('city_id'));
        $name=$request->input('name');
        $status=$request->input('status');
        $check_exist=City::where('city_name','=',$name)->where('is_active',$status)->first();
        if($check_exist)
        {
            return "exist";
        }
        $city->city_name=$name;
        $city->is_active=$status;
        if($city->save())
        return response()->json(["save"],200);
        return response()->json(["fail"],400);

    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Posts;
use App\User;
use App\Feedback;
use Auth;
use App\Categories;
class Main extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware(['auth'=>'verified']);
    // }

    public function index(){
        // $posts=POsts::all();
        $feeds=Feedback::where('is_approved','=','1')->get();
        return view('main.index')->with('feeds',$feeds);
    }


    public function ecomm(){
        if(Auth::check())
        $city=Auth::user()->city_id;
        else
        $city=$_GET['city']??1;
        if(!isset($_GET['searchbox']) || !isset($_GET['category']) || !isset($_GET['sort']))
            return redirect('/products?category=0&searchbox=&sort=latest&page=1')->with('error',"Please Don't Mess With Url's");

        $input=$_GET['searchbox'];
        $category=$_GET['category'];
        $sort=$_GET['sort'];

        // sort param
        if($sort=='latest')
        {
            $st=0;
            $para1='created_at';
            $para2='desc';
        }
        else if($sort=='oldest')
        {
            $st=1;
            $para1='created_at';
            $para2='asc';
        }
        else if($sort=='hprice')
        {
            $st=2;
            $para1='product_price';
            $para2='desc';
        }
        else if($sort=='lprice')
        {
            $st=3;
            $para1='product_price';
            $para2='asc';
        }
        if($category==0)
        {
            if($input!='')
            {

                $posts=Posts::where('product_name','like','%'.$input.'%')->where('city_id','=',$city)->orderBy($para1,$para2)->paginate(6);
                $posts_temp=Posts::where('product_name','like','%'.$input.'%')->where('city_id','=',$city)->get();
            $total=count($posts_temp);
            }
            else
                {
                    $i1='product_name';
                    $i2='asc';
                    $posts=Posts::where('city_id','=',$city)->orderBy($i1,$i2)->paginate(6);
                    $total=count(Posts::where('city_id','=',$city)->get());
                }

        }
        else if($category>0)
        {
            if($input!='')
            {
                $posts=Posts::where('product_name','like','%'.$input.'%','and')->where('category_id','=',$category)->where('city_id','=',$city)->orderBy($para1,$para2)->paginate(6);
                $posts_temp=Posts::where('product_name','like','%'.$input.'%','and')->where('category_id','=',$category)->where('city_id','=',$city)->get();
                $total=count($posts_temp);
            }
            else
            {

                // if(Posts::where('category','=',$category)!='')
                // $total=count();

                // else
                    // $total=0;
                 $posts=Posts::where('category_id','=',$category)->where('city_id','=',$city)->orderBy($para1,$para2)->paginate(6);
                 $posts_temp=Posts::where('category_id','=',$category)->where('city_id','=',$city)->get();
                 $total= count($posts_temp);
            }
        }

        $categories=Categories::where('city_id',$city)->orderBy('order','asc')->get();
        if($total%6==0)
        $pages=$total/6;
        else
        $pages=$total/6+1;
        $data=array(
            'posts'=>$posts,
            'page'=>$category,
            'input'=>$input,
            'sort'=>$sort,
            'pages'=>$pages,
            'categories'=>$categories,
            'st'=>$st
        );
        return view('main.ecomm')->with($data);
    }
    public function users(){
        $users=User::where('usertype','normal')->paginate(10);
        return view('admin.allusers')->with('users',$users);
    }
    public function food(){

        return view('main.food');
    }
    public function cake(){

        return view('main.cake');
    }
     public function pizza(){

        return view('main.pizza');
    }
      public function junction(){

        return view('main.junction');
    }
    public function feedback(){
        return view('others.feedback');
    }
    public function feedSubmit(Request $request){
        $request->validate([
            'name'=>'required',
            'comments'=>'required',
            'email'=>'required|email',
            'experience'=>'required'
        ]);
        $fb=new Feedback;
        $fb->name=$request->input('name');
        $fb->comments=$request->input('comments');
        $fb->email=$request->input('email');
        $fb->experience=$request->input('experience');
        if($fb->save())
        {
            if(Auth::check())
            {
                if(Auth::user()->city_id==1)
                return redirect('/fbg')->with('success','Posted your feedback successfully!');
                else
                return redirect('/patna')->with('success','Posted your feedback successfully!');
            }
            return back()->with('success','Posted your feedback successfully!');
        }
        return back()->with('error',' Sorry there was an error sending your form.');
    }

    public function about(){
        return view('main.about.index');
    }
}

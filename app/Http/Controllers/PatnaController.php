<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PatnaFood;
use Auth;
use App\Posts;
class PatnaController extends Controller
{
    public function index(){
        return view('patna.main.index');
    }
    public function food(){
        $cakes=PatnaFood::where('food_type','=','Cake')->get();
        $pastries=PatnaFood::where('food_type','=','Pastry')->get();
        $data=[
            'cakes'=>$cakes,
            'pastries'=>$pastries,
        ];
        return view('patna.main.food')->with($data);
    }
    public function ShowProfile(){
        if(!Auth::check())
        return redirect('/login');
    	$user=Auth::user();
        if($user->city_id==1)
        return back()->with('error','This is For Patna Users');
        return view('patna.profile.index')->with('user',$user);
    }
    public function admin(){
        return view('patna.admin.dashboard');
    }
    public function ecomm(){
        if(!isset($_GET['searchbox']) || !isset($_GET['category']) || !isset($_GET['sort']))
            return redirect('/products?category=0&searchbox=&sort=latest&page=1')->with('error',"Please Don't Mess With Url's");
        // if(!isset($_GET['page']))
        // {
        //     return redirect('/products?category=0&searchbox=&sort=latest&page=1')->with('error','Something went wrong');
        // }
        $input=$_GET['searchbox'];
        $page=$_GET['category'];
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
        if($page==0)
        {
            if($input!='')
            {

                $posts=Posts::where('product_name','like','%'.$input.'%')->where('city_id','=',2)->orderBy($para1,$para2)->paginate(6);
                $posts_temp=Posts::where('product_name','like','%'.$input.'%')->where('city_id','=',2)->get();
            $total=count($posts_temp);
            }
            else
                {
                    $i1='product_name';
                    $i2='asc';
                    $posts=Posts::where('city_id','=',2)->orderBy($i1,$i2)->paginate(6);
                    $total=count(Posts::where('city_id','=',2)->get());
                }

        }
        else if($page==1)
            $category='Elecapp';
        else if($page==2)
            $category='Essentials';
        else if($page==3)
            $category='Footwear';
        else if($page==4)
            $category='Books';
        else if($page==5)
            $category='furniture';
        else if($page==6)
            $category='kitchen';
        else if($page==7)
            $category='Grocery';
        else if($page==8)
            $category='Cosmetic';
        else if($page==9)
            $category='Gift';
        else if($page==10)
            $category='Elecpart';
            else if($page==11)
            $category='Season';
            else if($page==12)
            $category='Festival';
            else if($page==14)
            $category='Other';
            else if($page==13)
            $category='medicine';
        else
            return back()->with('error','Something Went Wrong! Please try Again.');
        if($page>0)
        {
            if($input!='')
            {
                $posts=Posts::where('product_name','like','%'.$input.'%','and')->where('category','=',$category)->where('city_id','=',2)->orderBy($para1,$para2)->paginate(6);
                $posts_temp=Posts::where('product_name','like','%'.$input.'%','and')->where('category','=',$category)->where('city_id','=',2)->get();
                $total=count($posts_temp);
            }
            else
            {

                // if(Posts::where('category','=',$category)!='')
                // $total=count();

                // else
                    // $total=0;
                 $posts=Posts::where('category','=',$category)->where('city_id','=',2)->orderBy($para1,$para2)->paginate(6);
                 $posts_temp=Posts::where('category','=',$category)->where('city_id','=',2)->get();
                 $total= count($posts_temp);
            }
        }
        if($total%6==0)
        $pages=$total/6;
        else
        $pages=$total/6+1;
        $data=array(
            'posts'=>$posts,
            'page'=>$page,
            'input'=>$input,
            'sort'=>$sort,
            'pages'=>$pages,
            'st'=>$st
        );
        return view('patna.main.ecomm')->with($data);
    }
}

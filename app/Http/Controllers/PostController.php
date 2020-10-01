<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Posts;
use App\CartItem;
use Auth;
use App\Categories;
class PostController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware(['auth'=>'verified']);
    // }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return $_GET['city']; 
        $city=$_GET['city']??1;
        if( !isset($_GET['searchbox']) || !isset($_GET['category']) )
            return redirect('/posts?category=0&searchbox=&page=1')->with('error',"Please Don't Mess With Url's");
        // if(!isset($_GET['page']))
        // {
        //     return redirect('/products?category=0&searchbox=&sort=latest&page=1')->with('error','Something went wrong');
        // }
        $input=$_GET['searchbox'];
        $category=$_GET['category'];

        $para1='product_name';
        $para2='asc';
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
                    $posts=Posts::where('city_id','=',$city)->orderBy($para1,$para2)->paginate(6);
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
        if($total%6==0)
        $pages=$total/6;
        else
        $pages=$total/6+1;
        $data=array(
            'posts'=>$posts,
            'page'=>$category,
            'input'=>$input,
            'pages'=>$pages,

        );
        return view('admin.index')->with($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories=Categories::where('city_id',Auth::user()->city_id)->get();
        return view('admin.create')->with('categories',$categories);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $this->validate($request,[
            'name' => 'required|string',
            'price' => 'required|min:0',
            'quantity'=>'required',
            'description'=>'required',
            'category'=>'required',
            'discount'=>'numeric|between:0,99.99',
            'product_image'=>'nullable'
        ]);
        if($request->input('price')<0)
        return back()->with('error','Price Cannot Be Negative');
        $size=fileSize($request->file('product_image'));
        // return redirect('/posts/create')->with('error',$size);
        if($size>12437063)
        return redirect('/posts/create')->with('error','Size Greater Than 10MB');
        if($request->hasFile('product_image'))
            {
                $file=$request->file('product_image')->getClientOriginalName();

                $name=pathinfo($file,PATHINFO_FILENAME);

                $extention=$request->file('product_image')->getClientOriginalExtension();

                $fileName=date("d-m-y")."_".time().".".$extention;

                $path=$request->file('product_image')->storeAs('public/product_images',$fileName);
            }
            else{
                $fileName="noimage.jpg";
            }
            $post=new Posts;
            $post->product_name=$request->input('name');
            $post->product_price=$request->input('price');
            $post->product_quantity=$request->input('quantity');
            $post->description=$request->input('description');
            $post->category_id=$request->input('category');
            $post->discount=$request->input('discount');
            $post->user_id=auth()->id();
            $post->city_id=Auth::user()->city_id;
            $post->image=$fileName;
            $post->save();

            return redirect('/posts/create')->with('success','Product Added!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post=Posts::find($id);
        $categories=Categories::where('city_id',Auth::user()->city_id)->get();
        return view('admin.edit')->with('post',$post)->with('categories',$categories);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'name' => 'required|string',
            'price' => 'required|min:0',
            'quantity'=>'required',
            'description'=>'required',
            'category'=>'required',
            'discount'=>'numeric|between:0,99.99',
            'valid'=>'required',
            'product_image'=>'nullable'
        ]);
        $post=Posts::find($id);
        if($request->input('price')<0)
        return back()->with('error','Price Cannot Be Negative');
        $size=fileSize($request->file('product_image'));
        // return redirect('/posts/create')->with('error',$size);
        if($size>12437063)
        return redirect('/posts/create')->with('error','Size Greater Than 10MB');



        if($request->hasFile('product_image'))
            {
                Storage::delete('public/product_images/'.$post->image);
                $file=$request->file('product_image')->getClientOriginalName();

                $name=pathinfo($file,PATHINFO_FILENAME);

                $extention=$request->file('product_image')->getClientOriginalExtension();

                $fileName=$name."_".time().".".$extention;

                $path=$request->file('product_image')->storeAs('public/product_images',$fileName);
                $post->image=$fileName;
            }

            $post->product_name=$request->input('name');
            $post->product_price=$request->input('price');
            $post->description=$request->input('description');
            $post->category_id=$request->input('category');
            $post->discount=$request->input('discount');
            $post->valid=$request->input('valid');
            $post->product_quantity=$request->input('quantity');
            // $post->user_id=auth()->id();

            $post->save();

            return redirect('/posts?category=0&searchbox=&page=1')->with('success','Product Updated!!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post=Posts::find($id);
        // return $forms;
        if($post->image != 'noimage.jpg')
        {
            Storage::delete('public/product_images/'.$post->image);
        }
        $cartitems=CartItem::where('posts_id',$id)->get();
        foreach($cartitems as $cartitem)
        $cartitem->delete();
        $post->delete();
        return redirect('/posts?category=0&searchbox=')->with('success','Product Removed');
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\EcommSeller;
use App\EcommProduct;
use Auth;
use App\Categories;
use Storage;
use File;
use App\EcommProductImage;
use Illuminate\Support\Facades\Validator;
class AdminECommController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function sellers()
    {
        $sellers=EcommSeller::where('city_id',Auth::user()->city_id)->get();
        return view('admin.ecomm.sellers',compact('sellers'));
    }

    public function editSeller($id){
        $seller=EcommSeller::find($id);
        return view('admin.ecomm.create_sellers',compact('seller'));
    }

    public function createSeller(){
        return view('admin.ecomm.create_sellers');
    }

    public function storeSeller(Request $request){
        $validator=Validator::make($request->all(),[
            'shop_name'=>'required',
            'seller_name'=>'required',
            'delivery_charge'=>'required|numeric',
            'status'=>'required',
            'shop_image'=>'sometimes|nullable|mimes:jpg,jpeg,png,webp'
        ]);
        if($validator->fails()){
            return back()->withErrors($validator);
        }
        $path="/storage/images/slogo.png";
        if($request->has('shop_image')){
            $file=$request->file('shop_image');
            $fileName=$request->shop_name."_".$request->seller_name.".".$file->getClientOriginalExtension();
            $file->move(storage_path('/app/public/seller_images'), $fileName);
            $path='/storage/seller_images/'.$fileName;
            // dd(storage_path('app/public/seller_images'));
        }
        $seller=new EcommSeller;
        $seller->shop_name=$request->shop_name;
        $seller->seller_name=$request->seller_name;
        $seller->is_active=$request->status;
        $seller->delivery_charge=$request->delivery_charge;
        $seller->shop_image=$path;
        $seller->city_id=Auth::user()->city_id;
        if($seller->save())
        {
            // $sellers=EcommSeller::where('city_id',Auth::user()->city_id)->get();
            return back()->with('success','Seller Added!');
        }
        return back()->with('error','Something Went Wrong!');
    }

    public function updateSeller(Request $request,$id){
        $validator=Validator::make($request->all(),[
            'shop_name'=>'required',
            'seller_name'=>'required',
            'delivery_charge'=>'required|numeric',
            'status'=>'required',
            'shop_image'=>'sometimes|nullable|mimes:jpg,jpeg,png,webp'
        ]);
        if($validator->fails()){
            return back()->withErrors($validator);
        }
        
        $seller=EcommSeller::find($id);
        $seller->shop_name=$request->shop_name;
        $seller->seller_name=$request->seller_name;
        $seller->is_active=$request->status;
        if($seller->is_active==0){
            foreach($seller->products as $product){
                $product->is_active=false;
                $product->save();
                $carts=CartItem::where('product_id',$product->id)->where('is_active','1')->get();
                foreach($carts as $cart){
                    $cart->is_active=false;
                    $cart->save();
                }
            }
        }
        else{
            foreach($seller->products as $product){
                $product->is_active=true;
                $product->save();
                $carts=CartItem::where('product_id',$product->id)->where('is_active','1')->get();
                foreach($carts as $cart){
                    $cart->is_active=true;
                    $cart->save();
                }
            }
        }
        $seller->delivery_charge=$request->delivery_charge;
        if($request->has('shop_image')){
            $file=$request->file('shop_image');
            $fileName=$request->shop_name."_".$request->seller_name.".".$file->getClientOriginalExtension();
            $file->move(storage_path('/app/public/seller_images'), $fileName);
            $path='/storage/seller_images/'.$fileName;
            $seller->shop_image=$path;
        }
        $seller->city_id=Auth::user()->city_id;
        if($seller->save())
        {
            // $sellers=EcommSeller::where('city_id',Auth::user()->city_id)->get();
            return back()->with('success','Seller Updated!');
        }
        return back()->with('error','Something Went Wrong!');
    }

    public function deleteSeller($id){
        $seller=EcommSeller::find($id);
        // dd(File::delete(public_path($seller->shop_image)));
        if($seller->shop_image!='/storage/images/slogo.png')
        File::delete(public_path($seller->shop_image));
        foreach($seller->products??[] as $product){
            $carts=CartItem::where('product_id',$product->id)->where('is_active','1')->get();
            foreach($carts as $cart) $cart->delete();
        }
        foreach($seller->products??[] as $product) $product->delete();
        if($seller->delete())
        return back()->with('success','Seller Deleted');
        return back()->with('error','Something Went Wrong!');
    }


    public function showProducts($id){
        $seller=EcommSeller::find($id);
        if(!isset($seller))
        return back()->with('error','No Seller Found');
        $products=EcommProduct::where('seller_id',$id)->get();
        return view('admin.ecomm.products',compact('products','seller'));
    }


    public function editProduct($id){
        $product=EcommProduct::find($id);
        $seller=$product->seller;
        $categories=Categories::where('city_id',Auth::user()->city_id)->get();
        return view('admin.ecomm.create_products',compact('product','seller','categories'));
    }

    public function createProduct($seller_id){
        $seller=EcommSeller::find($seller_id);
        if(!isset($seller)) return back()->with('error','Seller Not Found');
        $categories=Categories::where('city_id',Auth::user()->city_id)->get();
        return view('admin.ecomm.create_products',compact('seller','categories'));
    }
    public function validateImages($images){
        $formats=['jpg','jpeg','png','webp'];
        foreach($images as $image){
            if(!in_array($image->getClientOriginalExtension(),$formats))
            return false;
        }
        return true;
    }
    public function storeProduct(Request $request, $seller_id){
        $seller=EcommSeller::find($seller_id);
        if(!isset($seller)) return back()->with('error','Seller Not Found');
        $validator=Validator::make($request->all(),[
            'product_name'=>'required',
            'specs'=>'required',
            'category_id'=>'required',
            'status'=>'required',
            'price'=>'required',
            'discount'=>'required|numeric|max:100',
            'description'=>'required',
            // 'images'=>'sometimes|nullable|mimes:jpg,jpeg,png'
        ]);
        if($validator->fails()){
            return back()->withErrors($validator);
        }
        if(EcommProduct::where('product_name',$request->input('product_name'))->where('category_id',$request->input('category_id'))->where('seller_id',$seller_id)->exists()) return back()->with('error','Duplicate Name Found!');
        // dd($request->images);
        if($request->has('images') && !$this->validateImages($request->images)) return back()->with('error','Invalid Format!');
        // dd($request->all());
        $product=new EcommProduct;
        $product->product_name=$request->input('product_name');
        $product->specs=$request->input('specs');
        $product->offers=$request->input('offers');
        $product->price=$request->input('price');
        $product->seller_id=$seller_id;
        $product->sold_out=$request->input('sold_out');  
        $product->discount=$request->input('discount');
        $product->selling_price=round($product->price-$product->price*($product->discount/100),2);
        $product->is_active=$request->input('status');
        $product->category_id=$request->input('category_id');
        $product->description=$request->input('description');
        if($product->save())
        {
            if($request->has('images')){
                // $category_name=$product->category->category_name;
                $p='storage/ecomm_product_images/'.$seller->shop_name.$seller->id.'/'.$product->product_name.$product->id;
                $path=public_path($p);
                foreach($request->images as $k=>$file){
                    $image=new EcommProductImage;
                    $image->image_name=$product->product_name.($k+1);
                    $image->image_size=filesize($file);
                    $image->image_extension=$file->getClientOriginalExtension();
                    $image->product_id=$product->id;
                    $image->file_path=$p.'/'.$image->image_name.'.'.$image->image_extension;
                    if($k==0){
                        $product->showcase_image=$image->file_path;
                        $product->save();
                    }
                    $file->move($path,$image->image_name.'.'.$image->image_extension);
                    $image->save();
                }
            }
            return back()->with('success','Product Added!');
        }
        return back()->with('error','Something Went Wrong!');
    }

    public function updateProduct(Request $request,$id){
        // dd($request->all());
        $seller=EcommSeller::find($request->input('seller_id'));
        if(!isset($seller)) return back()->with('error','Seller Not Found');
        $validator=Validator::make($request->all(),[
            'product_name'=>'required',
            'specs'=>'required',
            'category_id'=>'required',
            'status'=>'required',
            'price'=>'required',
            'discount'=>'required|numeric|max:100',
            'description'=>'required',
        ]);
        if($validator->fails()){
            return back()->withErrors($validator);
        }
        if(EcommProduct::where('product_name',$request->input('product_name'))->where('category_id',$request->input('category_id'))->where('seller_id',$request->input('seller_id'))->count()>1) return back()->with('error','Duplicate Name Found!');
        if($request->has('images') && !$this->validateImages($request->images)) return back()->with('error','Invalid Format!');
        

        $product=EcommProduct::find($id);
        $product->product_name=$request->input('product_name');
        $product->specs=$request->input('specs');
        $product->offers=$request->input('offers');
        $product->price=$request->input('price');
        $product->discount=$request->input('discount');
        $product->selling_price=round($product->price-$product->price*($product->discount/100),2);
        $product->is_active=$request->input('status');
        if($product->is_active=="0"){
            $carts=CartItem::where('is_active','1')->where('product_id',$product->id)->get();
            foreach($carts as $cart){
                $cart->is_active=false;
                $cart->save();
            }
        }
        else{
            $carts=CartItem::where('is_active','1')->where('product_id',$product->id)->get();
            foreach($carts as $cart){
                $cart->is_active=true;
                $cart->save();
            }
        }
        $product->sold_out=$request->input('sold_out');  
        $product->category_id=$request->input('category_id');
        $product->description=$request->input('description');
        $product->showcase_image=$request->input('showcase_image');
        if($product->save())
        {
            foreach($request->input('removed_images')??[] as $img){
                $image=EcommProductImage::find($img);
                File::delete(public_path($image->file_path));
                $image->delete();
            }
            if($request->has('images')){
                // $category_name=$product->category->category_name;
                $p='storage/ecomm_product_images/'.$seller->shop_name.$seller->id.'/'.$product->product_name.$product->id;
                $path=public_path($p);
                $count=count($product->uploaded_images??[]);
                foreach($request->images as $k=>$file){
                    $image=new EcommProductImage;
                    $image->image_name=substr(trim($product->product_name),0,20).(++$count);
                    $image->image_size=filesize($file);
                    $image->image_extension=$file->getClientOriginalExtension();
                    $image->product_id=$product->id;
                    $image->file_path=$p.'/'.$image->image_name.'.'.$image->image_extension;
                    if($k==0){
                        if($product->showcase_image==NULL){
                            $product->showcase_image=$image->file_path;
                            $product->save();
                        }
                    }
                    $file->move($path,$image->image_name.'.'.$image->image_extension);
                    $image->save();
                }
            }
            return back()->with('success','Product Updated!');
        }
        return back()->with('error','Something Went Wrong!');
    }

    public function deleteProduct($id){
        $product=EcommProduct::find($id);
        // dd($product->uploaded_images);
        foreach($product->uploaded_images??[] as $image){
            File::delete(public_path($image->file_path));
            $image->delete();
            
        }
        $carts=CartItem::where('is_active','1')->where('product_id',$product->id)->get();
        foreach($carts as $cart) $cart->delete();
        // dd("ad");
        if($product->delete())
        return back()->with('success','Product Deleted');
        return back()->with('error','Something Went Wrong!');
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\EcommSeller;
use App\EcommProduct;
use Auth;
use App\Categories;
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
        return view('admin.ecomm.create_sellers',compact('product'));
    }

    public function createProduct($seller_id){
        $seller=EcommSeller::find($seller_id);
        if(!isset($seller)) return back()->with('error','Seller Not Found');
        $categories=Categories::where('city_id',Auth::user()->city_id)->get();
        return view('admin.ecomm.create_products',compact('seller','categories'));
    }

    public function storeProduct(Request $request, $seller_id){
        $seller=EcommSeller::find($seller_id);
        if(!isset($seller)) return back()->with('error','Seller Not Found');
        $validator=Validator::make($request->all(),[
            
        ]);
        if($validator->fails()){
            return back()->withErrors($validator);
        }
        
        if($product->save())
        {
            return back()->with('success','Product Added!');
        }
        return back()->with('error','Something Went Wrong!');
    }

    public function updateProduct(Request $request,$id){
        $validator=Validator::make($request->all(),[
           
        ]);
        if($validator->fails()){
            return back()->withErrors($validator);
        }
        
        
        if($product->save())
        {
            return back()->with('success','Seller Updated!');
        }
        return back()->with('error','Something Went Wrong!');
    }

    public function deleteProduct($id){
        $product=EcommProduct::find($id);
        if($seller->delete())
        return back()->with('success','Product Deleted');
        return back()->with('error','Something Went Wrong!');
    }
}

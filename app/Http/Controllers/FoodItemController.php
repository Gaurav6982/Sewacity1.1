<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Menu;
use App\FoodCart;
class item{
    public $pname;
    public $price;
    public $quantity;
    public $discount;
    public function __construct($name,$price,$qty,$discount){
        $this->pname=$name;
        $this->price=$price;
        $this->quantity=$qty;
        $this->discount=$discount;
    }
}
class FoodItemController extends Controller
{
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $res=new Menu;
        $res->name=$request->input('name');
        $res->price=$request->input('price');
        $res->desc=$request->input('desc');
        $res->res_id=$request->input('res_id');
        // $res->location=$request->input('loc');
        // $res->city_id=1;
        if($request->hasFile('image'))
        {
            $file=$request->file('image')->getClientOriginalName();

            $name=pathinfo($file,PATHINFO_FILENAME);

            $extention=$request->file('image')->getClientOriginalExtension();

            $fileName=date("d-m-y")."_".time().".".$extention;

            $path=$request->file('image')->storeAs('public/restaurants/items',$fileName);
            $res->image=$fileName;
        }
        
        if($res->save())
        return back()->with('success','Item Added');
        abort(500, 'Could not upload image :(');
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
        //
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
        $res=Menu::find($id);
        $res->name=$request->input('name');
        $res->price=$request->input('price');
        $res->desc=$request->input('desc');
        $fileName='';
        if($request->hasFile('image'))
        {
            $file=$request->file('image')->getClientOriginalName();

            $name=pathinfo($file,PATHINFO_FILENAME);

            $extention=$request->file('image')->getClientOriginalExtension();

            $fileName=date("d-m-y")."_".time().".".$extention;

            $path=$request->file('image')->storeAs('public/restaurants/items',$fileName);
        }
        if($res->image!=$fileName &&$fileName!='')
        $res->image=$fileName;
        if($res->save())
        return back()->with('success','Item Updated');
        abort(500, 'Could not upload image :(');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $carts=FoodCart::where('food_id',$id)->get();
        foreach($carts as $cart)
        {
            $cart->delete();
        }
        $item=Menu::find($id);
        if($item->delete())
        return response()->json(['success',true],200);
        return response()->json(['success',false],400);
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Restaurants;
use App\Menu;
class FoodController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $restaurants=Restaurants::where('city_id',1)->get();
        return view('admin.food.index')->with('res',$restaurants);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return "create";
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request->all();
        $res=new Restaurants;
        $res->name=$request->input('name');
        $res->type=$request->input('type');
        $res->desc=$request->input('desc');
        $res->location=$request->input('loc');
        $res->city_id=1;
        if($request->hasFile('image'))
        {
            $file=$request->file('image')->getClientOriginalName();

            $name=pathinfo($file,PATHINFO_FILENAME);

            $extention=$request->file('image')->getClientOriginalExtension();

            $fileName=date("d-m-y")."_".time().".".$extention;

            $path=$request->file('image')->storeAs('public/restaurants',$fileName);
        }
        $res->image=$fileName;
        if($res->save())
        return back()->with('success','Restaurant Added');
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
        $res=Restaurants::find($id);
        $items=$res->items;
        $data=[
            'res'=>$res,
            'items'=>$items
        ];
        // return $items;
        return view('admin.food.show')->with($data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return "waadw";
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
        $res=Restaurants::find($id);
        $res->name=$request->input('name');
        $res->type=$request->input('type');
        $res->desc=$request->input('desc');
        $res->location=$request->input('loc');
        $res->city_id=1;
        $fileName='';
        if($request->hasFile('image'))
        {
            $file=$request->file('image')->getClientOriginalName();

            $name=pathinfo($file,PATHINFO_FILENAME);

            $extention=$request->file('image')->getClientOriginalExtension();

            $fileName=date("d-m-y")."_".time().".".$extention;

            $path=$request->file('image')->storeAs('public/restaurants',$fileName);
        }
        if($res->image!=$fileName &&$fileName!='')
        $res->image=$fileName;
        if($res->save())
        return back()->with('success','Restaurant Updated');
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
        return "delete";
    }
    
}

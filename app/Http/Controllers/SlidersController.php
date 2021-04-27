<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sliders;
use Storage;
use App\FrontPageSliders;
class SlidersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sliders=Sliders::all();
        return view('admin.front_sliders')->with('sliders',$sliders);
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
        $slider=Sliders::where('slider_name',$request->name)->get();
        if(count($slider??[])>0)
        return response()->json('Exist',400);
        $slider=new Sliders;
        $slider->slider_name=$request->name;
        $slider->is_active=$request->status;
        if($slider->save())
        return response()->json('success',200);
        return response()->json('Error',400);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $slider=Sliders::find($id);
        // return $slider;
        if($slider==null)
        return back()->with('error','No Slider Found!');
        $slides=$slider->slides;
        // return $slides;
        return view('admin.slider_slides')->with('slides',$slides)->with('slider',$slider);
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
        if($id==null)
        return response()->json("NoId",404);
        $slider=Sliders::find($id);
        $slider->slider_name=$request->name;
        $slider->is_active=$request->status;
        if($slider->save())
        return response()->json("Success",201);
        return response()->json("Fail",400);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function addSlide(Request $request,$id){
        // return $request->all();
        $this->validate($request,[
            'slide_name'=>'required|min:3',
            'slide_url'=>'nullable|url',
            'slide_status'=>'required'
         ]);
        $slider_id=$id;
        $alreadyExist=FrontPageSliders::where('name',$request->input('slide_name'))->where('slider_id',$slider_id)->get();
        if(count($alreadyExist??[])>0)
        return back()->with('error','Name Already Exist');
        $slide=new FrontPageSliders;
        $slide->slider_id=$slider_id;
        $slide->name=$request->input('slide_name');
        $slide->url=$request->input('slide_url');
        $slide->is_active=$request->input('slide_status');
        // $slide->position=$request->input('position');
        $fileName='';
        if($request->hasFile('slide_img'))
        {
            $file=$request->file('slide_img')->getClientOriginalName();

            $name=pathinfo($file,PATHINFO_FILENAME);

            $extention=$request->file('slide_img')->getClientOriginalExtension();

            $fileName=date("d-m-y")."_".time().".".$extention;

            $path=$request->file('slide_img')->storeAs('public/frontSliders/'.$slider_id,$fileName);
        }
        else
        {
            return back()->with('error','Image is Required!!');
        }
        $slide->image=$fileName;
        if($slide->save())
        return back()->with('success','Slide Added!!');
    }
    public function deleteSlide($slider_id,$slide_id){
        // return response()->json($slider_id." ".$slide_id,200);
        $slide=FrontPageSliders::where('slider_id',$slider_id)->where('id',$slide_id)->first();
        $image=$slide->image;
        
        if($slide->delete()){
            Storage::delete('/public/frontSliders/'.$slider_id.'/'.$image);
            return response()->json(['success'=>true]);
        }
        return response()->json(['success'=>false]);
    }
    public function editSlide(Request $request,$slider_id,$slide_id){
        $slide=FrontPageSliders::where('slider_id',$slider_id)->where('id',$slide_id)->first();
        $alreadyExist=FrontPageSliders::where('name',$request->input('slide_name'))->where('slider_id',$slider_id)->get();
        if(count($alreadyExist??[])>0){
            if($alreadyExist[0]->id!=$slide->id)
            return back()->with('error','Name Already Exist');
        }
        
        $slide->name=$request->input('slide_name');
        $slide->is_active=$request->input('slide_status');
        $slide->url=$request->input('slide_url');

        if($request->hasFile('slide_img'))
        {
            $file=$request->file('slide_img')->getClientOriginalName();

            $name=pathinfo($file,PATHINFO_FILENAME);

            $extention=$request->file('slide_img')->getClientOriginalExtension();

            $fileName=date("d-m-y")."_".time().".".$extention;
            Storage::delete('/public/frontSliders/'.$slider_id.'/'.$slide->image);
            $path=$request->file('slide_img')->storeAs('public/frontSliders/'.$slider_id,$fileName);
            $slide->image=$fileName;
        }
        if($slide->save())
        return back()->with('success','Slide Updated!');
        return back()->with('error','Error Occured!');
        // return response()->json(['success'=>false]);
    }
}

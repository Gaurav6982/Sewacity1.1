<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Feedback;
class SpecialAccessController extends Controller
{
    public function __construct()
    {
        $this->middleware('special');
    }
    public function manageFeed(){
        $feeds=Feedback::orderBy('created_at','desc')->get();
        return view('admin.manage_feed')->with('feeds',$feeds);
    }
    public function approveFeed($id){
        $feed=Feedback::find($id);
        if(!$feed)
        {
            return back()->with('error','Feedback Not Found!');
        }
        if($feed->is_approved==1)
        $feed->is_approved=0;
        else
        $feed->is_approved=1;

        if($feed->save())
        return back()->with('success','Feedback Updated!');
        else
        return back()->with('error','Some Error Occured!');

    }
    public function delete(Request $request){
        if(Auth::user()->usertype!='special')
        return response()->json(['fail'],400);
        $id = $request->input('id');
        $feed=Feedback::find($id);
        if(!$feed)
        {
            return "error";
        }
        if($feed->delete())
        {
            return "success";
        }
        return "error";

    }
    public function show($id){
        $feed=Feedback::find($id);
        if(!$feed)
        {
            return redirect('/manage-feedbacks')->with('error','Feedback Not Found!!');
        }
        return view('others.showfeed')->with('feed',$feed);
    }
}

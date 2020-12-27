<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Posts;
use App\User;
use App\Safari;
use Illuminate\Support\Facades\Mail;
use App\Mail\safariMail;
class SafariController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware(['auth'=>'verified']);
    // }

    public function safari(){
      
        return view('safaris.safari');
    }
    public function safariBook(Request $request){

        date_default_timezone_set('Asia/Kolkata');
        $this->validate($request,[
            'from'=>'required',
            'to'=>'required',
            'Phone'=>'numeric|min:0',
            'date'=>'required',
        ]);
        $from=$request->input('from');
        $to=$request->input('to');
        $phone=$request->input('Phone');
        $input_date=$request->input('date');
        $datetime=explode("T",$input_date);
        $entered_date=$datetime[0];
        $entered_time=$datetime[1];
        $hourMin=explode(":",$entered_time);
        $entered_hour=$hourMin[0];
        $entered_min=$hourMin[1];
        // echo $date;
        $entered=explode("-", $input_date);
        // print_r($entered);
        $temp_array=explode("T",$entered[2]);
        $entered_day=$temp_array[0];
        $entered_month=$entered[1];
        $entered_year=$entered[0]-2000;
        
        // echo $from."<br>";
        // echo $to."<br>";
        // echo $phone." ";
        // echo $date." ".$time;
        if($phone<6000000000)
            return back()->with('error','Number Must start with at lease 6');
        if($phone>9999999999)
            return back()->with('error','Number Must be 10 digits.');
        // $from
        // $curr_time=date_add(now(),INTERVAL 45 MINUTE);
        // $curr_date=date("d/m/y");
        // $curr_time=explode(":",date("H:i"));
        // $curr_hour=$curr_time[0];
        // $curr_min=$curr_time[1];
        // $date_array=explode("/",$curr_date);
        // // print_r($date_array);
        // $curr_day=$date_array[0];
        // $curr_month=$date_array[1];
        // $curr_year=$date_array[2];
        // echo $entered_year." ".$curr_year;
        
        
        // Validation-not Successfull below
        
        
        // if($entered_year==$curr_year &&$curr_month<11&& $entered_month>$curr_month+1||($entered_year==$curr_year+1 && $curr_month>11 && $entered_month>2))
        //     return back()->with('error',"Currently Advance Booking is Limited to 1 Month Only");
        // if($entered_day<$curr_day)
        //     return back()->with('error',"Enter Future Day Only");
        // $end_time=time()+1800;

        // if($entered_year==$curr_year&&$entered_day==$curr_day && $entered_month==$curr_month&&time()<time()+1800)
        //     return back()->with('error','Enter Time Atleast 30 min Ahead');
        // else if($entered_year!=$curr_year)
        //     return back()->with('error','Current Year Only');
        // if($entered_month==$curr_month && $entered_day==$curr_day && $entered_hour==$curr_hour)
        // {
        //     if($entered_min>40)
        //     {

        //     }
        //     else
        //     {
        //         if($entered_min+20>$curr_min)
        //             return back()->with('error','Enter Time Atleast 20 min Ahead');
        //     }
        // }

        // $new_date=strtotime('+1 hour',strtotime($curr_time));
        // return $curr_d;
        // 7979892412
        
        $user=Auth::user();
        // $result=array();
        // $result=$user->rides()->get();
        // if($result!=null && count($result)>5)
        //     return back()->with('error','One User Can Book At Most 5 Rides.');

        $new=new Safari;
        $new->Booking_id="SewaCity".Auth::user()->id.'-'.time();
        $new->Booking_time=$input_date;
        $new->source=$from;
        $new->destination=$to;
        $new->user_id=Auth::user()->id;
        $name=$user->name;
        $phone=$user->phone;
        $bookid=$new->Booking_id;
        $time=$entered_date." ".$entered_time;
        $details=array(
            'name' => $name, 
            'phone' => $phone, 
            'bookid' => $bookid, 
            'time' => $time,
            'from'=>$from,
            'to'=>$to,
            'email'=>$user->email,
        );
        if($new->save())
        {
            if($user->email!=null)
            Mail::to($user->email)->send(new safariMail($details));
            Mail::to('sewacityfbg@gmail.com')->send(new safariMail($details));
            return view('safaris.book')->with('details',$details);
        }
        else
            return back()->with('error',"There Might Be Some Error!!");
        
    }
    
}

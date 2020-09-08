<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HotelBooking;
use App\Hotel;
use App\Room;
use Illuminate\Support\Facades\Mail;
use App\Mail\HotelMailer;
class HotelController extends Controller
{
    public function index(){
        $hotel_details=Hotel::where('is_active','=',1)->limit(3)->get();
        
        return view('hotels.index')->with('hotel_details',$hotel_details);
    }
    public function rooms($id)
    {
        // return $id;
        if($id==null)
        $id=1;
        
        $hotel=Hotel::find($id);
        $rooms=$hotel->rooms()->get();
        
        return view('hotels.rooms')->with('rooms',$rooms);
    }
    public function show_form(Request $request,$id)
    {
        $room_id=$id;
        // return $room_id;
        return view('hotels.book')->with('room_id',$room_id);
    }
    public function submit(Request $request,$id)
    {
        $this->validate($request,[
                'phone'=>'required|min:0|max:10',
                'email'=>'required|email',
                'name'=>'required',
                'checkin_date'=>'required',
                'checkout_date'=>'required',
                'num_adults'=>'required',
                'num_children'=>'required',
            ]);
        $room_id=$id;
        
        $room=Room::find($id);
        $hotel=$room->hotel()->first();
        // return $hotel;
        $hotel_name=$hotel->hotel_name;
        // return $hotel_name;
        $booking=new HotelBooking;
        $booking->name=$request->input('name');
        $booking->phone=$request->input('phone');
        $booking->email=$request->input('email');
        $booking->checkin_date=$request->input('checkin_date');
        $booking->checkout_date=$request->input('checkout_date');
        $booking->no_of_adults=$request->input('num_adults');
        $booking->no_of_children=$request->input('num_children');
        $booking->is_corporate=$request->input('corporate');
        $booking->notes=$request->input('message');
        $booking->room_id=$room_id;
        $booking->booking_id='Hotel'.$hotel->id.'-'.time();
        $data=[
                'phone'=>$booking->phone,
                'email'=>$booking->email,
                'name'=>$booking->name,
                'checkin_date'=>$booking->checkin_date,
                'checkout_date'=>$booking->checkout_date,
                'num_adults'=>$booking->no_of_adults,
                'num_children'=>$booking->no_of_children,
                'notes'=>$booking->notes,
                'room'=>$room,
                'hotel_name'=>$hotel_name,
                'booking_id'=>$booking->booking_id,
                'corporate'=>$booking->is_corporate,
            ];
        if($booking->save())
        {
            Mail::to($booking->email)->send(new HotelMailer($data));  
            Mail::to('sewacityfbg@gmail.com')->send(new HotelMailer($data));  
            return redirect('/shelters')->with('success','Request Placed Succesfully, Our team will contact You soon!!');
        }
        
        else
        return redirect('/shelters')->with('error','Something went wrong!');
        
    }
}

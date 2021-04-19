@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h4>Profile Settings</h4></div>

                <div class="card-body">
                   <!-- <ul>
                       <li>Profile Image</li>
                       <li>Name</li>
                       <li>phone</li>
                       <li>email</li>
                       <li>no of requests</li>
                   </ul> -->
                   {!! Form::open(['action' => 'ProfileController@update','method'=>'post','encType'=>'multipart/form-data']) !!}
                    {{csrf_field()}}
                    {{method_field('PUT')}}
                        <div class="form-group">
                            {{Form::label('name','Your Name:')}}
                            {{Form::text('name',$user->name,['class'=>'form-control','placeholder'=>'Enter Your Name:','required'])}}
                        </div>
                        <div class="form-group">
                            {{Form::label('phone','Contact Number:')}}
                            {{Form::number('phone',$user->phone,['class'=>'form-control','placeholder'=>'Enter Contact Number:','disabled'])}}
                        </div>
                        <div class="form-group">
                            {{Form::label('email','Email Address:')}}
                            {{Form::text('email',$user->email,['class'=>'form-control','placeholder'=>'Enter Email Address:'])}}
                        </div>
                        <div class="form-group">
                            {{Form::label('city','Select City:')}}
                            <select name="city" id="city" class="form-control">
                                @foreach ($cities as $item)
                                    <option value="{{$item->id}}"@if(Auth::user()->city_id==$item->id) selected @endif>{{$item->city_name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            {{Form::label('address','Address:')}}
                            {{Form::text('address',$user->address??'',['class'=>'form-control','placeholder'=>'Enter Address:'])}}
                        </div>
                        <!-- <div class="form-group">
                            {{Form::label('image','Email Address:')}}
                            {{Form::text('email',$user->email,['class'=>'form-control','placeholder'=>'Enter Email Address:','disabled'])}}
                        </div> -->
                        {{Form::submit('Update',['class'=>'btn btn-primary'])}}
                        <br>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@if(count($errors)>0)
    @foreach ($errors->all() as $error)
        <div class="alert alert-danger m-0">
            <center>{{$error}}</center>
        </div>
    @endforeach
@endif

@if (session('success'))
    <div class="alert alert-success m-0 ">
        <center>{{session('success')}}</center> 
    </div>
@endif

@if (session('error'))
    <div class="alert alert-danger m-0">
        <center>{{session('error')}}</center>
    </div>
@endif
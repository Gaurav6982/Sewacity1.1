@extends('layouts.app')
@section('styles')
    

<style>
 .outerdiv{ position:relative; overflow: hidden; } .innerimage{ position:relative; width:100%; } .sold{ position:absolute; left:50%; top:50%; transform:translate(-50%,-50%); width:100%; height: 100%; opacity:0.7; } .custom{ color: white; font-weight: 500 } .custom:hover{ color:black; font-weight:900

 }

.hoverable{ display:inline-block; backface-visibility: hidden; vertical-align: middle; position:relative; box-shadow: 0 0 1px rgba(0,0,0,0); transform: translateZ(0); transition-duration: .3s; transition-property:transform; }

.hoverable:before{ position:absolute; pointer-events: none; z-index:-1; content: ''; top: 100%; left: 5%; height:10px; width:90%; opacity:0; background: -webkit-radial-gradient(center, ellipse, rgba(255, 255, 255, 0.35) 0%, rgba(255, 255, 255, 0) 80%); background: radial-gradient(ellipse at center, rgba(255, 255, 255, 0.35) 0%, rgba(255, 255, 255, 0) 80%); /* W3C */ transition-duration: 0.3s; transition-property: transform, opacity; }

.hoverable:hover, .hoverable:active, .hoverable:focus{ transform: translateY(-5px); } .hoverable:hover:before, .hoverable:active:before, .hoverable:focus:before{ opacity: 1; transform: translateY(-5px); }
.page-title { opacity: .75 !important; } .comname{ letter-spacing: 8px; font-weight: 800;font-family:'Impact'; text-transform: uppercase; }


/*everything below here is just setting up the page, so dont worry about it */
</style>
@endsection

@section('content')
    

            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">{{ __('Register') }}</div>

                            <div class="card-body">
                                <form method="POST" action="{{ route('register') }}">
                                    @csrf

                                    <div class="form-group row">
                                        <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                                        <div class="col-md-6">
                                            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                            @error('name')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="phone" class="col-md-4 col-form-label text-md-right">{{ __('Phone') }}</label>

                                        <div class="col-md-6">
                                            <input id="phone" type="tel" class="form-control @error('phone') is-invalid @enderror" name="phone" value="{{ old('phone') }}" required autocomplete="phone" pattern="[7-9]{1}[0-9]{9}" autofocus min=0>



                                            @section('js')

                                            <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


                                                <script>
                                                    $(document).ready(function(){
                                                        $("body").delegate('#phone', 'focusout', function(){
                                                                if($(this).val() < 0){
                                                                    swal({
                                                                            title: "Wrong Number!",
                                                                            text: "Phone number cannot be negative!",
                                                                            icon: "warning",
                                                                            button: "Retry!",
                                                                        });
                                                                        $(this).val('');
                                                                }
                                                            });
                                                        });
                                                </script>
                                                @endsection
                                            

                                            @error('phone')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address (Optional)') }}</label>

                                        <div class="col-md-6">
                                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" autocomplete="email">

                                            @error('email')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="city" class="col-md-4 col-form-label text-md-right">{{ __('Select Your City') }}</label>

                                        <div class="col-md-6">
                                            <?php $cities=App\City::where('is_active',1)->orderBy('order')->get()?>
                                            <select name="city" id="city" class="form-control @error('city') is-invalid @enderror" required>
                                                {{-- <option >Select your City</option> --}}
                                                @foreach ($cities as $city)
                                                    <option value={{$city->id}}>{{$city->city_name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Create Password') }}</label>

                                        <div class="col-md-6">
                                            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                            @error('password')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                                        <div class="col-md-6">
                                            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-6 offset-md-4">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="terms" required>
                                                <label class="form-check-label" for="remember">
                                                    I agree to <a href="/terms-and-conditions">Terms & Condidtions</a>,<a href="/privacy">Privacy Policy</a>
                                                </label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row mb-0">
                                        <div class="col-md-6 offset-md-4">
                                            <button type="submit" class="btn btn-primary">
                                                {{ __('Register') }}
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
@endsection


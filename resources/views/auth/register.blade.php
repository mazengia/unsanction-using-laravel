  @include('nav.link')
               @include('nav.nav')
                <ol style="background-color: #FFFFFF" class="breadcrumb">
                     @if (Auth::user()->roles->first()->name=="user")
                         <li class="breadcrumb-item"></li><a style="color: #0F0000" href="import_excel">main</a></li>
                    @endif
                    <li class="breadcrumb-item ">/<a class="activ" href="#">register</a></li>
                </ol>
        <div class="container-fluid" style="background-color: #FFFFFF">
            <div style=" box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);border-radius: 50px;background-color: #FFFFFF"   align="center" class="card border-0  jumbotron bg-light"  >
                 <div align="center" style=" border-radius: 50px" class="card-header bg-light">
                    <img src="{{URL::to('/img/ent.png')}}" alt="sdwe">
                </div>

                <div class="card-body" >
                    @if($message = Session::get('success'))
                        <div style="width: 50%; " class="col-4 alert alert-success alert-block">
                                <button type="button" class="close" data-dismiss="alert">x</button>
                               <strong>{{ $message }}</strong>
                            </div>
                    @endif
                     @if($message = Session::get('Error'))
                         <div style="width: 50%; " class="col-4 alert alert-danger alert-block">
                            <button type="button" class="close" data-dismiss="alert">x</button>
                           <strong  >{{ $message }}</strong>
                        </div>
                    @endif
                <div class="row">
                    <div class="col-4"></div>
                    <div class="col-4">
                         <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('User Name') }}</label>

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
                            <label for="name" class="col-md-4 col-form-label text-md-right">User Id</label>
                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control"    name="id"   required   >
                            </div>
                        </div>
                          <div class="form-group row">
                                <label   class="col-md-4 col-form-label text-md-right">Role</label>
                            <div class="col-md-6">
                              <select required="required"  name="role" re class="form-control">
                                  <option value="">Select Role</option>
                                  <option value="1">User</option>
                                  <option value="2">Risk User</option>
                              </select>
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

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

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    Register
                                </button>
                            </div>
                        </div>
                    </form>
                    </div>
                    <div class="col-4"></div>
                </div>

                </div>
            </div>
</div>


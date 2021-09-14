 <style>
   nav{
      box-shadow: 3px 3px 3px #F2F2F2;
   }

   </style>
 <nav class="navbar navbar-expand-lg navbar-fixed-top bg-light" style="background-color: #fff" >

                <div class="container" style="height: 80px">
                    <a class="navbar-brand" href="{{ url('/import_excel') }}">
                        <img src="{{URL::to('/img/ent.png')}}" width="100" height="50" alt="">
                    </a>
                    <button style="color: #000000" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarSupportedContent">
                    <img src="{{URL::to('/img/nav.png')}}" width="50" height="30" alt="">
                 </button>
                              
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                     <ul class="nav navbar-nav  navbar-right">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link"   href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif
                        @else
                              @if (Auth::user()->roles->first()->name=="risk")
                                 <li class="nav-item" >
                                     <a class="nav-link" href="risk" >Main </a>
                                 </li>
                               @endif
                                 @if (Auth::user()->roles->first()->name=="user")
                                 <li class="nav-item">
                                        <a class="nav-link" href="/import_excel">{{ __('Main') }}</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/susers">{{ __('Users') }}</a>
                                    </li>
                               @endif


                                      <!--     if u want to return role use this code
                                          {{Auth::user()->roles->first()->name  }}
                                           @foreach(Auth::user()->roles as $role)
                                                {{ $role->name }}
                                            @endforeach               -->

                      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">  {{ Auth::user()->name }}  <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li>
                          <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                          </li>

                        </ul>
                      </li>

                        @endguest
                    </ul>
                </div>
            </div>

        </nav>  <br><br><br><br><br><br>

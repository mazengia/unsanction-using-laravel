<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
class LoginController extends Controller
{


    use AuthenticatesUsers;

    protected $redirectTo = "/login";
             public function authenticated()
               {
                 if(auth()->user()->hasRole('user'))
                {
                     return redirect('import_excel');
                  }
                      if(auth()->user()->hasRole('risk'))
                  {
                    return redirect('risk');
                  }

                }
       
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}

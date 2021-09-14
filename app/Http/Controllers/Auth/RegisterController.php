<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use DB;

class RegisterController extends Controller
{


    use RegistersUsers;

    protected $redirectTo = RouteServiceProvider::HOME;


    public function __construct()
    {
        $this->middleware('auth');
    }

    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'id' => ['required', 'string',   'max:255'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }


    protected function create(array $data )
    {
         try {
          $uresult=User::create([
            'name' => $data['name'],
            'id' => $data['id'],
            'password' => Hash::make($data['password']),
            ]);
            $values = array('role_id' => $data['role'],'user_id' => $data['id']);
            if($uresult){
               $urresult=DB::table('role_user')->insert($values);
               if($urresult){
                  return back()->with('success', 'Data Inserted successfully.');
               }
            }
              else{
                    return back()->with('Error', 'Data is not inserted please try again.');  
              }
          }catch (\Exception $e) {
               return back()->with('Error',' Your Data Is already exist' );  //we can use $e->getMessage(); instead of string
           }

    }
}

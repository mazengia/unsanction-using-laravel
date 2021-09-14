<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class userManagement extends Controller
{
    public function __invoke(Request $request)
    {
        //
    }
     public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('role:user');
    }
   function index(Request $request)
            {
             if(request()->ajax())
             {
                   $data = DB::table('users')      // ->select(    )

                     ->select('id','name' )
                     ->get();
                     //->skip(1)    //skips first row
                     //->take( 12)  //take 12 row by lefting the first row
                     //->skip(1) ->limit(PHP_INT_MAX) ->get();  skip the first row then display other rows
                      //->limit(10)    display only 10 row

                  return datatables()->of($data)
                   ->addIndexColumn()
                    ->addColumn('action', function($row){

                         $button ='<div   class="  row">
                                    <div class="col-md-4" >
                                        <form  method="get"     action="/modify ">
                                            <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
                                            <input type="" hidden="hidden" name="selectedvalue" value="'.$row->id.' " />
                                            <input type="submit" name="find" value="  Edit" id="filter" class="btn btn-info"/>
                                        </form>
                                    </div>
                                    <div class="col-md-4"  >
                                        <form method="get"      action="#">
                                            <input type="" hidden="hidden" name="selectedvalue" value="'.$row->id.' " />
                                            <input type="submit" name="find" value="Detial" id="filter" class="btn btn-info"/>
                                        </form>
                                    </div>
                                    <div class="col-md-4"    >
                                       <button class="btn btn-danger btn-flat btn-sm remove-user" data-id="'.$row->id .'" data-action="/delete"> Delete</button>

                                    </div>
                                </div>
                                        ';



                           //$button = '<button type="button" name="edit"  id="'.$row->id.'" class="edit btn btn-primary btn-sm">Edit</button>';
                           //$button .= '&nbsp;&nbsp;&nbsp;<button type="button" name="edit" id="'.$row->id.'" class="delete btn btn-danger btn-sm">Delete</button>';
                        return $button;  })
                    ->rawColumns(['action'])
                    ->make(true);
                }
                $data = DB::table('users')
               ->get();
               return view('userManagement.userManagement', compact('data'));
            }
             function edit(Request $request )
            {  $id = $request->input('selectedvalue');
                 $data = DB::table('users')
                     ->select('id','name')
                     ->where('id', $request->selectedvalue)
                     ->get();
                      $dat = DB::table('role_user')
                     ->select('role_id')
                     ->where('user_id', $request->selectedvalue)
                     ->get();

                     return view('userManagement.update', compact('data','dat'));



            }
            public function update(Request $request ) {
          //  $this->validate($request, ['Institution'  => 'required']);
           // $this->validate($request, ['Full_Name'  => 'required']);
           // $this->validate($request, ['Sex'  => 'required']);
            //$this->validate($request, ['Position'  => 'required']);
           // $this->validate($request, ['RA_Phone_No'  => 'regex:([09][0-9]{8})|digits:10']);
            //$this->validate($request, ['A_Phone_No'  => 'regex:([09][0-9]{8})|digits:10']);
            $id=   $request->input('ptd');
            $name = $request->input('name');
                   try{
            $result=DB::update("update users set name = ?  where id = '.$id.'",[$name]);
            if($result){
                return back()->with('success', 'Data Updated successfully.');
            }
            else{
                   return back()->with('error', 'Data is not updated.');
            }

             }
              catch (\Exception $e) {

                   return  back()->with('error', $e->getMessage());

        }

    }

}

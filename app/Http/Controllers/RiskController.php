<?php

namespace App\Http\Controllers;
 use DB;
use App\Exports\UsersExport;
use App\DataTables\UsersDataTable;
use Illuminate\Http\Request;
use App\Exports\unsanctionExport;
use Excel;

class RiskController extends Controller
{
        public function __construct()
            {
                $this->middleware('auth');
                $this->middleware('role:risk');
            }
        function index(Request $request)
            {
             if(request()->ajax())
                {
                   $data = DB::table('tbl_customer')
                      ->select('id','Institution','Full_Name',   'Position', 'Relationship','Account_No','TN_No','A_Phone_No' )
                     ->get();
                  return datatables()->of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                         $button='<div  class="row">

                                    <div class="col-md-3" style="margin : 15px">
                                        <form  method="get"     action="/redit ">
                                            <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
                                            <input type="" hidden="hidden" name="selectedvalue" value="'.$row->id.' " />
                                            <input type="submit" name="find" value=" Edit"  class="btn btn-info"/>
                                        </form>
                                    </div>
                                    <div class="col-md-3" style="margin : 15px">
                                        <form method="get"     action="/viewdetails ">
                                            <input type="" hidden="hidden" name="selectedvalue" value="'.$row->id.' " />
                                            <input type="submit" name="find" value="Detial" class="btn btn-info"/>
                                        </form>
                                    </div>
                                </div> ';
                    return $button;  })
                    ->rawColumns(['action'])
                    ->make(true);
                }
                $data = DB::table('tbl_customer')
               ->select('Full_Name', 'Position')
               ->groupBy('Full_Name', 'Position')
               ->orderBy('Full_Name' )
               ->get();
               return view('risk.home', compact('data'));
            }
        public function export()
            {
                   try {
                     $result= Excel::download(new unsanctionExport(),'exported_data.xlsx')    ;
                     }
                   catch (\Exception $e) {
                       return back()->withError( $e->getMessage() );  //we can use $e->getMessage(); instead of string
                    }
                return   $result;
            }

        function view_detail(Request $request )
            {  $id = $request->input('selectedvalue');
                 $data = DB::table('tbl_customer')
                     ->select('id','Institution','Full_Name', 'Sex', 'Title', 'Position', 'Occupation', 'Relationship','Date_of_Birth','Place_of_Birth', 'Nationality', 'Passport_No', 'National_ID_No', 'Driving_License', 'Account_No', 'TN_No', 'City', 'Sub_City', 'Wereda', 'House_No', 'RA_P_O_Box', 'RA_Phone_No', 'RA_Email_Address','Place', 'A_Phone_No', 'A_P_O_Box','A_Email_Address','Year_of_Appointee','Other_Infn' )
                     ->where('id', $request->selectedvalue)
                     ->get();
                     return view('view', compact('data'));

            }

        function edit(Request $request )
            {  $id = $request->input('selectedvalue');
                 $data = DB::table('tbl_customer')
                     ->select('id','Institution','Full_Name', 'Sex', 'Title', 'Position', 'Occupation', 'Relationship','Date_of_Birth','Place_of_Birth', 'Nationality', 'Passport_No', 'National_ID_No', 'Driving_License', 'Account_No', 'TN_No', 'City', 'Sub_City', 'Wereda', 'House_No', 'RA_P_O_Box', 'RA_Phone_No', 'RA_Email_Address','Place', 'A_Phone_No', 'A_P_O_Box','A_Email_Address','Year_of_Appointee','Other_Infn' )
                     ->where('id', $request->selectedvalue)
                     ->get();
                     return view('risk.edit', compact('data'));
            }
        public function update(Request $request )
            {
                $id=   $request->input('ptd');
                $Institution = $request->input('Institution');
                $Full_Name = $request->input('Full_Name');
                $Sex=  $request->input('Sex');
                $Title = $request->input('Title');
                $Position = $request->input('Position');
                $Occupation=  $request->input('Occupation');


                $Relationship = $request->input('Relationship');
                $Relationship2 = $request->input('Relationship2');
                $Relationship3 = $request->input('Relationship3');
                $Relationship4 = $request->input('Relationship4');
                $Relationship5 = $request->input('Relationship5');
                $all=$Relationship.", ".$Relationship2.", ".$Relationship3.", ".$Relationship4.", ". $Relationship5;

                $Date_of_Birth = $request->input('Date_of_Birth');
                $Place_of_Birth=  $request->input('Place_of_Birth');

                $Nationality = $request->input('Nationality');
                $Passport_No = $request->input('Passport_No');
                $National_ID_No=  $request->input('National_ID_No');
                $Driving_License = $request->input('Driving_License');
                $Account_No = $request->input('Account_No');

                $TN_No = $request->input('TN_No');
                $City = $request->input('City');
                $Sub_City=  $request->input('Sub_City');

                $Wereda = $request->input('Wereda');
                $House_No = $request->input('House_No');
                $RA_P_O_Box = $request->input('RA_P_O_Box');
                $RA_Phone_No=  $request->input('RA_Phone_No');
                $RA_Email_Address = $request->input('RA_Email_Address');
                $Place = $request->input('Place');


                $A_Phone_No = $request->input('A_Phone_No');
                $A_P_O_Box=  $request->input('A_P_O_Box');
                $A_Email_Address  =  $request->input('A_Email_Address');
                $Year_of_Appointee = $request->input('Year_of_Appointee');
                $Other_Infn = $request->input('Other_Infn');

                $result=DB::update('update tbl_customer set Full_Name = ?,Sex=?,Title=?,Position=?,Occupation=?,Relationship=?,Date_of_Birth=?,Place_of_Birth=? ,Nationality=?,Passport_No=?,National_ID_No=?,Driving_License=?,Account_No=?, TN_No=?, City=?, Sub_City=?, Wereda=?,  House_No=?, RA_P_O_Box=?, RA_Phone_No=?,  RA_Email_Address=?,Place=?,  A_Phone_No=?,  A_P_O_Box=?,A_Email_Address=?, Year_of_Appointee=?,  Other_Infn=?  where id ='.$id,[$Full_Name,$Sex ,$Title ,$Position ,$Occupation ,$all ,$Date_of_Birth ,$Place_of_Birth,$Nationality ,$Passport_No ,$National_ID_No ,$Driving_License ,$Account_No ,$TN_No ,$City ,$Sub_City ,$Wereda  ,$House_No ,$RA_P_O_Box ,$RA_Phone_No  ,$RA_Email_Address ,$Place  ,$A_Phone_No  ,$A_P_O_Box,$A_Email_Address ,$Year_of_Appointee  ,$Other_Infn]);
                if($result){
                  return back()->with('success', 'Data Updated successfully.');
                }
                else{
                  return back()->with('error', 'Data is not updated.');
                }
            }

    }

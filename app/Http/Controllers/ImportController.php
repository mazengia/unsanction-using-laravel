<?php

namespace App\Http\Controllers;
use App\Exports\UsersExport;
use App\Imports\UsersImport;
use Illuminate\Http\Request;
use App\DataTables\UsersDataTable;
use App\Exports\unsanctionExport;
use DB;
use Excel;

class ImportController extends Controller
 {
     public function __construct()
    {
        $this->middleware('auth');
    }
    function index(Request $request)
            {
             if(request()->ajax())
             {
                  if(!empty($request->filter_Full_Name))
                  {
                   $data = DB::table('tbl_customer')
                     ->select('id','Full_Name', 'Sex', 'Title', 'Position', 'Occupation', 'Relationship','Date_of_Birth','Place_of_Birth', 'Nationality', 'Passport_No', 'National_ID_No', 'Driving_License', 'Account_No', 'TN_No', 'City', 'Sub_City', 'Wereda', 'House_No', 'RA_P_O_Box', 'RA_Phone_No', 'RA_Email_Address','Place', 'A_Phone_No', 'A_P_O_Box','A_Email_Address','Year_of_Appointee','Other_Infn' )
                     ->where('Full_Name', $request->filter_Full_Name)
                     ->where('Position', $request->filter_Position)
                     ->get();
                  }
                  else
                  {
                   $data = DB::table('tbl_customer')      // ->select(    )

                     ->select('id','Full_Name', 'Sex', 'Title', 'Position', 'Occupation', 'Relationship','Date_of_Birth','Place_of_Birth', 'Nationality', 'Passport_No', 'National_ID_No', 'Driving_License', 'Account_No', 'TN_No', 'City', 'Sub_City', 'Wereda', 'House_No', 'RA_P_O_Box', 'RA_Phone_No', 'RA_Email_Address','Place', 'A_Phone_No', 'A_P_O_Box','A_Email_Address','Year_of_Appointee','Other_Infn' )
                     ->get();
                  }
                  return datatables()->of($data)
                   ->addIndexColumn()
                    ->addColumn('action', function($row){

                         $button ='
                            <form method="get"     action="  /custom ">
                                <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
                                <input type="" hidden="hidden" name="selectedvalue" value="'.$row->id.' " />
                                <input type="submit" name="find" value="  Details" id="filter" class="btn btn-info"/>
                            </form>  ';



                           //$button = '<button type="button" name="edit"  id="'.$row->id.'" class="edit btn btn-primary btn-sm">Edit</button>';
                           //$button .= '&nbsp;&nbsp;&nbsp;<button type="button" name="edit" id="'.$row->id.'" class="delete btn btn-danger btn-sm">Delete</button>';
                        return $button;  })
                    ->rawColumns(['action'])
                    ->make(true);
                }
                $data = DB::table('tbl_customer')
               ->select('Full_Name', 'Position')
               ->groupBy('Full_Name', 'Position')
               ->orderBy('Full_Name' )
               ->get();
               return view('import_excel', compact('data'));
            }


         public function export(){

            return Excel::download(new unsanctionExport,'unsunctio_exported.xlsx')    ;

        }


        function importt( Request $request)
            {
                 $this->validate($request, ['select_file'  => 'required|mimes:xls,xlsx']);
                 $path = $request->file('select_file')->getRealPath();
                 //config(['excel.import.startRow' => 4])   ;       // used to skip the first row of excel data during importing into mysql database
             try {
            $data=  Excel::import(new UsersImport, $path);
                }
           catch (\Exception $e) {
               return back()->withError('Error: Data is Not saved please cheack your Excel Data whether it is duplicated or not ' );  //we can use $e->getMessage(); instead of string
           }
           return back()->with('success', 'Data Imported successfully.');

            }

           function detail(Request $request )
            {  $id = $request->input('selectedvalue');
                 $data = DB::table('tbl_customer')
                     ->select('id','Full_Name', 'Sex', 'Title', 'Position', 'Occupation', 'Relationship','Date_of_Birth','Place_of_Birth', 'Nationality', 'Passport_No', 'National_ID_No', 'Driving_License', 'Account_No', 'TN_No', 'City', 'Sub_City', 'Wereda', 'House_No', 'RA_P_O_Box', 'RA_Phone_No', 'RA_Email_Address','Place', 'A_Phone_No', 'A_P_O_Box','A_Email_Address','Year_of_Appointee','Other_Infn' )
                     ->where('id', $request->selectedvalue)
                     ->get();
                     return view('details', compact('data'));

            }
           function custom_detail(Request $request){
                 $id = $request->input('selectedvalue');
                 $data_r = DB::table('tbl_customer')
                     ->select('id','Full_Name', 'Sex', 'Title', 'Position', 'Occupation', 'Relationship','Date_of_Birth','Place_of_Birth', 'Nationality', 'Passport_No', 'National_ID_No', 'Driving_License', 'Account_No', 'TN_No', 'City', 'Sub_City', 'Wereda', 'House_No', 'RA_P_O_Box', 'RA_Phone_No', 'RA_Email_Address','Place', 'A_Phone_No', 'A_P_O_Box','A_Email_Address','Year_of_Appointee','Other_Infn' )
                     ->where('id', $request->selectedvalue)
                     ->get();
                     return view('details', compact('data_r'));
           }
        public function update(Request $request ) {

            $id=   $request->input('ptd');
            $Full_Name = $request->input('Full_Name');
            $Sex=  $request->input('Sex');
            $Title = $request->input('Title');
            $Position = $request->input('Position');
            $Occupation=  $request->input('Occupation');
            $Relationship = $request->input('Relationship');
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
            $Year_of_Appointee = $request->input('Year_of_Appointee');
            $Other_Infn = $request->input('Other_Infn');

            DB::update('update tbl_customer set Full_Name = ?,Sex=?,Title=?,Position=?,Occupation=?,Relationship=?,Date_of_Birth=?,Place_of_Birth=? ,Nationality=?,Passport_No=?,National_ID_No=?,Driving_License=?,Account_No=?, TN_No=?, City=?, Sub_City=?, Wereda=?,  House_No=?, RA_P_O_Box=?, RA_Phone_No=?,  RA_Email_Address=?,Place=?,  A_Phone_No=?,  A_P_O_Box=?, Year_of_Appointee=?,  Other_Infn=?  where id ='.$id,[$Full_Name,$Sex ,$Title ,$Position ,$Occupation ,$Relationship ,$Date_of_Birth ,$Place_of_Birth,$Nationality ,$Passport_No ,$National_ID_No ,$Driving_License ,$Account_No ,$TN_No ,$City ,$Sub_City ,$Wereda  ,$House_No ,$RA_P_O_Box ,$RA_Phone_No  ,$RA_Email_Address ,$Place  ,$A_Phone_No  ,$A_P_O_Box ,$Year_of_Appointee  ,$Other_Infn  ]);
              return back()->with('success', 'Data Updated successfully.');

    }
    }
<?php

namespace App\Http\Controllers;
 use App\Http\Controllers\TableditController;
use Illuminate\Http\Request;
use DB;

class TableditController extends Controller
{
    function index()
    {
    	$data = DB::table('employees')->get();
    	return view('table_edit', compact('data'));
    }

    function action(Request $request)
    {
    	if($request->ajax())
    	{
    		if($request->action == 'edit')
    		{
    			$data = array(
    				'fname'	=>	$request->fname,
    				'lname'		=>	$request->lname,
    				'sex'		=>	$request->sex
    			);
    			DB::table('employees')
    				->where('id', $request->id)
    				->update($data);
    		}
    		if($request->action == 'delete')
    		{
    			DB::table('employees')
    				->where('id', $request->id)
    				->delete();
    		}
    		return response()->json($request);
    	}
    }
}

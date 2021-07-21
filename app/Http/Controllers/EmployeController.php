<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\EmployeeExport;
use Excel;

class EmployeController extends Controller
{
    public function exportinto(){
        return Excel::download(new EmployeeExport,'emp.xlsx')    ;


    }
    //
}

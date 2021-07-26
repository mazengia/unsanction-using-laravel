<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\unsanctionExport;
use Excel;

class unsanctionontroller extends Controller
{

    public function export(){

        return Excel::download(new unsanctionExport,'unsunctio_exported.xlsx',15)    ;

    }
}

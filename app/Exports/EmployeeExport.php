<?php

namespace App\Exports;

use App\Models\Employee;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class EmployeeExport implements FromCollection
{


public function heading():array{
    return['id','fname','lname','sex','swew'];
    }

    public function collection()
    {
        return Employee::all();
    }
}

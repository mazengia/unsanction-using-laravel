<?php

namespace App\Exports;

use App\Models\unsanction;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class unsanctionExport implements FromCollection
{

    public function heading():array{

        return['id','Full_Name', 'Sex', 'Title', 'Position', 'Occupation', 'Relationship','Date_of_Birth','Place_of_Birth', 'Nationality', 'Passport_No', 'National_ID_No', 'Driving_License', 'Account_No', 'TN_No', 'City', 'Sub_City', 'Wereda', 'House_No', 'RA_P_O_Box', 'RA_Phone_No', 'RA_Email_Address','Place', 'A_Phone_No', 'A_P_O_Box','A_Email_Address','Year_of_Appointee','Other_Infn'];

        }
    public function collection()
    {
        return unsanction::all();
    }
}

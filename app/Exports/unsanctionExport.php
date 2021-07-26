<?php

namespace App\Exports;

use App\Models\unsanction;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;    //export with headings
use Maatwebsite\Excel\Concerns\ShouldAutoSize;     //size the
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;

class unsanctionExport implements FromCollection, WithHeadings, ShouldAutoSize, WithEvents
{

    public function headings(): array
    {

        return['#','Institution','Full Name', 'Sex', 'Title', 'Position', 'Occupation', 'Relationship','Date of Birth','Place of Birth', 'Nationality', 'Passport Number', 'National_ID Number', 'Driving License', 'Account Number', 'TN Number', 'City', 'Sub City', 'Wereda', 'House Number', 'RA_P_O_Box', 'RA_Phone Number', 'RA_Email Address','Place', 'A_Phone No', 'A_P_O_Box','A_Email Address','Year of Appointee','Other Infn'];

        }
    public function collection( )
    {
        return  unsanction ::all('id','Institution','Full_Name', 'Sex', 'Title', 'Position', 'Occupation', 'Relationship','Date_of_Birth','Place_of_Birth', 'Nationality', 'Passport_No', 'National_ID_No', 'Driving_License', 'Account_No', 'TN_No', 'City', 'Sub_City', 'Wereda', 'House_No', 'RA_P_O_Box', 'RA_Phone_No', 'RA_Email_Address','Place', 'A_Phone_No', 'A_P_O_Box','A_Email_Address','Year_of_Appointee','Other_Infn');//return unsanction::all('Sex');   exports only sex
    }
    public function registerEvents(): array
    {
        return [
            AfterSheet::class    => function(AfterSheet $event) {
                $cellRange = 'A1:AC1'; // All headers      from A column to AC column
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setSize(14);
            },
        ];
    }
}

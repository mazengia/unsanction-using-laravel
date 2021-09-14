<?php

namespace App\Imports;
use Throwable;
use App\Models\inser_model;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\Importable;
use Maatwebsite\Excel\Concerns\WithStartRow;
use Maatwebsite\Excel\Concerns\WithValidation;
use Maatwebsite\Excel\Concerns\SkipsOnError;
use Maatwebsite\Excel\Concerns\SkipsErrors;
use Maatwebsite\Excel\Concerns\SkipsOnFailure;
use Maatwebsite\Excel\Concerns\SkipsFailures;
use Maatwebsite\Excel\Validators\Failure;
use Illuminate\Validation\Rule;

class UsersImport implements ToModel, WithStartRow ,WithValidation
{   use Importable  ;
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        if(isset($row[0])||isset($row[1])||isset($row[2])||isset($row[3])||isset($row[4])||isset($row[5])||isset($row[6])||isset($row[7])||isset($row[8])||isset($row[9])||isset($row[10])||isset($row[11])||isset($row[12])||isset($row[13])||isset($row[14])||isset($row[15])||isset($row[16])||isset($row[17])||isset($row[18])||isset($row[19])||isset($row[20])||isset($row[21])||isset($row[22])||isset($row[23])||isset($row[24])||isset($row[25])||isset($row[26])||isset($row[27])){
        return new inser_model([
            'Institution'=> $row[0],
            'Full_Name'     => $row[1],
            'Sex'    => $row[2],
            'Title' => $row[3],
            'Position'     => $row[4],
            'Occupation'    => $row[5],
            'Relationship' => $row[6],
            'Date_of_Birth'   => $row[7],
            'Place_of_Birth'     => $row[8],
            'Nationality'    => $row[9],
            'Passport_No'     => $row[10],
            'National_ID_No'    => $row[11],
            'Driving_License' => $row[12],
            'Account_No'   => $row[13],
            'TN_No'   => $row[14],
            'City'     => $row[15],
            'Sub_City'    => $row[16],
            'Wereda' => $row[17],
            'House_No'     => $row[18],
            'RA_P_O_Box'    => $row[19],
            'RA_Phone_No' => $row[20],
            'RA_Email_Address'   => $row[21],
            'Place'   => $row[22],
            'A_Phone_No' => $row[23],
            'A_P_O_Box'   => $row[24],
            'A_Email_Address'   => $row[25],
            'Year_of_Appointee'   => $row[26],
            'Other_Infn'   => $row[27],
            ]);
              }

    }
        public function startRow(): int
        {
                return 5;     //this method and ,WithStartRow which is add on above class used to start from 2 rows of excel during importing into database
        }

          public function rules(): array
            {
                return [
                    '*.Passport_No' =>[ 'unique'],
                    '*.National_ID_No' =>[ 'unique'],
                    '*.Driving_License' =>[ 'unique'],
                    '*.Account_No' =>[ 'unique'],
                    '*.TN_No' =>[ 'unique']   ,
                    '*.House_No' =>[ 'unique'],
                    '*.RA_P_O_Box' =>[ 'unique'],
                    '*.RA_Phone_No' =>[ 'unique'],
                    '*.RA_Email_Address' =>[ 'unique'],
                    '*.A_P_O_Box' =>[ 'unique'],
                    '*.A_Email_Address' =>[ 'unique']
                ];


            }
         // public function OnError(Throwable $error)
         //  {

         //  }


}

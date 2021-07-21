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
            'Full_Name'     => $row[0],
            'Sex'    => $row[1],
            'Title' => $row[2],
            'Position'     => $row[3],
            'Occupation'    => $row[4],
            'Relationship' => $row[5],
            'Date_of_Birth'   => $row[6],
            'Place_of_Birth'     => $row[7],
            'Nationality'    => $row[8],
            'Passport_No'     => $row[9],
            'National_ID_No'    => $row[10],
            'Driving_License' => $row[11],
            'Account_No'   => $row[12],
            'TN_No'   => $row[13],
            'City'     => $row[14],
            'Sub_City'    => $row[15],
            'Wereda' => $row[16],
            'House_No'     => $row[17],
            'RA_P_O_Box'    => $row[18],
            'RA_Phone_No' => $row[19],
            'RA_Email_Address'   => $row[20],
            'Place'   => $row[21],
            'A_Phone_No' => $row[22],
            'A_P_O_Box'   => $row[23],
            'A_Email_Address'   => $row[24],
            'Year_of_Appointee'   => $row[25],
            'Other_Infn'   => $row[26],
            ]);
              }

    }
        public function startRow(): int
        {
                return 5;     //this method and ,WithStartRow which is add on above class used to left over the first (let n=6) n-1 rows of excel during importing into database
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

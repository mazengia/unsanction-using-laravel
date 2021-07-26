<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class inser_model extends Model
{
   protected $table = 'tbl_customer';
    public $timestamps = true;
    protected $fillable = [
            'Institution',
            'Full_Name'  ,
            'Sex'     ,
            'Title' ,
            'Position'     ,
            'Occupation'   ,
            'Relationship',
            'Date_of_Birth'   ,
            'Place_of_Birth'    ,
            'Nationality'    ,
            'Passport_No'    ,
            'National_ID_No'    ,
            'Driving_License' ,
            'Account_No'   ,
            'TN_No'   ,
            'City'     ,
            'Sub_City'    ,
            'Wereda' ,
            'House_No'     ,
            'RA_P_O_Box'    ,
            'RA_Phone_No' ,
            'RA_Email_Address'   ,
            'Place'  ,
            'A_Phone_No' ,
            'A_P_O_Box'   ,
            'A_Email_Address'   ,
            'Year_of_Appointee'   ,
            'Other_Infn'  ,
                        ];
}
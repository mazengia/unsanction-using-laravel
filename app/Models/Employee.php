<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Employee extends Model
{
    use HasFactory;
        protected $table = 'tbl_customer';
        public $timestamps = true;
        protected $fillable = [
                        'Full_Name'  ,
                        'Sex'     ,
                        ];
}
                              
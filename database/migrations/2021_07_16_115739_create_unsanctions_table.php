<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUnsanctionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('unsanctions', function (Blueprint $table) {
            $table->id();       
            $table->string('Full_Name')->nullable()->default('NULL');
            $table->string('Sex')->nullable()->default('NULL');//
            $table->string('Title')->nullable()->default('NULL');
            $table->string('Position')->nullable()->default('NULL');
            $table->string('Occupation')->nullable()->default('NULL');
            $table->string('Relationship')->nullable()->default('NULL');
            $table->string('Date_of_Birth')->nullable()->default('NULL');


            $table->string('Place_of_Birth')->nullable()->default('NULL');
            $table->string('Nationality')->nullable()->default('NULL');
            $table->string('Passport_No')->nullable()->default('NULL')->unique();
            $table->string('National_ID_No')->nullable()->default('NULL')->unique();
            $table->string('Driving_License')->nullable()->default('NULL')->unique();
            $table->string('Account_No')->nullable()->default('NULL')->unique();
            $table->string('TN_No')->nullable()->default('NULL')->unique();


            $table->string('City')->nullable()->default('NULL');
            $table->string('Sub_City')->nullable()->default('NULL');
            $table->string('Wereda')->nullable()->default('NULL');
            $table->string('House_No')->nullable()->default('NULL')->unique();
            $table->string('RA_P_O_Box')->nullable()->default('NULL')->unique();
            $table->string('RA_Phone_No')->nullable()->default('NULL')->unique();
            $table->string('RA_Email_Address')->nullable()->default('NULL')->unique();
            $table->string('Place')->nullable()->default('NULL');


            $table->string('A_Phone_No')->nullable()->default('NULL') ;
            $table->string('A_P_O_Box')->nullable()->default('NULL')->unique();
            $table->string('A_Email_Address')->nullable()->default('NULL')->unique();
            $table->string('Year_of_Appointee')->nullable()->default('NULL');
            $table->string('Other_Infn')->nullable()->default('NULL');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('unsanctions');
    }
}

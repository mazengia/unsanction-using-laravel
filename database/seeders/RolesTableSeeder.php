<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('roles')->insert([
        	'name' => 'user'

        ]);

      //it this error occur add backward slash(\) before DB:: tables...  Error Class "Database\Seeders\DB" not found

   //   DB::table('roles')->insert([
    //    	'role_name' => 'User',
    //    	'role_slug' => 'user',
    //    ]);
   //
   }
}

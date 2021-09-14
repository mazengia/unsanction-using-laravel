<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       \DB::table('users')->insert([
        	'id' => 'admin',
        	'name' => 'admin',
         	'password' => bcrypt('admin123'),
        ]);

     //   DB::table('users')->insert([
       // 	'role_id' => '2',
       // 	'name' => 'User',
       // 	'email' => 'user@gmail.com',
        //	'password' => bcrypt('pass@user'),
       // ]);
    //
    }
}

<?php

use Illuminate\Support\Facades\Route;


    Route::get('/import_excel', 'App\Http\Controllers\ImportController@index');
    Route::post('/import_excel/import', 'App\Http\Controllers\ImportController@importt')->name('import_excel');

    Auth::routes();

    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::get('/unexport', 'App\Http\Controllers\ImportController@export');


    Route::get('/exlexport', 'App\Http\Controllers\EmployeController@exportinto');

     Route::get('/custom', 'App\Http\Controllers\ImportController@detail');
     Route::post('/custom/update', 'App\Http\Controllers\ImportController@update');
     Route::get('/', function (){

      return view('welcome');

      });

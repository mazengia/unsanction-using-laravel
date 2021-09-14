<?php

use Illuminate\Support\Facades\Route;


    Route::get('/import_excel', 'App\Http\Controllers\ImportController@index');
    Route::post('/import_excel/import', 'App\Http\Controllers\ImportController@importt')->name('import_excel');

    Auth::routes();


    Route::get('/unexport', 'App\Http\Controllers\ImportController@export');
    Route::get('/detailsview', 'App\Http\Controllers\ImportController@detail_view');

    Route::get('/edit', 'App\Http\Controllers\ImportController@edit');
    Route::post('/edit/update', 'App\Http\Controllers\ImportController@update');

    Route::get('/delete', 'App\Http\Controllers\ImportController@delete');

    Route::get('/', function (){
         if (! Auth::check() )    {
        return view('welcome');
        }else{
             if(auth()->user()->hasRole('user'))
                {
                     return redirect('import_excel');
                  }
                      if(auth()->user()->hasRole('risk'))
                  {
                    return redirect('risk');
                  }
        }
         })  ;




    Route::get('/risk', 'App\Http\Controllers\RiskController@index');
    Route::get('/viewdetails', 'App\Http\Controllers\RiskController@view_detail');
    Route::get('/xport', 'App\Http\Controllers\RiskController@export');

    Route::get('/redit', 'App\Http\Controllers\RiskController@edit');
    Route::post('/redit/users', 'App\Http\Controllers\RiskController@update');


    Route::get('/susers', 'App\Http\Controllers\userManagement@index');
    Route::get('/modify', 'App\Http\Controllers\userManagement@edit');
    Route::post('/modify/users', 'App\Http\Controllers\userManagement@update');





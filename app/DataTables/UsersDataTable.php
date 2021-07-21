<?php

namespace App\DataTables;
use App\Models\User;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Html\Editor\Editor;
use Yajra\DataTables\Html\Editor\Fields;
use Yajra\DataTables\Services\DataTable;

class UsersDataTable extends DataTable
{
    public function dataTable($query)
    {
        return datatables()
            ->eloquent($query)
            ->addColumn('tbl_customer', 'users.tbl_customer');
    }

    public function query(User $model)
    {
        return $model->newQuery();
    }

    public function html()
    {

        return $this->builder()
                    ->setTableId('tbl_customer')
                    ->columns($this->getColumns())
                    ->minifiedAjax()    
                    ->parameters([
                        'dom'          => 'Bfrtip',
                        'buttons'      => ['excel', 'csv'],
                    ]);
    }

    protected function getColumns()
    {
        return [
            Column::make('id'),
            Column::make('Full_Name'),
            Column::make('Sex'),
            Column::make('Title'),
            Column::make('Position'),
            Column::make('Occupation'),


            Column::make('Occupation'),
            Column::make('Relationship'),
            Column::make('Date_of_Birth'),
            Column::make('Place_of_Birth'),
            Column::make('Nationality'),
            Column::make('Passport_No'),

            Column::make('National_ID_No'),
            Column::make('Driving_License'),
            Column::make('Account_No'),
            Column::make('TN_No'),
            Column::make('City'),
            Column::make('Sub_City'),


            Column::make('Wereda'),
            Column::make('House_No'),
            Column::make('RA_P_O_Box'),
            Column::make('RA_Phone_No'),
            Column::make('RA_Email_Address'),
            Column::make('Place'),


            Column::make('A_Phone_No'),
            Column::make('A_P_O_Box'),
            Column::make('A_Email_Address'),
            Column::make('Year_of_Appointee'),
            Column::make('A_P_O_Box'),
        ];
    }


    protected function filename()
    {
        return 'Users_' . date('YmdHis');
    }
}

<!DOCTYPE html>
<html>
 <head>
 <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>Enat Bank SC</title>
     @include('nav.link')
 </head>
 <body  style="background-color: #FFFFFF">
     @include('nav.nav')
      <ol  style="background-color: #FFFFFF" class="breadcrumb">
            <li class="breadcrumb-item" ><a href="risk" >Main/</a></li>
        </ol>
   <div align="center" class="container-fluid">

    <div  class="justify-content-center">
   <div     class="panel panel-default">
    <div class="panel-heading border-0">
     <h3 class="panel-title"  style=" text-align: center" ><i>PEPSI</i></h3>
    </div>
    <div class="panel-body justify-content-center"   >
        <div  style=" text-align: center"  class="table-responsive">
         <a href="{{'xport'}}">Download PEPSI Excel File</a>
      <table style="width: 100%" class="table table-bordered table-striped table-responsive  "  id="customer_data" >
            <thead>
                <tr>
                   <td  >Number</td>
                  <td  >Institution</td>
                  <td  >Full Name</td>
                  <td  >position </td>
                  <td  >Relationship/ Close Associates </td>
                  <td  >Account Number </td>
                  <td  >Tin Number</td>
                  <td  >Phone Number</td>
                  <td  >Action </td>
                </tr>
            </thead>
      </table>
    </div>
   </div>
  </div>
  </div>
   </div>
   </body>

</html>

<script>
$(document).ready(function(){

    fill_datatable();

    function fill_datatable( )
    {
        var dataTable = $('#customer_data').DataTable({
            processing: true,
            serverSide: true,
            ajax:{

                url: "{{ url('risk') }}",

            },
            columns: [

                   { data: 'id', name: 'id', },
                  { data: 'Institution', name: 'Institution',searchable: false },
                  { data: 'Full_Name', name: 'Full_Name',searchable: false },
                  { data: 'Position', name: 'Position' ,searchable: false},

                  { data: 'Relationship', name: 'Relationship', },

                  { data: 'Account_No', name: 'Account_No' },
                  { data: 'TN_No', name: 'TN_No' },
                  { data: 'A_Phone_No', name: 'A_Phone_No' },
                  {data: 'action', name: 'action', orderable: false, searchable: false}
            ]
        });
    }




});
</script>
<!DOCTYPE html>
<html>
 <head>
 <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>Enat Bank SC</title>
     @include('nav.link')
 </head>
 <body  style="background-color: #FFFFFF">
     @include('nav.nav')
   <div class="container-fluid">
   <h3 align="center"> Add Your Excel File Into Systems  </h3>
    


   @if($message = Session::get('success'))
   <div class="alert alert-success alert-block">
    <button type="button" class="close" data-dismiss="alert">×</button>
           <strong>{{ $message }}</strong>
   </div>
   @endif
    @if($message = Session::get('error'))
   <div class="alert alert-danger alert-block">
    <button type="button" class="close" data-dismiss="alert">×</button>
           <strong>{{ $message }}</strong>
   </div>
   @endif
   @if(isset($errors)&& $errors->any())
       <div class="alert alert-danger alert-block">
           <button type="button" class="close" data-dismiss="alert">×</button>
         Upload Validation Error<br><br>
         <ul>
          @foreach($errors->all() as $error)
          <li>{{ $error }}</li>
          @endforeach
         </ul>
        </div>
       @endif


   <form method="post" enctype="multipart/form-data" action="{{ url('/import_excel/import') }}">
    {{ csrf_field() }}
    <div class="form-group">
     <table class="table">
      <tr>
       <td width="40%" align="right"><label><i>Select File<b>.xls|.xlsx</b></i> </label></td>
       <td width="30">
        <input type="file"name="select_file" />
       </td>
       <td width="30%" align="left"> <i>
        <input type="submit" name="upload" class="btn btn-primary" value="Upload"></i>
       </td>
      </tr>
     </table>
    </div>
   </form>
    <br>
   <div class="panel panel-default">
    <div class="panel-heading">
     <h3 class="panel-title"  style=" text-align: center" ><i>Customer Data</i></h3>
    </div>
    <div class="panel-body">
     <div  style=" text-align: center"  class="table-responsive">
         <a href="{{'unexport'}}">Download Excel File</a>
      <table class="table table-bordered table-striped "  id="customer_data" >
            <thead>
                <tr>

                  <td rowspan="3">Number</td>
                  <td rowspan="3">Institution</td>
                  <td rowspan="3">Full Name</td>
                  <td rowspan="3" >Sex </td>
                  <td rowspan="3">title</td>
                  <td colspan="2">Designation</td>
                  <td rowspan="3">Relationship / Close Associates</td>
                  <td rowspan="3">Date of Birth</td>
                  <td rowspan="3"> Place of Birth</td>
                  <td rowspan="3">Nationality </td>
                  <td rowspan="3">Passport No </td>
                  <td rowspan="3">National ID No </td>
                  <td rowspan="3">Driving License </td>
                  <td rowspan="3"> Account No</td>
                  <td rowspan="3"> TN No</td>
                  <td colspan="7">Residence Address</td>
                  <td colspan="4"> </td>
                  <td rowspan="3"> Year of Appointee</td>
                  <td rowspan="3"> Other Infn</td>
                  <td rowspan="3"> Action</td>
                </tr>
                <tr>
                    <td rowspan="2">position </td>
                    <td  rowspan="2">Occupation/ Source of Income </td>
                    <td rowspan="2">City</td>
                    <td rowspan="2">Sub City </td>
                    <td  rowspan="2">Wereda</td>
                    <td rowspan="2">House No </td>
                    <td  rowspan="2">P.O.Box </td>
                    <td  rowspan="2">	Phone No </td>
                    <td  rowspan="2">Email Address </td>
                    <td  rowspan="2">Place </td>
                    <td colspan="3"> Address</td>
                </tr>
                <tr>

                    <td>Phone No</td>
                    <td>P.O.Box</td>
                    <td>Email Address </td>
                </tr>
            </thead>
      </table>
     </div>
    </div>
   </div>
  </div>
 </body>

</html>

<script>
$(document).ready(function(){

    fill_datatable();

    function fill_datatable(filter_Full_Name = '', filter_Position = '')
    {
        var dataTable = $('#customer_data').DataTable({
            processing: true,
            serverSide: true,
            ajax:{

                url: "{{ url('import_excel') }}",
                data:{filter_Full_Name:filter_Full_Name, filter_Position:filter_Position}
            },
            columns: [

                   { data: 'id', name: 'id', },
                  { data: 'Institution', name: 'Institution', },
                  { data: 'Full_Name', name: 'Full_Name', },
                  { data: 'Sex', name: 'Sex' },
                  { data: 'Title', name: 'Title' },
                  { data: 'Position', name: 'Position' },

                  { data: 'Occupation', name: 'Occupation', },
                  { data: 'Relationship', name: 'Relationship' },
                  { data: 'Date_of_Birth', name: 'Date_of_Birth' },
                  { data: 'Place_of_Birth', name: 'Place_of_Birth' },

                  { data: 'Nationality', name: 'Nationality', },
                  { data: 'Passport_No', name: 'Passport_No' },
                  { data: 'National_ID_No', name: 'National_ID_No' },
                  { data: 'Driving_License', name: 'Driving_License' },

                  { data: 'Account_No', name: 'Account_No', },
                  { data: 'TN_No', name: 'TN_No' },
                  { data: 'City', name: 'City' },
                  { data: 'Sub_City', name: 'Sub_City' },

                  { data: 'Wereda', name: 'Wereda', },
                  { data: 'House_No', name: 'House_No' },
                  { data: 'RA_P_O_Box', name: 'RA_P_O_Box' },
                  { data: 'RA_Phone_No', name: 'RA_Phone_No' },

                  { data: 'RA_Email_Address', name: 'RA_Email_Address', },
                  { data: 'Place', name: 'Place' },
                  { data: 'A_Phone_No', name: 'A_Phone_No' },
                  { data: 'A_P_O_Box', name: 'A_P_O_Box' },

                  { data: 'A_Email_Address', name: 'A_Email_Address' },
                  { data: 'Year_of_Appointee', name: 'Year_of_Appointee' },
                  { data: 'Other_Infn', name: 'Other_Infn' }   ,
                  {data: 'action', name: 'action', orderable: false, searchable: false}
            ]
        });
    }




});
</script>

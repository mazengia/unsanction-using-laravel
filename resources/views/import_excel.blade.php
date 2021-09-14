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
            <li class="breadcrumb-item" ><a href="import_excel" >Main/</a></li>  
        </ol>
   <div class="container-fluid">
       <h3 align="center"> Add Your PEPSI Excel File Into Systems  </h3>
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
       <td width="40%" align="right"><label><i>Select PEPSI File<b>.xls|.xlsx</b></i> </label></td>
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
    <div  class="justify-content-center">
   <div align="center" class="panel panel-default">
    <div class="panel-heading border-0">
     <h3 class="panel-title"  style=" text-align: center" ><i>PEPSI</i></h3>
    </div>
    <div class="panel-body justify-content-center"   align="center">
        <div  style=" text-align: center"  class="table-responsive">
         <a href="{{'unexport'}}">Download PEPSI Excel File</a>
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

                url: "{{ url('import_excel') }}",

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

<script type="text/javascript">
    $("body").on("click",".remove-user",function(){
      var current_object = $(this);
      swal({
          title: "Are you sure?",
          text: "You will not be able to recover this file!",
          type: "error",
          showCancelButton: true,
          dangerMode: true,
          cancelButtonClass: '#DD6B55',
          confirmButtonColor: '#dc3545',
          confirmButtonText: 'Delete!',
      },function (result) {
          if (result) {
              var action = current_object.attr('data-action');
              var token = jQuery('meta[name="csrf-token"]').attr('content');
              var id = current_object.attr('data-id');
              $('body').html("<form class='form-inline remove-form' method='get' action='"+action+"'></form>");
              $('body').find('.remove-form').append('<input name="_method" type="hidden" value="delete">');
              $('body').find('.remove-form').append('<input name="_token" type="hidden" value="'+token+'">');
              $('body').find('.remove-form').append('<input name="id" type="hidden" value="'+id+'">');
              $('body').find('.remove-form').submit();
          }
      });
  });
  </script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>


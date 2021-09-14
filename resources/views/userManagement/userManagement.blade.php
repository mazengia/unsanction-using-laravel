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
            <li class="breadcrumb-item" ><a style="color: #0A0000" href="import_excel" >main</a></li>
            <li class="breadcrumb-item "><a class="activ" href="#">users</a></li>
        </ol>
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

    <br>
    <div  class="justify-content-center">
   <div align="center" class="panel panel-default">
    <div class="panel-body justify-content-center"   align="center">
        <div  style=" text-align: center"  class="table-responsive">
      <table   class="table table-bordered table-striped table-responsive  "  id="user_data" >
            <thead>
                <tr>                         
                  <td  >User Identity</td>
                  <td  >Name</td>
                  <td style="width: 250px"  >Action </td>
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
        var dataTable = $('#user_data').DataTable({
            processing: true,
            serverSide: true,
            ajax:{

                url: "{{ url('susers') }}",

            },
            columns: [

                  {data: 'id', name: 'id', },
                  {data: 'name', name: 'name'  },
                  {data: 'action', name: 'action' }
            ]
        });
    }

});
</script>


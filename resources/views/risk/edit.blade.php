<!DOCTYPE html>
<html>
     <head>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Enat Bank SC</title>
        @include('nav.link')
     </head>
 <body  >
     @include('nav.nav')
      <ol class="breadcrumb"  style="background-color: #FFFFFF">
         <li class="breadcrumb-item "><a href="risk" style="color: #140000">main </a>  </li>
        <li class="breadcrumb-item "><a class="activ"href="#">update</a></li>
        </ol>
    <div class=" justify-content-center" >
            <div style=" border-radius: 100px;" class="card border-0 "  >
                 <div   align="center"    class="card-header">

                     <h3>Update Detail Information</h3> 
                </div>
                <div class="card-body">
                    @foreach($data as $row)
                        @if($message = Session::get('success'))
                            <div  style="width: 50%; margin-left: 25%; text-align: center"  class="alert alert-success alert-block">
                                <button type="button" class="close" data-dismiss="alert">x</button>
                               <strong >{{ $message }}</strong>
                            </div>
                        @endif
                         @if($message = Session::get('error'))
                            <div  style="width: 50%; margin-left: 25%; text-align: center"  class="alert alert-danger alert-block">
                                <button type="button" class="close" data-dismiss="alert">x</button>
                               <strong>{{ $message }}</strong>
                            </div>
                        @endif
                        <form action="/redit/users" method="post"  >
                            <input type="" hidden="hidden" name="ptd" value="{{ $row->id }}" />
                            <div class="form-group  row">

                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class="  text-md-left">Institution</label>
                                </div>
                                <div class="col-md-6">
                                     <input name="Institution" value="{{ $row->Institution }}"    class="form-control" type="text" />
                                </div>

                            </div>
                            <div class="form-group  row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class="  text-md-left">Full Name</label>
                                </div>
                                <div class="col-md-6">
                                     <input name="Full_Name" value="{{ $row->Full_Name }}"   class="  form-control " type="text" />
                                </div>
                            </div>
                            <div class="form-group  row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class=" text-md-left">Sex</label>
                                </div>
                                <div class="col-md-6">
                                     <input name="Sex" value="{{ $row->Sex }}"     class="  form-control " type="text" />
                                </div>

                            </div>
                            <div class="form-group   row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class=" col-form-label text-md-left">title</label>
                                </div>
                                <div class="col-md-6">
                                     <input name="Title" value="{{ $row->Title }}"   class="  form-control " type="text" />
                                </div>



                            </div>
                            <div class="form-group  row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class=" col-form-label text-md-left">position</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="Position" value="{{ $row->Position }}"   class="  form-control " type="text" />
                                </div>

                            </div>
                            <div class=" form-group   row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class=" text-md-left">Occupation/ Source of Income</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="Occupation" value="{{ $row->Occupation }}"   class="  form-control  " type="text" />
                                </div>
                            </div>

                            <div class="form-group   row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class="  text-md-left">Relationship / Close Associates</label>
                                </div>
                                <div class="col-md-6">
                                    <input style="margin-bottom: 5px"  name="Relationship" value="{{ $row->Relationship }}"   class="  form-control " type="text" />
                                    <input style="margin-bottom: 5px" name="Relationship2"    class="  form-control " type="text" />
                                    <input style="margin-bottom: 5px" name="Relationship3"    class="  form-control " type="text" />
                                    <input style="margin-bottom: 5px" name="Relationship4"    class="  form-control " type="text" />
                                    <input name="Relationship5"    class="  form-control " type="text" />
                                    
                                </div>
                            </div>
                            <div class=" form-group  row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class=" text-md-left">Date of Birth</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="Date_of_Birth" value="{{ $row->Date_of_Birth }}" class="  form-control   " type="date" />
                                </div>
                            </div>
                            <div class=" form-group  row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class="  text-md-left">Place of Birth</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="Place_of_Birth" value="{{ $row->Place_of_Birth }}" class="  form-control  " type="text" />
                                </div>

                            </div>
                            <div class=" form-group  row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class=" text-md-left">Nationality</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="Nationality" value="{{ $row->Nationality }}" class="  form-control   " type="text" />
                                </div>

                            </div>
                            <div class=" form-group  row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class=" text-md-left">Passport No</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="Passport_No" value="{{ $row->Passport_No }}" class=" form-control  " type="text" />
                                </div>
                            </div>
                            <div class="form-group  row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class="  text-md-left">National ID No</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="National_ID_No" value="{{ $row->National_ID_No }}" class=" form-control    " type="text" />
                                </div>
                            </div>
                            <div class="form-group  row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class=" text-md-left">Driving License</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="Driving_License" value="{{ $row->Driving_License }}" class=" form-control   " type="text" />
                                </div>

                            </div>
                            <div class=" form-group  row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                    <label   class=" text-md-left">Account No</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="Account_No" value="{{ $row->Account_No }}" class="form-control  " type="text" />
                                </div>
                            </div>
                            <div class="  row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">TN No</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="TN_No" value="{{ $row->TN_No }}" class="form-control  " type="text" />
                                </div>

                            </div>
                            <div class="form-group   row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">City (Residence Address)</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="City" value="{{ $row->City }}" class="form-control " type="text" />
                                </div>

                            </div>
                            <div class=" form-group  row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">Sub City (Residence Address)</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="Sub_City" value="{{ $row->Sub_City }}" class="form-control  " type="text" />
                                </div>

                            </div>
                            <div class="form-group   row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">Wereda (Residence Address)</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="Wereda" value="{{ $row->Wereda }}" class="form-control  " type="text" />
                                </div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">House No (Residence Address)</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="House_No" value="{{ $row->House_No }}" class="form-control " type="text" />
                                </div>



                            </div>
                            <div class="form-group row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">P.O.Box (Residence Address)</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="RA_P_O_Box" value="{{ $row->RA_P_O_Box }}" class="form-control  " type="text" />
                                </div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">Phone No (Residence Address)</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="RA_Phone_No" value="{{ $row->RA_Phone_No }}" class="form-control " type="number" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">Email Address (Residence Address)</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="RA_Email_Address" value="{{ $row->RA_Email_Address }}" class="form-control  " type="email" />
                                </div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">Place (Address)</label>
                                </div>
                                <div class="col-md-6">
                                     <input name="Place" value="{{ $row->Place }}" class="form-control  " type="text" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">Phone No (Address)</label>
                                </div>
                                <div class="col-md-6">
                                     <input  name="A_Phone_No" value="{{ $row->A_Phone_No }}" class="form-control  " type="number" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">P.O.Box (Address)</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="A_P_O_Box" value="{{ $row->A_P_O_Box }}" class="form-control   " type="text" />
                                </div>

                            </div>

                            <div class="form-group row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">Email Address (Address)</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="A_Email_Address"  value="{{ $row->A_Email_Address }}" class="form-control  " type="email" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">Year of Appointee</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="Year_of_Appointee" value="{{ $row->Year_of_Appointee }}" class="form-control  " type="date" />
                                </div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-2"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">Other Infn</label>
                                </div>
                                <div class="col-md-6">
                                    <input name="Other_Infn" value="{{ $row->Other_Infn }}" class="form-control  " type="text" />
                                </div>



                            </div>
                            <div  align="center"   >
                            <a class="btn btn-info" href="import_excel">Back</a>
                            <input class="btn btn-info v   text-md-right" type="submit" value="Update" name="Update" />
                            </div>
                    </form>
                    @endforeach
                </div>
            </div>
    </div>

</body>
</html>

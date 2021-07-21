<!DOCTYPE html>
<html>
     <head>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Enat Bank SC</title>
        @include('nav.link')
     </head>
 <body>
    @include('nav.nav')
    <div class=" row">
        <div class="col-2"></div>
            <div class="col-8">
                @if(Session::has('message'))
                <p  style=" text-align: center"  class="alert {{ Session::get('alert-class', 'alert-info') }}">
                    {{ Session::get('message') }}
                </p>
                @endif
                    <h3 class="panel-title"  style=" text-align: center" >
                        <i>Detail Information</i><br><br>
                    </h3>
                    <div   class="table-responsive">
                        <table class="table"  id="customer_data" >
                            @foreach($data as $row)
                               @if($message = Session::get('success'))
                                   <div class="alert alert-success alert-block">
                                        <button type="button" class="close" data-dismiss="alert">x</button>
                                       <strong>{{ $message }}</strong>
                                   </div>
                               @endif
                                <form action="/custom/update" method="post" class="form-control">
                                    <input type="" hidden="hidden" name="ptd" value="{{ $row->id }}" />
                                    <thead>

                                        <tr>
                                            <td>Full Name</td>
                                            <td><input name="Full_Name" value="{{ $row->Full_Name }}"   class="form-control border-top-0   border-info" type="text" /></td>
                                        </tr>
                                        <tr>
                                            <td >Sex </td>
                                            <td><input name="Sex" value="{{ $row->Sex }}"     class="form-control border-top-0  border-info " type="text" /></td>
                                        </tr>
                                        <tr>
                                            <td >title</td>
                                            <td><input name="Title" value="{{ $row->Title }}"   class="form-control border-top-0 border-info" type="text" /></td>
                                        </tr>
                                        <tr>
                                            <td>position</td>
                                            <td><input name="Position" value="{{ $row->Position }}"   class="form-control border-top-0 border-info" type="text" /></td>
                                        </tr>
                                        <tr>
                                            <td  >Occupation/ Source of Income</td>
                                            <td><input name="Occupation" value="{{ $row->Occupation }}"   class="form-control border-top-0 border-info" type="text" /></td>
                                        </tr>
                                        <tr>
                                          <td  >Relationship / Close Associates</td>
                                          <td><input name="Relationship" value="{{ $row->Relationship }}"   class="form-control border-top-0 border-info" type="text" /></td>
                                        </tr>
                                      <tr>
                                          <td >Date of Birth</td>
                                          <td><input name="Date_of_Birth" value="{{ $row->Date_of_Birth }}" class="form-control border-top-0 border-info" type="date" /></td>
                                       </tr>
                                      <tr>
                                          <td  > Place of Birth</td>
                                          <td><input name="Place_of_Birth" value="{{ $row->Place_of_Birth }}" class="form-control border-top-0 border-info" type="text" /></td>
                                       </tr>
                                      <tr>
                                          <td  >Nationality </td>
                                          <td><input name="Nationality" value="{{ $row->Nationality }}" class="form-control border-top-0 border-info" type="text" /></td>
                                      </tr>
                                      <tr>
                                          <td  >Passport No </td>
                                          <td><input name="Passport_No" value="{{ $row->Passport_No }}" class="form-control border-top-0 border-info" type="text" /></td>
                                      </tr>
                                      <tr>
                                          <td  >National ID No </td>
                                          <td><input name="National_ID_No" value="{{ $row->National_ID_No }}" class="form-control border-top-0 border-info" type="text" /></td>
                                      </tr>
                                      <tr>
                                          <td  >Driving License </td>
                                          <td><input name="Driving_License" value="{{ $row->Driving_License }}" class="form-control border-top-0 border-info" type="text" /></td>
                                      </tr>
                                      <tr>
                                          <td  > Account No</td>
                                          <td><input name="Account_No" value="{{ $row->Account_No }}" class="form-control border-top-0 border-info" type="text" /></td>
                                      </tr>
                                      <tr>
                                          <td  > TN No</td>
                                          <td><input name="TN_No" value="{{ $row->TN_No }}" class="form-control border-top-0 border-info" type="text" /></td>
                                      </tr>

                                      <tr>
                                        <td  >City (Residence Address)</td>
                                        <td><input name="City" value="{{ $row->City }}" class="form-control border-top-0 border-info" type="text" /></td>
                                      </tr>
                                        <tr>
                                            <td  >Sub City (Residence Address) </td>
                                            <td><input name="Sub_City" value="{{ $row->Sub_City }}" class="form-control border-top-0 border-info" type="text" /></td>
                                        </tr>
                                        <tr>
                                            <td  >Wereda (Residence Address)</td>
                                            <td><input name="" value="{{ $row->Wereda }}" class="form-control border-top-0 border-info" type="text" /></td>
                                        </tr>
                                        <tr>
                                            <td  >House No (Residence Address) </td>
                                            <td><input name="House_No" value="{{ $row->House_No }}" class="form-control border-top-0 border-info" type="text" /></td>
                                        </tr>
                                        <tr>
                                            <td   >P.O.Box (Residence Address) </td>
                                            <td><input name="RA_P_O_Box" value="{{ $row->RA_P_O_Box }}" class="form-control border-top-0 border-info" type="text" /></td>
                                        </tr>
                                            <tr>
                                                <td   >	Phone No (Residence Address) </td>
                                                <td><input  max="10" min="10"  name="RA_Phone_No" value="{{ $row->RA_Phone_No }}" class="form-control border-top-0 border-info" type="number" /></td>
                                            </tr>
                                            <tr>
                                                <td   >Email Address (Residence Address) </td>
                                                <td><input name="RA_Email_Address" value="{{ $row->RA_Email_Address }}" class="form-control border-top-0 border-info" type="email" /></td>
                                            </tr>
                                           <tr>
                                                <td   >Place (Address)</td>
                                                <td><input name="Place" value="{{ $row->Place }}" class="form-control border-top-0 border-info" type="text" /></td>
                                           </tr>
                                            <tr>
                                                <td>Phone No (Address)</td>
                                                <td><input max="10" min="10" name="A_Phone_No" value="{{ $row->A_Phone_No }}" class="form-control border-top-0 border-info" type="number" /></td>
                                            </tr>
                                            <tr>
                                                <td>P.O.Box (Address)</td>
                                                <td><input name="A_P_O_Box" value="{{ $row->A_P_O_Box }}" class="form-control border-top-0 border-info" type="text" /></td>
                                            </tr>
                                            <tr>
                                                <td>Email Address (Address) </td>
                                                <td><input value="{{ $row->A_Email_Address }}" class="form-control border-top-0 border-info" type="email" /></td>
                                            </tr>
                                          <tr>
                                              <td  > Year of Appointee</td>
                                              <td><input name="Year_of_Appointee" value="{{ $row->Year_of_Appointee }}" class="form-control border-top-0 border-info" type="date" /></td>
                                          </tr>
                                          <tr>
                                              <td  > Other Infn</td>
                                            <td><input name="Other_Infn" value="{{ $row->Other_Infn }}" class="form-control border-top-0 border-info" type="text" /></td>
                                          </tr>
                                          <tr>
                                              <td></td>
                                              <td><input class="btn btn-info" type="submit" name="Update" /></td>
                                          </tr>
                                    </thead>
                                </form>
                            @endforeach
                        </table>
                    </div>
            </div>
        </div>
        <div class="col-2"></div>
    </body>
</html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>


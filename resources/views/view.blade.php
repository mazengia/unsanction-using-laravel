<!DOCTYPE html>
<html>
     <head>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Enat Bank SC</title>
        @include('nav.link')
            <style>
            .lbl{
                font-size: 12px;
                color: #000000;
            }

            </style>
     </head>
 <body  style="background-color: #FFFFFF">
    @include('nav.nav')
        <ol class="breadcrumb"  style="background-color: #FFFFFF">
            @if (Auth::user()->roles->first()->name=="user")
                 <li class="breadcrumb-item "  >    <a style="color: #140000" href="import_excel" >Main </a>   </li>
            @endif
             @if (Auth::user()->roles->first()->name=="risk")
                 <li class="breadcrumb-item ">  <a href="risk" style="color: #140000">main </a>  </li>
            @endif
            <li class="breadcrumb-item "><a class="activ"href="#">details</a></li>
        </ol>
    <div class=" justify-content-center"     >
            <div  class="card "  >
                <div     align="center"    class="card-header">
                    <h3>Detail Information</h3>
                </div>

                <div class="card-body  " >
                    @foreach($data as $row)
                        <form action="/custom/update" method="post"    >
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label     class="col-md-2 col-form-label text-md-left  ">Institution</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Institution }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">

                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left  "  >Full Name</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Full_Name }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left"  >Sex</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Sex }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left"  >title</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Title }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">position</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Position }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Occupation/ Source of Income</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Occupation }}</label>
                                <div class="col-md-2"></div>

                            </div>

                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Relationship / Close Associates</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Relationship }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Date of Birth</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Date_of_Birth }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Place of Birth</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Place_of_Birth }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Nationality</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Nationality }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Passport No</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Passport_No }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">National ID No</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->National_ID_No }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Driving License</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Driving_License }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Account No</label>
                                <label   class="col-md-4 col-form-label text-md-left"> {{$row->Account_No }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">TN No</label>
                                <label   class="col-md-4 col-form-label text-md-left"> {{$row->TN_No }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">City (Residence Address)</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->City }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Sub City (Residence Address)</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Sub_City }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Wereda (Residence Address)</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Wereda }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">House No (Residence Address)</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->House_No }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">P.O.Box (Residence Address)</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->RA_P_O_Box }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Phone No (Residence Address)</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->RA_Phone_No }}</label>
                                <div class="col-md-2"></div>

                            </div>
                             <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Email Address (Residence Address)</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->RA_Email_Address }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Place (Address)</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Place }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Phone No (Address)</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->A_Phone_No }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">P.O.Box (Address)</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->A_P_O_Box }}</label>
                                <div class="col-md-2"></div>

                            </div>

                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Email Address (Address)</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->A_Email_Address }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Year of Appointee</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Year_of_Appointee }}</label>
                                <div class="col-md-2"></div>

                            </div>
                            <div class="form-group row">
                                <div class="col-md-4"></div>
                                <label   class="col-md-2 col-form-label text-md-left">Other Infn</label>
                                <label   class="col-md-4 col-form-label text-md-left">{{ $row->Other_Infn }}</label>
                                <div class="col-md-2"></div>

                            </div>
                             <div  align="center"   >
                             @if (Auth::user()->roles->first()->name=="risk")
                                  <a class="btn btn-info" href="risk">Back</a>
                                @endif
                                   @if (Auth::user()->roles->first()->name=="user")
                                  <a class="btn btn-info" href="import_excel">Back</a>
                                @endif
                             </div>

                    </form>
                    @endforeach
                </div>
            </div>
    </div>


</body>
</html>

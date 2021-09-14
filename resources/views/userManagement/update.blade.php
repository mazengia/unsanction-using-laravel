<!DOCTYPE html>
<html>
     <head>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Enat Bank SC</title>
        @include('nav.link')
     </head>
 <body>
     @include('nav.nav')
      <ol class="breadcrumb"  style="background-color: #FFFFFF">
            <li class="breadcrumb-item" ><a href="import_excel"  style="color: #000000" >main</a></li>
            <li class="breadcrumb-item "><a style="color: #0F0000"  href="susers">users</a></li>
            <li class="breadcrumb-item "><a class="activ"href="#">update</a></li>
        </ol>
    <div class=" container justify-content-center" >

            <div style=" border-radius: 100px;" class="card border-0 "  >
                <div   align="center"    class="card-header">
                    <h3>Update Detail Information</h3><hr>
                    @if(Session::has('message'))
                        <p style=" text-align: center"  class="alert {{ Session::get('alert-class', 'alert-info') }}"> {{ Session::get('message') }}
                        </p>
                    @endif
                </div>
                <div class="card-body">
                    @foreach($data as $row)
                        @if($message = Session::get('success'))
                            <div style="width: 50%; margin-left: 25%" class="col-4 alert alert-success alert-block">
                                <button type="button" class="close" data-dismiss="alert">x</button>
                               <strong>{{ $message }}</strong>
                            </div>
                        @endif
                         @if($message = Session::get('error'))
                                <div style="width: 50%; margin-left: 25%" class="col-4 alert alert-danger alert-block">
                                    <button type="button" class="close" data-dismiss="alert">x</button>
                                   <strong  >{{ $message }}</strong>
                                </div>
                        @endif
                        <form action="/modify/users" method="post"  >
                            <input type="" hidden="hidden" name="ptd" value="{{ $row->id }}" />
                            <div class="form-group row">
                                <div class="col-md-3"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">User Id</label>
                                </div>
                                <div class="col-md-3">
                                     <input name="id"   value="{{ $row->id }}" class="form-control  " type="text" />
                                </div>
                                <div class="col-md-3"></div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-3"></div>
                                <div class="col-md-3">
                                   <label   class=" text-md-left">Full Name</label>
                                </div>
                                <div class="col-md-3">
                                     <input  name="name" value="{{ $row->name }}" class="form-control  " type="text" />
                                </div>
                                <div class="col-md-3"></div>
                            </div>
                             @foreach($dat as $roww)
                                <div class="form-group row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-3">
                                       <label   class=" text-md-left">Role</label>
                                    </div>
                                    <div class="col-md-3">
                                        @if($roww->role_id==1  )
                                         <input  name="name" value="user" class="form-control" type="text" />
                                          @endif
                                          @if($roww->role_id==2  )
                                         <input  name="name" value="risk" class="form-control" type="text" />
                                          @endif
                                    </div>
                                <div class="col-md-3"></div>
                                </div>
                             @endforeach
                            <div  align="center"   >
                                <a class="btn btn-info" href="susers">Back</a>
                                <input class="btn btn-info v   text-md-right" type="submit" value="Update" name="Update" />
                            </div>
                    </form>
                    @endforeach
                </div>
            </div>
    </div>

</body>
</html>

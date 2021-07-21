@extends('admin.template')
@section('content')
    <div class="container">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Contact List</h3>
                </div>
                <table class="table table-bordered table-striped table-condensed">
                    <tr>
                        <td>NAME</td>
                        <td>PHONE</td>
                    </tr>

                    @foreach($data as $row)
                        <tr>
                            <td>
                            	<a href="#" class="xedit"
                            	   data-pk="{{$row->Full_Name}}"
                            	   data-name="name">
                            	   {{$row->Full_Name}}</a>
                            </td>

                             <td>
                            	<a href="#" class="xedit"
                            	   data-pk="{{$row->Sex}}"
                            	   data-name="phone">
                            	   {{$row->Sex}}</a>
                            </td>
                        </tr>
                    @endforeach

                </table>
            </div>

        </div>
    </div>


    <script>
        $(document).ready(function () {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': '{{csrf_token()}}'
                    }
                });

                $('.xedit').editable({
                    url: '{{url("contacts/update")}}',
                    title: 'Update',
                    success: function (response, newValue) {
                        console.log('Updated', response)
                    }
                });

        })
    </script>
@endsection
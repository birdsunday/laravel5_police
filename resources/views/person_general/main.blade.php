@extends("layouts/main")
@section("content")



    <div ng-app="PersonGeneral">

        <ui-view></ui-view>
    </div>

@stop


@section('javascript')
    <script type="text/javascript" src="/app/person_general/app.js"></script>
    <script>
        current_role = "<% Auth::user()->role->key %>"

    </script>

@stop





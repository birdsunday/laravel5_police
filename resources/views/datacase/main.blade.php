@extends("layouts/main")
@section("content")



    <div ng-app="DataCase">

        <ui-view></ui-view>
    </div>

@stop


@section('javascript')
    <script>
        current_role = "<% Auth::user()->role->key %>"
    </script>
    <script type="text/javascript" src="/app/datacase/app.js"></script>
    <script>
        // Create fancybox2 gallery
        function DemoGallery(){
            $('.fancybox').fancybox({
                openEffect	: 'none',
                closeEffect	: 'none'
            });
        }
        $(document).ready(function() {
            // Load Fancybox2 and make gallery in callback
            LoadFancyboxScript(DemoGallery);
        });
    </script>
    <style type="text/css">
        #scroll_case {
            width:auto;
            height:465px;
            overflow:auto;
        }
        #scroll_edit {
            width:auto;
            height:320px;
            overflow:auto;
        }
        #scroll_add {
            width:auto;
            height:400px;
            overflow:auto;
        }
        #scroll_file {
            width:auto;
            height:400px;
            overflow:auto;
        }
        #scroll_person {
            width:auto;
            height:320px;
            overflow:auto;
        }
        #scroll_pdf {
            width:auto;
            height:390px;
            overflow:auto;
        }

    </style>

@stop





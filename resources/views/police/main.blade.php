@extends("layouts/main")
@section("content")



    <div ng-app="UserPolice">
        <ui-view></ui-view>
    </div>

@stop


@section('javascript')
    <script type="text/javascript" src="/app/police/app.js"></script>
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
        #scroll_demo {
            width:auto;
            height:500px;
            overflow:auto;
        }

    </style>

@stop





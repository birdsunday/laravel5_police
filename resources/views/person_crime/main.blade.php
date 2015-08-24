@extends("layouts/main")
@section("content")



    <div ng-app="Person">

        <ui-view></ui-view>

    </div>



@stop


@section('javascript')
    <script>
        current_role = "<% Auth::user()->role->key %>"

    </script>
    <script type="text/javascript" src="/app/person_crime/app.js"></script>


    <script type="text/javascript">
        $(function () {


            $("#id_datetime_picker0").datetimepicker({
                format:'d-m-Y H:m',
                lang:'th',  // แสดงภาษาไทย
                yearOffset:543,  // ใช้ปี พ.ศ. บวก 543 เพิ่มเข้าไปในปี ค.ศ
                closeOnDateSelect:true
            });


            $(".css_i_select").on("change",function(){
                var i_select=$(this).val();
                if(i_select=="A"){
                    $(this).parents("tr").find(".css_more").show();
                }else{
                    $(this).parents("tr").find(".css_more").hide();
                }
            });


            $("#addRow").on("click",function(){
                // ส่วนของการ clone ข้อมูลด้วย jquery clone() ค่า true คือ
                // การกำหนดให้ ไม่ต้องมีการ ดึงข้อมูลจากค่าเดิมมาใช้งาน
                // รีเซ้ตเป็นค่าว่าง ถ้ามีข้อมูลอยู่แล้ว ทั้ง select หรือ input

                $(".datarow:eq(0)").clone(true)
                        .find("input").attr("value","").end()
                        .find("select").attr("value","").end()  //
                        .appendTo($(".place-datarow"));
                var lastIndex=$(".css_datetime_picker").size()-1; // หา index ของตัว input ล่าสุด
                var newId="id_datetime_picker"+lastIndex;
                var objID="#"+newId;
                var placeParent=$(".css_datetime_picker:eq("+lastIndex+")").parents("td");
                // แทนด้วย input ใหม่ ทับตัวเก่าไปเลย
                $(placeParent).html("<input type=\"text\" class=\"form-control css_datetime_picker\" name=\"date_product[]\" >");
                $(".css_datetime_picker:eq("+lastIndex+")")
                        .attr("id", newId) // - กำหนด id เป็นค่าใหม่
                        .unbind(); // - ยกเลิกการจัดการทั้งหมด ที่ได้มาจากตัว clone
                $(objID).datetimepicker(); // - เรียกใช้ datetimepicker() ใหม่อีกครั้ง

            });


        });
    </script>


    <script type="text/javascript">

        function autoTab(obj) {



            var pattern = new String("_-____-_____-_-__"); // กำหนดรูปแบบในนี้
            var pattern_ex = new String("-"); // กำหนดสัญลักษณ์หรือเครื่องหมายที่ใช้แบ่งในนี้
            var returnText = new String("");
            var obj_l = obj.value.length;
            var obj_l2 = obj_l - 1;
            for (i = 0; i < pattern.length; i++) {
                if (obj_l2 == i && pattern.charAt(i + 1) == pattern_ex) {
                    returnText += obj.value + pattern_ex;
                    obj.value = returnText;
                }
            }
            if (obj_l >= pattern.length) {
                obj.value = obj.value.substr(0, pattern.length);
            }


        }
    </script>


    <script>


        // Create fancybox2 gallery
        function DemoGallery() {
            $('.fancybox').fancybox({
                openEffect: 'none',
                closeEffect: 'none'
            });
        }
        $(document).ready(function () {
            // Load Fancybox2 and make gallery in callback
            LoadFancyboxScript(DemoGallery);
        });
    </script>

    <style type="text/css">
        #scroll_demo {
            width: auto;
            height: auto;
            overflow: auto;
        }

        #scroll_home {
            width: auto;
            height: auto;
            overflow: auto;
        }

        #scroll_edit {
            width: auto;
            height: auto;
            overflow: auto;
        }
    </style>



@stop





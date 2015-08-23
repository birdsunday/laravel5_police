

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

    $(function(){

        var thaiYear = function (ct) {
            var leap=3;
            var dayWeek=["พฤ.", "ศ.", "ส.", "อา.","จ.", "อ.", "พ."];
            if(ct){
                var yearL=new Date(ct).getFullYear()-543;
                leap=(((yearL % 4 == 0) && (yearL % 100 != 0)) || (yearL % 400 == 0))?2:3;
                if(leap==2){
                    dayWeek=["ศ.", "ส.", "อา.", "จ.","อ.", "พ.", "พฤ."];
                }
            }
            this.setOptions({
                i18n:{ th:{dayOfWeek:dayWeek}},dayOfWeekStart:leap
            })
        };

        $("#mydateth").datetimepicker({
            timepicker:false,  // กำหนด ไม่แสดงตัวเลือกเวลา
            format:'d-m-Y',  // กำหนดรูปแบบวันที่ ที่ใช้ เป็น 00-00-0000
            lang:'th',  // แสดงภาษาไทย
            yearStart:1914,  // ช่วงเลือกปีเริ่มต้น ใช้ ค.ศ.
            yearOffset:543,  // ใช้ปี พ.ศ. บวก 543 เพิ่มเข้าไปในปี ค.ศ
            onShow:thaiYear,
            onChangeMonth:thaiYear,
            closeOnDateSelect:true // ปิด ถ้าเลือกวันที่แล้ว
        });

        $("#mydateth").on("change",function(){
            var dayBirth=$(this).val();
            var getdayBirth=dayBirth.split("-");
            var YB=getdayBirth[2]-543;
            var MB=getdayBirth[1];
            var DB=getdayBirth[0];

            var setdayBirth=moment(YB+"-"+MB+"-"+DB);
            var setNowDate=moment();
            var yearData=setNowDate.diff(setdayBirth, 'years', true); // ข้อมูลปีแบบทศนิยม
            var yearFinal=Math.round(setNowDate.diff(setdayBirth, 'years', true),0); // ปีเต็ม
            var yearReal=setNowDate.diff(setdayBirth, 'years'); // ปีจริง
            var monthDiff=Math.floor((yearData-yearReal)*12); // เดือน
            var str_year_month=yearReal+" ปี "+monthDiff+" เดือน"; // ต่อวันเดือนปี
            $("#age").val(str_year_month);

        });

    });




    $(function () {


        $("#id_datetime_picker0").datetimepicker({
            format:'d-m-Y H:m',
            lang:'th',  // �ʴ�������
            yearOffset:543,  // ��� �.�. �ǡ 543 ��������㹻� �.�
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
            // ��ǹ�ͧ��� clone �����Ŵ��� jquery clone() ��� true ���
            // ��á�˹���� ����ͧ�ա�� �֧�����Ũҡ����������ҹ
            // �����繤����ҧ ����բ������������� ��� select ���� input

            $(".datarow:eq(0)").clone(true)
                    .find("input").attr("value","").end()
                    .find("select").attr("value","").end()  //
                    .appendTo($(".place-datarow"));
            var lastIndex=$(".css_datetime_picker").size()-1; // �� index �ͧ��� input ����ش
            var newId="id_datetime_picker"+lastIndex;
            var objID="#"+newId;
            var placeParent=$(".css_datetime_picker:eq("+lastIndex+")").parents("td");
            // ᷹���� input ���� �Ѻ����������
            $(placeParent).html("<input type=\"text\" class=\"form-control css_datetime_picker\" name=\"date_product[]\" >");
            $(".css_datetime_picker:eq("+lastIndex+")")
                    .attr("id", newId) // - ��˹� id �繤������
                    .unbind(); // - ¡��ԡ��èѴ��÷����� ������Ҩҡ��� clone
            $(objID).datetimepicker(); // - ���¡�� datetimepicker() �����ա����

        });


    });

    $(function(){

        var thaiYear = function (ct) {
            var leap=3;
            var dayWeek=["��.", "�.", "�.", "��.","�.", "�.", "�."];
            if(ct){
                var yearL=new Date(ct).getFullYear()-543;
                leap=(((yearL % 4 == 0) && (yearL % 100 != 0)) || (yearL % 400 == 0))?2:3;
                if(leap==2){
                    dayWeek=["�.", "�.", "��.", "�.","�.", "�.", "��."];
                }
            }
            this.setOptions({
                i18n:{ th:{dayOfWeek:dayWeek}},dayOfWeekStart:leap
            })
        };

        $("#mydateth").datetimepicker({
            timepicker:false,  // ��˹� ����ʴ�������͡����
            format:'d-m-Y',  // ��˹��ٻẺ�ѹ��� ����� �� 00-00-0000
            lang:'th',  // �ʴ�������
            yearStart:1914,  // ��ǧ���͡��������� �� �.�.
            yearOffset:543,  // ��� �.�. �ǡ 543 ��������㹻� �.�
            onShow:thaiYear,
            onChangeMonth:thaiYear,
            closeOnDateSelect:true // �Դ ������͡�ѹ�������
        });

        $("#mydateth").on("change",function(){
            var dayBirth=$(this).val();
            var getdayBirth=dayBirth.split("-");
            var YB=getdayBirth[2]-543;
            var MB=getdayBirth[1];
            var DB=getdayBirth[0];

            var setdayBirth=moment(YB+"-"+MB+"-"+DB);
            var setNowDate=moment();
            var yearData=setNowDate.diff(setdayBirth, 'years', true); // �����Ż�Ẻ�ȹ���
            var yearFinal=Math.round(setNowDate.diff(setdayBirth, 'years', true),0); // �����
            var yearReal=setNowDate.diff(setdayBirth, 'years'); // �ը�ԧ
            var monthDiff=Math.floor((yearData-yearReal)*12); // ��͹
            var str_year_month=yearReal+" �� "+monthDiff+" ��͹"; // ����ѹ��͹��
            $("#age").val(str_year_month);

        });

    });


<html>
<head>
    <style>
        body {
            font-size: 16pt;
        }
        h5{
            font-family: garuda;
        }


    </style>
</head>
<body>

<table align="center" border="0" width="100%">
    <ol>
        <tr>
            <td colspan="4" align="center"><h3>แบบประวัติบุคคลทั่วไป</h3></td>

        </tr>

        <tr>
            @if($dataperson->typepeople)
                <td colspan="3">ประเภทบุคคล : <label><?php echo $dataperson->typepeople ?> </label></td>
            @else
                <td colspan="3">ประเภทบุคคล : <label> - </label></td>
            @endif

            <td rowspan="4" align="center" style="font-family : sans-serif, Arial;">
                <?php if($dataperson->photo != null) :  ?>
                <img src="<?php echo $dataperson->photo;?>" width="128" height="128">
                <?php else : ?>
                <img src="/img/square-image.png" width="128" height="128">
                <?php endif ?>

            </td>

        </tr>
        <tr>
            @if($dataperson->nametitle->name_title)
                <td colspan="3"><li>ชื่อ-ชื่อสกุล : <label><?php echo $dataperson->nametitle->name_title ?> <?php echo $dataperson->name ?> <?php echo $dataperson->surname ?></label></td>
            @else
                <td colspan="3"><li>ชื่อ-ชื่อสกุล : <label> - </label></td>
            @endif
        </tr>
        <tr>

            @if($dataperson->age)
                <td colspan="3"><li>อายุ : <label><?php echo $dataperson->age ?> </label></td>
            @else
                <td colspan="3"><li>อายุ : <label> - </label></td>
            @endif

        </tr>


        <tr>
            @if($dataperson->idcard)

                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;หมายเลขบัตรประชาชน/หนังสือเดินทาง : <label><?php echo $dataperson->idcard ?> </label></td>
            @else
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;หมายเลขบัตรประชาชน/หนังสือเดินทาง : <label> - </label></td>
            @endif
        </tr>

        <tr>
            @if($dataperson->addresspresent->present_address)
                <td colspan="3"><li>ที่อยู่ปัจจุบัน : <label><?php echo $dataperson->addresspresent->present_address ?></label></td>
            @else
                <td colspan="3"><li>ที่อยู่ปัจจุบัน : <label> - </label></td>
            @endif
            @if($dataperson->addresspresent->present_tel)
                <td colspan="1">โทร : <label><?php echo $dataperson->addresspresent->present_tel ?></label></td>
            @else
                <td colspan="1">โทร : <label> - </label></td>
            @endif
        </tr>


        <tr>
            @if($dataperson->addressoriginal->original_address)
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;ภูมิลำเนาเดิม : <label><?php echo $dataperson->addressoriginal->original_address ?></label></td>
            @else
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;ภูมิลำเนาเดิม : <label> - </label></td>
            @endif
            @if($dataperson->addresspresent->original_tel)
                <td colspan="1">โทร : <label><?php echo $dataperson->addressoriginal->original_tel ?></label></td>
            @else
                <td colspan="1">โทร : <label> - </label></td>
            @endif
        </tr>
        <tr>
            @if($dataperson->career)
                <td colspan="4"><li>อาชีพ : <label><?php echo $dataperson->career ?></label></td>
            @else
                <td colspan="4"><li>อาชีพ : <label> - </label></td>
            @endif
        </tr>


        <?php foreach($dataperson->addressoffice as $addressoffice) : ?>

        <tr>
            @if($addressoffice->office)
                <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;สถานที่ทำงาน : <label><?php echo $addressoffice->office ?></label></td>
            @else
                <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;สถานที่ทำงาน : <label> - </label></td>
            @endif
        </tr>
        <tr>
            @if($addressoffice->office_address)
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;ตั้งอยู่ที่ : <label><?php echo $addressoffice->office_address ?> </label></td>
            @else
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;ตั้งอยู่ที่ : <label> - </label></td>
            @endif
            @if($addressoffice->office_tel)
                <td colspan="1">โทร : <label><?php echo $addressoffice->office_tel ?></label></td>
            @else
                <td colspan="1">โทร : <label> - </label></td>
            @endif

        </tr>

        <?php endforeach; ?>
        <tr>
            @if($dataperson->education)
                <td colspan="4"><li>การศึกษา : <label><?php echo $dataperson->education ?></label></td>
            @else
                <td colspan="4"><li>การศึกษา : <label> - </label></td>
            @endif
        </tr>
        <tr>
            @if($dataperson->datafather->father_name)
                <td colspan="2"><li>ชื่อบิดา-สกุล : <label><?php echo $dataperson->datafather->father_name ?> <?php echo $dataperson->datafather->father_surname ?></label></td>
            @else
                <td colspan="2"><li>ชื่อบิดา-สกุล : <label> - </label></td>
            @endif
            @if($dataperson->datafather->father_age)
                <td colspan="1">อายุ : <label><?php echo $dataperson->datafather->father_age ?></label></td>
            @else
                <td colspan="1">อายุ : <label> - </label></td>
            @endif
            @if($dataperson->datafather->father_live_died)
                <td colspan="1">มีชีวิต/เสียชีวิต : <label><?php echo $dataperson->datafather->father_live_died ?></label></td>
            @else
                <td colspan="1">มีชีวิต/เสียชีวิต : <label> - </label></td>
            @endif
        </tr>
        <tr>
            @if($dataperson->datafather->father_address)
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่ : <label><?php echo $dataperson->datafather->father_address ?></label></td>
            @else
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่ : <label> - </label></td>
            @endif
            @if($dataperson->datafather->father_tel)
                <td colspan="1">โทร : <label><?php echo $dataperson->datafather->father_tel ?></label></td>
            @else
                <td colspan="1">โทร : <label> - </label></td>
            @endif
        </tr>

        <tr>
            @if($dataperson->datafather->father_career)
                <td colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;อาชีพ : <label><?php echo $dataperson->datafather->father_career ?></label></td>
            @else
                <td colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;อาชีพ : <label> - </label></td>
            @endif
            @if($dataperson->datafather->father_nameoffice)
                <td colspan="2">ที่ทำงาน : <label><?php echo $dataperson->datafather->father_nameoffice ?></label></td>
            @else
                <td colspan="2">ที่ทำงาน : <label> - </label></td>
            @endif
            @if($dataperson->datafather->father_nameoffice_tel)
                <td colspan="1">โทร : <label><?php echo $dataperson->datafather->father_nameoffice_tel ?></label></td>
            @else
                <td colspan="1">โทร : <label> - </label></td>
            @endif
        </tr>

        <tr>
            @if($dataperson->datamother->mother_name)
                <td colspan="2"><li>ชื่อมารดา :  <label><?php echo $dataperson->datamother->mother_name ?> <?php echo $dataperson->datamother->mother_surname?></label></td>
            @else
                <td colspan="2"><li>ชื่อมารดา: <label> - </label></td>
            @endif
            @if($dataperson->datamother->mother_age)
                <td colspan="1">อายุ : <label><?php echo $dataperson->datamother->mother_age ?></label></td>
            @else
                <td colspan="1">อายุ: <label> - </label></td>
            @endif
            @if($dataperson->datamother->mother_live_died)
                <td colspan="1">มีชีวิต/เสียชีวิต : <label><?php echo $dataperson->datamother->mother_live_died ?></label></td>
            @else
                <td colspan="1">มีชีวิต/เสียชีวิต: <label> - </label></td>
            @endif

        </tr>
        <tr>
            @if($dataperson->datamother->mother_address)
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่ : <label><?php echo $dataperson->datamother->mother_address ?></label></td>
            @else
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;มีชีวิต/เสียชีวิต: <label> - </label></td>
            @endif
            @if($dataperson->datamother->mother_tel)
                <td colspan="1">โทร : <label><?php echo $dataperson->datamother->mother_tel ?></label></td>
            @else
                <td colspan="1">โทร: <label> - </label></td>
            @endif
        </tr>
        <tr>
            @if($dataperson->datamother->mother_career)
                <td colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;อาชีพ : <label><?php echo $dataperson->datamother->mother_career ?></label></td>
            @else
                <td colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;อาชีพ: <label> - </label></td>
            @endif
            @if($dataperson->datamother->mother_nameoffice)
                <td colspan="2">ทำงาน : <label><?php echo $dataperson->datamother->mother_nameoffice ?></label></td>
            @else
                <td colspan="2">ทำงาน: <label> - </label></td>
            @endif
            @if($dataperson->datamother->mother_nameoffice_tel)
                <td colspan="1">โทร :  <label><?php echo $dataperson->datamother->mother_nameoffice_tel ?></label></td>
            @else
                <td colspan="1">โทร: <label> - </label></td>
            @endif
        </tr>

        <tr>
            @if($dataperson->nametitle->name_title)
                <td colspan="2"><li>ชื่อสามี/ภรรยา : <label><?php echo $dataperson->nametitle->name_title ?> <?php echo $dataperson->dataspouse->spouse_name ?> <?php echo $dataperson->dataspouse->spouse_surname ?></label></td>
            @else
                <td colspan="2"><li>ชื่อสามี/ภรรยา: <label> - </label></td>
            @endif
            @if($dataperson->dataspouse->spouse_age)
                <td colspan="1">อายุ : <label><?php echo $dataperson->dataspouse->spouse_age ?></label></td>
            @else
                <td colspan="1">อายุ: <label> - </label></td>
            @endif
            @if($dataperson->dataspouse->spouse_live_died)
                <td colspan="1">มีชีวิต/เสียชีวิต : <label><?php echo $dataperson->dataspouse->spouse_live_died ?></label></td>
            @else
                <td colspan="1">มีชีวิต/เสียชีวิตุ: <label> - </label></td>
            @endif

        </tr>
        <tr>
            @if($dataperson->dataspouse->spouse_address)
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่ : <label><?php echo $dataperson->dataspouse->spouse_address ?></label></td>
            @else
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่ : <label> - </label></td>
            @endif
            @if($dataperson->dataspouse->spouse_tel)
                <td colspan="1">โทร : <label><?php echo $dataperson->dataspouse->spouse_tel ?></label></td>
            @else
                <td colspan="1">โทร: <label> - </label></td>
            @endif
        </tr>
        <tr>
            @if($dataperson->dataspouse->spouse_career)
                <td colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;อาชีพ : <label><?php echo $dataperson->dataspouse->spouse_career ?></label></td>
            @else
                <td colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;โทร: <label> - </label></td>
            @endif
            @if($dataperson->dataspouse->spouse_nameoffice)
                <td colspan="2">ที่ทำงาน : <label><?php echo $dataperson->dataspouse->spouse_nameoffice ?></label></td>
            @else
                <td colspan="2">ที่ทำงาน: <label> - </label></td>
            @endif
            @if($dataperson->dataspouse->spouse_nameoffice_tel)
                <td colspan="1">โทร : <label><?php echo $dataperson->dataspouse->spouse_nameoffice_tel ?></label></td>
            @else
                <td colspan="1">โทร: <label> - </label></td>
            @endif
        </tr>

        <tr>
            <td colspan="4"><li>ชื่อบุตร </td>


        </tr>
        <ol>
            <?php foreach($dataperson->datachild as $datachild) : ?>
            <tr>
                @if($datachild->nametitle->name_title)
                    <td colspan="2"><li>ชื่อบุตร : <label><?php echo $datachild->nametitle->name_title ?> <?php echo $datachild->child_name ?> <?php echo $datachild->child_surname ?></label></td>
                @else
                    <td colspan="2"><li>ชื่อบุตร: <label> - </label></td>
                @endif
                @if($dataperson->$datachild->child_age)
                    <td colspan="1">อายุ : <label><?php echo $datachild->child_age ?></label></td>
                @else
                    <td colspan="1">อายุ: <label> - </label></td>
                @endif
                @if($datachild->child_live_died)
                    <td colspan="1">มีชีวิต/เสียชีวิต : <label><?php echo $datachild->child_live_died ?></label></td>
                @else
                    <td colspan="1">มีชีวิต/เสียชีวิต: <label> - </label></td>
                @endif
            </tr>

            <tr>
                @if($datachild->child_address)
                    <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่ : <label><?php echo $datachild->child_address ?></label></td>
                @else
                    <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่: <label> - </label></td>
                @endif
                @if($datachild->child_tel)
                    <td colspan="1">โทร : <label><?php echo $datachild->child_tel ?></label></td>
                @else
                    <td colspan="1">โทร: <label> - </label></td>
                @endif
            </tr>
            <tr>
                @if($datachild->child_career)
                    <td colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;อาชีพ : <label><?php echo $datachild->child_career ?></label></td>
                @else
                    <td colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;อาชีพ: <label> - </label></td>
                @endif
                @if($datachild->child_nameoffice)
                    <td colspan="2">สถานที่ทำงาน : <label><?php echo $datachild->child_nameoffice ?></label></td>
                @else
                    <td colspan="2">สถานที่ทำงาน: <label> - </label></td>
                @endif
                @if($datachild->child_nameoffice_tel)
                    <td colspan="1">โทร : <label><?php echo $datachild->child_nameoffice_tel ?></label></td>
                @else
                    <td colspan="1">โทร: <label> - </label></td>
                @endif
            </tr>
            <?php endforeach; ?>
        </ol>


        <tr>
            <td colspan="4"><li>พาหนะที่ใช้ :
                    <?php foreach($dataperson->vehicle as $vehicle) : ?><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label> <?php if($vehicle->vehicle_brand ){ ?> - ยี่ห้อ <?php echo $vehicle->vehicle_brand ?><?php }else{  ?> - ยี่ห้อ -<?php } ?>
                        <?php if($vehicle->vehicle_generation ){ ?>  รุ่น <?php echo $vehicle->vehicle_generation ?><?php }else{  ?> รุ่น -<?php } ?>
                        <?php if($vehicle->vehicl_color ){ ?>  สี <?php echo $vehicle->vehicl_color ?><?php }else{  ?> สี -<?php } ?>
                        <?php if($vehicle->vehicle_number ){ ?>   เลขทะเบียน <?php echo $vehicle->vehicle_number ?><?php }else{  ?> เลขทะเบียน -<?php } ?>
                        <?php if($vehicle->vehicle_group ){ ?>   หมวด <?php echo $vehicle->vehicle_group ?><?php }else{  ?> หมวด -<?php } ?>
                        <?php if($vehicle->vehicle_province  ){ ?>  จังหวัด <?php echo $vehicle->vehicle_province ?><?php }else{  ?> จังหวัด -<?php } ?>

                    </label><?php endforeach; ?></td>

        </tr>
        <tr>
            <td colspan="4"><li>บุคคลที่อาศัยอยู่ในครอบครัว  <label></label></td>
        </tr>
        <ol>
            <?php foreach($dataperson->personfamily as $personfamily) : ?>
            <tr>
                @if($personfamily->nametitle->name_title)
                    <td colspan="3"><li>ชื่อ-สกุล : <label><?php echo $personfamily->nametitle->name_title ?> <?php echo $personfamily->personfamily_name ?> <?php echo $datachild->personfamily_surname ?></label></td>
                @else
                    <td colspan="3"><li>ชื่อ-สกุล: <label> - </label></td>
                @endif

                @if($personfamily->personfamily_age)
                    <td colspan="1">อายุ : <label><?php echo $personfamily->personfamily_age ?></label></td>
                @else
                    <td colspan="1">อายุ: <label> - </label></td>
                @endif
            </tr>
            <tr>
                @if($personfamily->personfamily_idnumber)
                    <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เลขบัตร : <label><?php echo $personfamily->personfamily_idnumber ?></label></td>
                @else
                    <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เลขบัตร: <label> - </label></td>
                @endif
            </tr>

            <tr>
                @if($personfamily->personfamily_nameoffice)
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;สถานที่ทำงาน : <label><?php echo $personfamily->personfamily_nameoffice ?></label></td>
                @else
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เลขบัตร: <label> - </label></td>
                @endif
                @if($personfamily->personfamily_nameoffice_tel)
                    <td colspan="1">โทร : <label><?php echo $personfamily->personfamily_nameoffice_tel ?></label></td>
                @else
                    <td colspan="1">โทร: <label> - </label></td>
                @endif
                @if($personfamily->personfamily_career)
                    <td colspan="1">อาชีพ : <label><?php echo $personfamily->personfamily_career ?></label></td>
                @else
                    <td colspan="1">อาชีพ: <label> - </label></td>
                @endif
            </tr>
            <tr>
                @if($personfamily->personfamily_address)
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่ : <label><?php echo $personfamily->personfamily_address ?></label></td>
                @else
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่: <label> - </label></td>
                @endif
                @if($personfamily->personfamily_tel)
                    <td colspan="2">โทร : <label><?php echo $personfamily->personfamily_tel ?></label></td>
                @else
                    <td colspan="2">โทร : <label> - </label></td>
                @endif
            </tr><?php endforeach; ?>
        </ol>

        <tr>

            <td colspan="4"><li>คนรับใช้ / ลูกจ้าง  <label></label></td>
        </tr>
        <ol>
            <?php foreach($dataperson->employee as $employee) : ?>
            <tr>
                @if($employee->nametitle->name_title)
                    <td colspan="3"><li>ชื่อ-สกุล : <label><?php echo $employee->nametitle->name_title ?>  <?php echo $employee->employee_name ?> <?php echo $employee->employee_surname ?></label></td>
                @else
                    <td colspan="3"><li>ชื่อ-สกุล: <label> - </label></td>
                @endif
                @if($employee->employee_age)
                    <td colspan="1">อายุ : <label><?php echo $employee->employee_age ?></label></td>
                @else
                    <td colspan="1">อายุ: <label> - </label></td>
                @endif
            </tr>
            <tr>
                @if($personfamily->employee_idnumber)
                    <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เลขบัตร : <label><?php echo $personfamily->employee_idnumber ?></label></td>
                @else
                    <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เลขบัตร: <label> - </label></td>
                @endif
            </tr>
            <tr>
                @if($employee->employee_address)
                    <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่ : <label><?php echo $employee->employee_address ?></label></td>
                @else
                    <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่ : <label> - </label></td>
                @endif

            </tr><?php endforeach; ?>
        </ol>
        <tr>
            @if($dataperson->other)
                <td colspan="4"><li>อื่นๆที่น่าสนใจ : <label><?php echo $dataperson->other ?></label></td>
            @else
                <td colspan="4"><li>อื่นๆที่น่าสนใจ : <label> - </label></td>
            @endif
        </tr>


        <tr>
            @if($dataperson->created_at)
                <td colspan="4">วันเวลาที่บันทึก : <label><?php echo $dataperson->date ?></label></td>
            @else
                <td colspan="4">วันเวลาที่บันทึก : <label> - </label></td>
            @endif
        </tr>

        <tr>
            <td colspan="2"></td>

        </tr>
        <tr>
            <td colspan="2"></td>

        </tr>
        <tr>
            <td colspan="2"></td>

        </tr>
        <tr>
            <td colspan="2"></td>

        </tr>
        <tr>
            <td colspan="2"></td>

        </tr>
        <tr>
            <td colspan="2"></td>

        </tr>
        <tr>
            <td colspan="2"></td>

        </tr>
        <tr>
            <td colspan="2"></td>

        </tr>
        <tr>
            <td colspan="2"></td>

        </tr>
        <tr>
            <td colspan="2"></td>

        </tr>
        <tr>
            <td colspan="2"></td>

        </tr>
        <tr>
            <td colspan="2"></td>

        </tr>


        <tr>
            <td colspan="2">ผู้จัดทำ</td>
            <td colspan="2">วัน/เดือน/ปีที่จัดทำ:</td>

        </tr>
        <tr>
            <td colspan="4">ตำแหน่ง</td>


        </tr>




    </ol>
</table>



</body>


</html>




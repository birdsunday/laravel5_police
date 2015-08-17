<html>
<head>
<style>
    body {
        font-size: 16pt;
        font-family: TH SarabunIT;
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
        <td colspan="4" align="center"><h3>แบบประวัติบุคคลที่เกี่ยวข้องกับอาชญากรรม</h3></td>

    </tr>

    <tr>
        <td colspan="3">ประเภทบุคคล : <label><?php echo $dataperson->typepeople ?> </label></td>
        <td rowspan="5" align="center" style="font-family : sans-serif, Arial;">
            <?php if($dataperson->photo != null) :  ?>
                <img src="<?php echo $dataperson->photo;?>" width="128" height="128">
            <?php else : ?>
                <img src="/img/square-image.png" width="128" height="128">
            <?php endif ?>

            </td>

    </tr>
    <tr>
        <td colspan="3"><li>ชื่อ-ชื่อสกุล : <label><?php echo $dataperson->name ?> <?php echo $dataperson->surname ?></label></td>

    </tr>
    <tr>

        <td colspan="3"><li>อายุ :


    </tr>
    <tr>

        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;นามเเฝง : <label></label></td>

    </tr>



    <tr>

        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;หมายเลขประจำตัวประชาชน : <label><?php echo $dataperson->idcard ?> </label></td>

    </tr>

    <tr>
        <td colspan="4"><li>ที่อยู่ปัจจุบัน : <label><?php echo $dataperson->addresspresent->present_address ?></label></td>

    </tr>
    <tr>
        <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;โทร : <label><?php echo $dataperson->addresspresent->present_tel ?></label></td>

    </tr>


    <tr>

        <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;ภูมิลำเนาเดิม : <label><?php echo $dataperson->addressoriginal->original_address ?></label></td>

    </tr>
    <tr>
        <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;โทร : <label><?php echo $dataperson->addressoriginal->original_tel ?></label></td>

    </tr>
    <tr>
        <td colspan="4"><li>อาชีพ : <label><?php echo $dataperson->career ?></label></td>
    </tr>


    <?php foreach($dataperson->addressoffice as $addressoffice) : ?>

     <tr>
        <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;สถานที่ทำงาน : <label><?php echo $addressoffice->office ?></label></td>
     </tr>
            <tr>
                    <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;ตั้งอยู่ที่ : <label><?php echo $addressoffice->office_address ?> </label></td>


            </tr>

            <tr>
                <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;โทร : <label><?php echo $addressoffice->office_tel ?></label></td>

            </tr>
    <?php endforeach; ?>
    <tr>

        <td colspan="4"><li>การศึกษา : <label><?php echo $dataperson->education ?></label></td>
    </tr>
    <tr>
        <td colspan="2"><li>ชื่อบิดา-สกุล : <label><?php echo $dataperson->datafather->father_name ?> <?php echo $dataperson->datafather->father_surname ?></label></td>
        <td colspan="1">อายุ : <label><?php echo $dataperson->datafather->father_age ?></label></td>
        <td colspan="1">มีชีวิต/เสียชีวิต : <label><?php echo $dataperson->datafather->father_live_died ?></label></td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่ : <label><?php echo $dataperson->datafather->father_address ?></label></td>
        <td colspan="1">โทร : <label><?php echo $dataperson->datafather->father_tel ?></label></td>
    </tr>

    <tr>
        <td colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;อาชีพ : <label><?php echo $dataperson->datafather->father_career ?></label></td>
        <td colspan="2">ที่ทำงาน : <label><?php echo $dataperson->datafather->father_nameoffice ?></label></td>
        <td colspan="1">โทร : <label><?php echo $dataperson->datafather->father_nameoffice_tel ?></label></td>

    </tr>

    <tr>
        <td colspan="2"><li>ชื่อมารดา :  <label><?php echo $dataperson->datamother->mother_name ?> <?php echo $dataperson->datamother->mother_surname?></label></td>
        <td colspan="1">อายุ : <label><?php echo $dataperson->datamother->mother_age ?></label></td>
        <td colspan="1">มีชีวิต/เสียชีวิต : <label><?php echo $dataperson->datamother->mother_live_died ?></label></td>


    </tr>
    <tr>
        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่ : <label><?php echo $dataperson->datamother->mother_address ?></label></td>
        <td colspan="1">โทร : <label><?php echo $dataperson->datamother->mother_tel ?></label></td>
    </tr>
    <tr>
        <td colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;อาชีพ : <label><?php echo $dataperson->datamother->mother_career ?></label></td>
        <td colspan="2">ทำงาน : <label><?php echo $dataperson->datamother->mother_nameoffice ?></label></td>
        <td colspan="1">โทร :  <label><?php echo $dataperson->datamother->mother_nameoffice_tel ?></label></td>

    </tr>

    <tr>
        <td colspan="2"><li>ชื่อสามี/ภรรยา : <label><?php echo $dataperson->dataspouse->spouse_name ?> <?php echo $dataperson->dataspouse->spouse_surname ?></label></td>
        <td colspan="1">อายุ : <label><?php echo $dataperson->dataspouse->spouse_age ?></label></td>
        <td colspan="1">มีชีวิต/เสียชีวิต : <label><?php echo $dataperson->dataspouse->spouse_live_died ?></label></td>


    </tr>
    <tr>
        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่ : <label><?php echo $dataperson->dataspouse->spouse_address ?></label></td>
        <td colspan="1">โทร : <label><?php echo $dataperson->dataspouse->spouse_tel ?></label></td>

    </tr>
    <tr>
        <td colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;อาชีพ : <label><?php echo $dataperson->dataspouse->spouse_career ?></label></td>
        <td colspan="2">ที่ทำงาน : <label><?php echo $dataperson->dataspouse->spouse_nameoffice ?></label></td>
        <td colspan="1">โทร : <label><?php echo $dataperson->dataspouse->spouse_nameoffice_tel ?></label></td>

    </tr>


    <?php foreach($dataperson->datachild as $datachild) : ?>
    <tr>
        <td colspan="2"><li>ชื่อบุตร: <label><?php echo $datachild->child_name ?> <?php echo $datachild->child_surname ?></label></td>
        <td colspan="1">อายุ : <label><?php echo $datachild->child_age ?></label></td>
        <td colspan="1">มีชีวิต/เสียชีวิต : <label><?php echo $datachild->child_live_died ?></label></td>

    </tr>

            <tr>
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;ที่อยู่ : <label><?php echo $datachild->child_address ?></label></td>
                <td colspan="1">โทร : <label><?php echo $datachild->child_tel ?></label></td>
            </tr>
            <tr>
                <td colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;อาชีพ : <label><?php echo $datachild->child_career ?></label></td>
                <td colspan="2">สถานที่ทำงาน : <label><?php echo $datachild->child_nameoffice ?></label></td>
                <td colspan="1">โทร : <label><?php echo $datachild->child_nameoffice_tel ?></label></td>

            </tr><?php endforeach; ?>


    <tr>
        <td colspan="2"><li>ตำหนิรูปพรรณ</td>
        <td colspan="2">- ส่วนสูงประมาณ : <label><?php echo $dataperson->height ?></label></td>

    </tr>
    <tr>

        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;- น้ำหนัก : <label><?php echo $dataperson->weight ?></label></td>
        <td colspan="2">- ผิว : <label><?php echo $dataperson->skin ?></label></td>


    </tr>
    <tr>
        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;- รูปร่าง : <label><?php echo $dataperson->shape ?></label></td>
        <td colspan="2">- ฟัน : <label><?php echo $dataperson->teeth ?></label></td>

    </tr>

    <tr>
        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;- คิ้ว : <label><?php echo $dataperson->eyebrow ?></label></td>
        <td colspan="2">- ทรงผม : <label><?php echo $dataperson->hairstyles ?></label></td>

    </tr>
    <tr>
        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;- ศีรษะ : <label><?php echo $dataperson->head ?></label></td>
        <td colspan="2">- ใบหน้า : <label><?php echo $dataperson->face ?></label></td>

    </tr>
    <tr>
        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;- ตา : <label><?php echo $dataperson->eye ?></label></td>
        <td colspan="2">- หู : <label><?php echo $dataperson->ear ?></label></td>
    </tr>
    <tr>

        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;- จมูก : <label><?php echo $dataperson->nose ?></label></td>
        <td colspan="2">- ปาก : <label><?php echo $dataperson->mouth ?></label></td>
    </tr>
    <tr>

        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;- คาง : <label><?php echo $dataperson->chin ?></label></td>
        <td colspan="2">- หนวด-เครา : <label><?php echo $dataperson->mirror ?></label></td>
    </tr>
    <tr>

        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;- แผลเป็นหรือตำหนิพิการ : <label><?php echo $dataperson->scar ?></label></td>
        <td colspan="2">- สำเนียง : <label><?php echo $dataperson->accent ?></label></td>
    </tr>
    <tr>

        <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;- ลักษณะเด่นที่สังเกตเห็นได้ง่าย : <label><?php echo $dataperson->nature ?></label></td>

    </tr>
    <tr>
        <td colspan="4"><li>อุปนิสัย : <label><?php echo $dataperson->personality ?></label></td>

    </tr>
    <tr>
        <td colspan="4"><li>สถานที่ชอบไปเที่ยวเตร่ : <label><?php echo $dataperson->location_gallivent ?></label></td>

    </tr>
    <tr>
        <td colspan="4"><li>ประวัติการกระทำความผิด : <label>
                    <?php foreach($dataperson->datacase as $person_datacase) : ?>
                        <?php if($person_datacase->name_case){ ?>

                            <tr>

                            <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>คดี <?php echo $person_datacase->name_case ?>
                                    เลขคดี <?php echo $person_datacase->number_case ?>
                                    ปี <?php echo $person_datacase->year_number_case ?>
                                    สถานนีตำรวจ <?php echo $person_datacase->station_number_case ?>
                                    </label></td>

                            </tr>

                        <?php } ?>

                    <?php endforeach; ?>
                </label></td>

    </tr>
    <tr>
        <td colspan="4"><li>อาวุธที่ใช้ก่อเหตุ : <label></label></td>

    </tr>
    <tr>

        <td colspan="4"><li>พาหนะที่ใช้ก่อเหตุ : <label></label></td>
    </tr>

    <tr>
        <td colspan="4"><li>ผู้ร่วมกระทำความผิด : <label>
                    <?php foreach($datacase->criminalhistory as $criminalhistory) : ?>
                        <?php if($criminalhistory->id != $dataperson->id){ ?>

                            - <?php echo $criminalhistory->name ?> <?php echo $criminalhistory->surname ?>

                        <?php } ?>
                    <?php endforeach; ?>
                    </label>

                </td>
    </tr>
    <tr>
        <td colspan="4"><li>รายละเอียดหรือวิธีการกระทำความผิด : <label></label></td>
    </tr>
    <tr>
        <td colspan="4"><li>พฤติการณ์อื่นๆที่น่าสนใจ : <label></label></td>
    </tr>


            <tr>
                <td colspan="4">วันที่เกิดเหตุ (YYYY-MM-DD) : <label></label></td>


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




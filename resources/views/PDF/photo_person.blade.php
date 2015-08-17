<html>
<head>
<style>
    body {
        font-size: 20pt;
        font-family: TH SarabunIT;
    }
    h5{
        font-family: garuda;
    }


</style>
</head>
<body>

<table align="center" border="0" width="100%">

    <tr>
        <td colspan="4" align="center"><h3>ประวัติบุคคล</h3></td>

    </tr>

    <tr>
        <td colspan="4" align="center" style="font-family : sans-serif, Arial;">

            <?php if($criminalhistory->photo != null) :  ?>
                <img src="<?php echo $criminalhistory->photo;?>" width="524" height="550">
            <?php else : ?>
                <img src="/img/square-image.png" width="514" height="514">
            <?php endif ?>

            </td>

    </tr>
    <tr>
        <td colspan="2"> <label>เลขบัตรประชาชน : <?php echo $criminalhistory->idcard ?> </label></td>
        <td colspan="2"> <label>ชื่อ-ชื่อสกุล : <?php echo $criminalhistory->nametitle->name_title ?> <?php echo $criminalhistory->name ?> <?php echo $criminalhistory->surname ?></label></td>

    </tr>
    <tr>

        <?php foreach($criminalhistory->datacase as $datacase) : ?>

            <td colspan="2"> <label>คดี/ข้อหา : <?php echo $datacase->name_case ?> </label></td>

            @if($datacase->data_case)
            <td colspan="2"> <label>วันเดือนปี เกิดเหตุ : <?php echo $datacase->data_case ?> </label></td>
            @else
                <td colspan="2"> <label>วันเดือนปี เกิดเหตุ : - </label></td>
            @endif
        <?php endforeach; ?>

    </tr>


</table>


</body>

</html>




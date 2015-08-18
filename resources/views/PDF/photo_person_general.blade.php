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

    <tr>
        <td colspan="4" align="center"><h3>รูปภาพ</h3></td>

    </tr>

    <tr>
        <td colspan="4" align="center" style="font-family : sans-serif, Arial;">

            <?php if($guesthistory->photo != null) :  ?>
                <img src="<?php echo $guesthistory->photo;?>" width="605" height="794">
            <?php else : ?>
                <img src="/img/square-image.png" width="514" height="514">
            <?php endif ?>

            </td>

    </tr>
    <tr>
        <td colspan="2"> <label>เลขบัตรประชาชน : <?php echo $guesthistory->idcard ?> </label></td>
        <td colspan="2"> <label>ชื่อ-ชื่อสกุล : <?php echo $guesthistory->nametitle->name_title ?> <?php echo $guesthistory->name ?> <?php echo $guesthistory->surname ?></label></td>

    </tr>


</table>


</body>

</html>




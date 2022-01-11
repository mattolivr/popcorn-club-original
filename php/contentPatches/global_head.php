<meta charset="UTF-8">
<title>
    <?php 
    if($_page == 'userprofile')
    {
        echo (($myProfile)?"Meu Perfil": $userData['qUser_name'])." - Popcorn Club";
    }
    else if($_page == 'contentpage')
    {
        echo $contentData['Nome']." - Popcorn Club" ;
    }
    else
    {
        echo "Popcorn Club";
    }
    ?>
</title>

<link <?php echo $_a_bootstrap?>>
<link rel="stylesheet" href=<?php echo $_a_resetCss?>>
<link rel="stylesheet" href=<?php echo $_a_globalCss?>>
<link rel="shortcut icon" href=<?php echo $_a_logo_fav?> type="img/x-icon"/>
<link rel="stylesheet" href="../css/<?php echo $_page;?>.css">

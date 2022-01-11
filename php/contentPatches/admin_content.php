<div id="admin_usericon">
    <img id="usericon" class="content_pic" src="<?php echo (@$_SESSION['logado'] && @$_SESSION['userdata']['qUser_pic'] != null)?"../upload/".@$_SESSION['userdata']['qUser_pic']:"../img/icon.png"?>">
    <div id="div_username">
        <span id="username"><?php echo (strlen($_SESSION['userdata']['qUser_name']) < 18)? "Olá, ".$_SESSION['userdata']['qUser_name']."!":$_SESSION['userdata']['qUser_name'];?></span>
    </div>
</div>

<div id="admin_container">
    <?php include_once("admin_index.php");?>
    <div id="admin_content">
        <?php include_once("./contentAssembling/admin_assemble.php"); ?>
    </div>
</div>
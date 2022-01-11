<div id="menu_container">
    <div id="menu_usericon" class="col-lg">
        <img id="usericon" class="content_pic" src="<?php include_once("./contentAssembling/usericon.php");?>">
    </div>
    <p id="menu_usermessage" class="menu_title" style="font-size: <?php echo (strlen(@$_SESSION['userdata']['qUser_name']) < 16)?1.2:1;?>em;">Olá, <?php echo (@$_SESSION['logado'])?@$_SESSION['userdata']['qUser_name']:"Visitante";?></p>
    <hr class="menu_hr"> 
    <a href="<?php echo (@$_SESSION['logado'])?"./userprofile.php":"./login.php";?>">
        <input type="submit" id="btn_login" class="btn btn-primary col-lg-12" name="btn_login" value="<?php echo (@ $_SESSION['logado'])?"MEU PERFIL":"FAZER LOGIN";?>" style="margin-bottom: 5px;">
    </a>
    <!--<div class="container-fluid">
        <div id="div_right_buttons" class="row">
            <button id="btn_config" class="btn btn-primary col-lg right_button" style="margin-left: 0;">
                <svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-gear-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 0 0-5.86 2.929 2.929 0 0 0 0 5.858z"/>
                </svg>
            </button>
            <button id="btn_friend" class="btn btn-primary col-lg right_button">
                <svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-people-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
                </svg>
            </button>
            <button id="btn_notific" class="btn btn-primary col-lg right_button">
                <svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-bell-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z"/>
                </svg>
            </button>
        </div>
    </div>-->
    <?php
    if(@$_SESSION['userdata']['qUser_type'] == 'adm'):
    ?>
        <a href="../php/admin.php">
            <button id="btn_admin" class="btn btn-primary col-lg-12">ADM</button>
        </a>
    <?php
    endif;
    ?>
    <hr class="menu_hr">
    <?php
    if(@$_SESSION['logado']):
    ?>
    <div id="div_logout">
        <a href="../php/logout.php">
            <input type="submit" id="btn_logout" class="btn btn-primary col-lg-12" name="btn_log" value="SAIR">
        </a>
    </div>
    <?php
    endif;
    ?>
</div>
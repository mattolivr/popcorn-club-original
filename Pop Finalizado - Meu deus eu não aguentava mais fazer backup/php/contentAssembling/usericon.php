<?php

if(@$_SESSION['logado'] && !empty($_SESSION['userdata']['qUser_pic'])) echo "../upload/".$_SESSION['userdata']['qUser_pic'];
else echo "../img/icon.png";

?>
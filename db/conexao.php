<?php

$_db_host = "localhost:3308";
$_db_username = "root";
$_db_password = "";
$_db_name = "popcorn";

$_connection = new PDO("mysql:host=$_db_host;dbname=$_db_name", $_db_username, $_db_password);
?>
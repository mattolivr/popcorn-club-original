<?php
session_start();
require_once("conexao.php");

$_userId = $_SESSION['userdata']['qUser_id'];
$_contId = $_SESSION['contentData']['Id'];
$_name = $_SESSION['contentData']['Nome'];

if($_connection->query("SELECT Cod_Id_Filme FROM filme WHERE Cod_Id_Filme = $_contId AND Nome_Filme = '$_name'")->rowCount() == 1)
{
    if($_connection->query("SELECT Cod_Id_Lista_Filme FROM lista_filme WHERE Cod_Id_Filme_fk = $_contId AND Cod_Id_Usu_fk = $_userId")->rowCount() == 0)
    {
        $queryListIns = $_connection->query("INSERT INTO lista_filme (Cod_Id_Filme_fk, Cod_Id_Usu_fk) VALUES ($_contId, $_userId)");
        echo "<script>window.history.back();</script>"; 
        exit;
    }
    else
    {
        header("location:../php/home.php");
    }
}
else if($_connection->query("SELECT Cod_Id_Serie FROM serie WHERE Cod_Id_Serie = $_contId AND Nome_Serie = '$_name'")->rowCount() == 1)
{
    if($_connection->query("SELECT Cod_Id_Lista_Serie FROM lista_serie WHERE Cod_Id_Serie_fk = $_contId AND Cod_Id_Usu_fk = $_userId")->rowCount() == 0)
    {
        $queryListIns = $_connection->query("INSERT INTO lista_Serie (Cod_Id_Serie_fk, Cod_Id_Usu_fk) VALUES ($_contId, $_userId)");
        echo "<script>window.history.back();</script>"; 
        exit;
    }
    else
    {
        header("location:../php/home.php");
    }
}
?>
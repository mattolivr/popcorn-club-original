<?php
session_start();
require_once("conexao.php");

$_login_user = @$_POST['login_user'];
$_login_password = md5(@$_POST['login_password']);

if (!empty($_login_user) && (!empty($_login_password)))
{
    $queryLogin = $_connection->query("SELECT Cod_Id_Usu as qUser_id, Nome_Usu as qUser_name, Data_Nasc_Usu as qUser_bday, 
                                    Data_Criacao_Usu as qUser_cday, Cidade_Usu as qUser_city, Bio_Usu as qUser_bio, 
                                    Foto_Perfil_Usu as qUser_pic, Pais_Usu as qUser_coun, Tipo_Usu as qUser_type
                                    FROM usuario WHERE Nome_Usu = '$_login_user' and Senha_Usu = '$_login_password'");
    $loginRow = $queryLogin->rowCount();

    if ($loginRow == 1)
    {
        $_SESSION['logado'] = true;

        $_SESSION['userdata'] = $queryLogin->fetch(PDO::FETCH_ASSOC);

        header("location:../php/home.php");
        exit;
    }
    else
    {
        $_SESSION['logado'] = false;
        header("location:../php/login.php");
        exit;
    }
}
?>
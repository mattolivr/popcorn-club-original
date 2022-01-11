<?php
session_start();
require_once("conexao.php");
require_once("insert_pic.php");
require_once("format.php");
require_once("validade.php");
date_default_timezone_set('America/Sao_Paulo');

unset($_SESSION['uins_ERRORS']);
unset($_SESSION['uins_imgERRORS']);
unset($_SESSION['uins_dateERRORS']);

$_ins_ERRORS = array();

// Coletando Variáveis
$_ins_user      = validateUser(trim($_POST['register_user']), $_connection);
$_ins_email     = $_POST['register_email'];
$_ins_password  = md5($_POST['register_password']);
$_ins_bday      = validateDate($_POST['register_bday']);
$_ins_city      = $_POST['register_city'];
$_ins_country   = $_POST['register_country'];
$_ins_pic       = validateImage($_FILES['register_pic']);

// Verificação de Dados
if($_ins_user == null ){$_ins_ERRORS['user_name' ] = "Nome de usuário já utilizado!";}
if($_ins_email == null){$_ins_ERRORS['user_email'] = "Email incorreto ou inválido!";}
if($_ins_bday == null){$_ins_ERRORS['user_date'] = "Data inválida";}

// Foto de Perfil
$_img_name = "";

if($_ins_pic != null)
{
    $_img_name = returnImg($_ins_pic, 100, 100, 1000, 1000);
    if(is_array($_img_name)){$_SESSION['uins_imgERRORS'] = $_img_name;};
}

// Preparo da Query
$queryregister = $_connection->prepare('INSERT INTO usuario (Nome_Usu, Email_Usu, Senha_Usu, Cidade_Usu, Pais_Usu, Tipo_Usu, Data_Nasc_Usu, Data_Criacao_Usu, Foto_Perfil_Usu) 
                                        VALUES (:nome, :email, :senha, :city, :coun, :utype, :bday, :cday, :pic)');

if(count($_ins_ERRORS) == 0 && count($_SESSION['uins_imgERRORS']) == 0)
{
    $queryregister->execute(array(
        ':nome'  => $_ins_user,
        ':email' => $_ins_email,
        ':senha' => $_ins_password,
        ':city'  => $_ins_city,
        ':coun'  => $_ins_country,
        ':utype' => 'vis',
        ':bday'  => date("Y-m-d H:i:s",strtotime($_ins_bday)),
        ':cday'  => date("Y-m-d H:i:s"),
        ':pic'   => (!is_array($_img_name))?$_img_name:""
    ));
    unset($_POST);
    header("location:../php/home.php");
}
else
{
    $_SESSION['uins_ERRORS'] = $_ins_ERRORS;
    echo "<script>window.history.back();</script>";
}
exit;

?>
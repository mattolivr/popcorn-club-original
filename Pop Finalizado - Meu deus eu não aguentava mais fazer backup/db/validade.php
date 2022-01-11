<?php
function validateUser($_username, $_connection)
{
    if(!empty($_username))
    {
        $queryUserValidade = $_connection->query("SELECT Nome_Usu from usuario where Nome_Usu = '$_username'");

        if($queryUserValidade->rowCount() > 0)
        {
            return null;
        }
        else
        {
            return $_username;
        }
    }
}
function validateEmail($_email)
{
    $_email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
    if(!$_email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL))
    {
        return null;
    }
    else
    {
        return $_email;
    }
}
function validateDate($_date)
{
    $_datetest = date("Y-m-d",strtotime($_date));
    $_dateexp = explode("-",$_datetest);

    if(checkdate($_dateexp[1], $_dateexp[2],$_dateexp[0]))
    {
        if($_date > date("Y-m-d"))
        {
            $_SESSION['uins_dateERRORS'][0] = "";
            return;
        }
        else if($_date < date("Y-m-d", "1900-01-01"))
        {
            return 3;
        }
        return $_date;
    }
    else
    {
        return 1;
    }

}

function validateImage($_img)
{
    if(empty($_img))
    {
        return null;
    }
    else
    {
        return $_img;
    }
}
?>
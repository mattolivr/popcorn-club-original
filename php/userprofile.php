<?php
session_start();
require_once("variaveis.php");
require_once("../db/format.php");
require_once($_a_db."conexao.php");
require_once($_a_db."user_request.php");

$_page = 'userprofile';
$_trig = (isset($_GET['prof_trig']))?$_GET['prof_trig']:'stats';


// Verificar se entrou pelo results.php
if(!isset($_GET['prof_trig']))
{
    if(isset($_GET['content']))
    {
        $_SESSION['other_user_id'] = $_GET['content'];
        $userData = queryUser($_connection, $_SESSION['other_user_id']);
        $myProfile = false;
    }
    else
    {
        $userData = $_SESSION['userdata'];
        $myProfile = true;
    }
}
else
{
    if($_GET['myprof'] == 'yes')
    {
        $userData = $_SESSION['userdata'];
        $myProfile = true;
    }
    else
    {
        $userData = queryUser($_connection, $_SESSION['other_user_id']);
        $myProfile = false;
    }
}

if(@$_SESSION['logado'] == true):
?>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <?php
            include_once($_a_content."global_head.php");
        ?> 
    </head>
    <body>
        <div id="master_container">
        <?php include_once($_a_content."global_toasts.php"); include_once($_a_content."global_modal.php"); ?>
            <div id="page_container">
                <?php 
                    include_once($_a_content."global_header.php");
                ?>
                    <section id="section_container">
                        <div id="section_div">
                            <?php include_once($_a_content."userprofile_content.php");?>
                        </div>
                    </section>
                <?php
                    include_once($_a_content."global_footer.php");
                ?>
            </div> <!-- page_container -->
        </div> <!-- master_container -->
        <?php echo $_a_bootstrapJS; echo $_a_bootstrapJS2;echo $_a_darkmode; echo $_a_toasts;?>
    </body>
</html>

<?php
else:
     echo "<script>window.history.back();</script>"; 
     exit;
endif;
?>
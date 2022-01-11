<?php
session_start();
require_once("variaveis.php");
require_once($_a_db."format.php");

if($_SESSION['userdata']['qUser_type'] == 'adm')
{
    $_page = 'admin';
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
        <?php include_once($_a_content."global_toasts.php");?>
            <div id="page_container">
                <?php 
                    include_once($_a_content."global_header.php");
                ?>
                    <section id="section_container">
                        <div id="section_div">
                            <?php include_once($_a_content."admin_content.php");?>
                        </div>
                    </section>
                <?php
                    include_once($_a_content."global_footer.php");
                ?>
            </div> <!-- page_container -->
        </div> <!-- master_container -->
        <?php echo $_a_bootstrapJS; echo $_a_bootstrapJS2;echo $_a_darkmode; echo $_a_toasts;?>
        <script type="Text/JavaScript" src="../js/admin_verify.js"></script>
        <script type="text/JavaScript" src="../js/formControl.js"></script>
    </body>
</html>
<?php
}
else
{
    header("location:home.php");
    exit;
}
?>
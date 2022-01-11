<?php
session_start();
require_once("variaveis.php");

$_page = 'login';
if(@$_SESSION['logado'] == false):
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
                            <?php include_once($_a_content."login_content.php");?>
                        </div>
                    </section>
                <?php
                    include_once($_a_content."global_footer.php");
                ?>
            </div> <!-- page_container -->
        </div> <!-- master_container -->
        <?php echo $_a_bootstrapJS; echo $_a_bootstrapJS2; echo $_a_darkmode; echo $_a_toasts;?>
        <script type="text/JavaScript" src="../js/formControl.js"></script>
        <script type="text/JavaScript" src="../js/login_verify.js"></script>
    </body>
</html>

<?php
else:
    header("location:home.php");
endif;
?>
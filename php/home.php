<?php
require_once("variaveis.php");
require_once("../db/authenticate.php");

$_page = 'home';
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
                            <?php include_once($_a_content."home_recos.php");?>
                        </div>
                    </section>
                <?php
                    include_once($_a_content."global_footer.php");
                ?>
            </div> <!-- page_container -->
            <?php include_once($_a_content."global_menu.php");?>
        </div> <!-- master_container -->
        <?php echo $_a_bootstrapJS; echo $_a_bootstrapJS2; echo $_a_darkmode; echo $_a_menu; echo $_a_toasts;?>
    </body>
</html>
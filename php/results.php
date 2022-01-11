<?php
require_once("variaveis.php");
require_once("../db/authenticate.php");
require_once($_a_db."search.php");

if(count($searchContent) == 0){ echo "<script>window.history.back();alert('Nenhum resultado encontrado!');</script>"; exit;}
$_page = 'results';
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
            <div id="page_container">
                <?php 
                    include_once($_a_content."global_header.php");
                ?>
                    <section id="section_container">
                        <div id="section_div">
                            <?php include_once($_a_content."results_content.php");?>
                        </div>
                    </section>
                <?php
                    include_once($_a_content."global_footer.php");
                ?>
            </div> <!-- page_container -->
            <?php 
                include_once($_a_content."global_menu.php");
            ?>
        </div> <!-- master_container -->
        <?php echo $_a_bootstrapJS; echo $_a_bootstrapJS2; echo $_a_darkmode; echo $_a_menu;?>
        <script type="Text/Javascript" src="../js/results_content.js"></script>
    </body>
</html>
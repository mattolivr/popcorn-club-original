<div id="div_results" class="mb-5">
<?php
include_once($_a_db."format.php");
if($_searchSelect == 'filme' || $_searchSelect == 'serie'):
    $contentId = 1;
    foreach($searchContent as $result):
?>

<div class="div_result result_media mb-3" id="<?php echo "result_".$contentId;?>" onmouseover="showContent(this)" onmouseout="hideContent(this)">
    <div class="result_container">
        <div>
            <form method="get" action="<?php echo "./contentpage.php?"?>">
                <button name="content" value="<?php echo $result['Nome']?>">
                    <img src="<?php echo $_a_up.$result['Foto']?>" class="img_capa">
                </button>
            </form>
        </div>
        <div class="result_content">
            <p class="font-weight-bold text-break"><?php echo $result['Nome']?></p>
            <p class="text-break"><?php echo $result['Autor'];?></p>
            <p class="text-break"><?php echo getDayFormat($result['Data_C'])?></p>
        </div>
    </div>
</div>    
<?php
    $contentId++;
    endforeach;
elseif($_searchSelect == 'usuario'):
    foreach($searchContent as $result):
?>
<div class="div_result result_user mb-3">
    <div class="result_container">
        <div>
            <form method="get" action="<?php echo "./userprofile.php"?>">
                <button name="content" value="<?php echo $result['Id']?>">
                    <img src="<?php echo $_a_up.$result['Foto']?>" class="img_round">
                </button>
            </form>
        </div>
        <div class="mt-4 ml-1">
            <p class="font-weight-bold"><?php echo $result['Nome']?></p>
            <p><?php echo getAge($result['Nasc'])." Anos"?></p>
            <p><?php echo (isset($result['City']) && isset($result['Coun']))?$result['City'].", ".$result['Coun']:""?></p>
            <p><?php echo "Desde ". getYearMouthFormat($result['Cria'])?></p>
        </div>
    </div>
</div>

<?php endforeach; endif;?>
</div>
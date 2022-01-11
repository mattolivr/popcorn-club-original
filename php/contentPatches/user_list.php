<?php
require_once($_a_db."user_request.php");

$arrayLista = queryLista($_connection, ($myProfile)?$_SESSION['userdata']['qUser_id']:$_SESSION['other_user_id']);
?>

<form method="get" action="<?php $_SERVER['PHP_SELF']?>" id="list_nav">
    <nav>
    <ul class="pagination justify-content-center">
        <li class="page-item text-center mt-2"><button class="page-link" name="list" value="all">Tudo</button></li>
        <li class="page-item text-center mt-2"><button class="page-link" name="list" value="jav">Assistidos</button></li>
        <li class="page-item text-center mt-2"><button class="page-link" name="list" value="des">Desistidos</button></li>
        <li class="page-item text-center mt-2"><button class="page-link" name="list" value="pre">Pretende Ver</button></li>
    </ul>
    </nav>
</form>

<div id="list_content">
    <?php foreach($arrayLista as $itemLista):?>
        <div class="list_item mb-3">
            <div class="lItem_pic">
                <img src="<?php echo $_a_up.$itemLista['Foto']?>" class="img_capa">
            </div>
            <div class="lItem_data text-break">
                <p class="font-weight-bold text-break"><?php echo $itemLista['Nome']?></p>
                <p class=""><?php echo $itemLista['Autor']?></p>
                <?php if($myProfile):?>
                <div class="lItem_control">
                    <button class="btn btn-primary mt-2">Editar</button>
                </div>
                <?php endif ?>
                <?php if(!empty($itemLista['Come'])):?>
                <div class="lItem_coment mt-2">
                    <span><?php echo $itemLista['Come']?></span>
                </div>
                <?php endif ?>
            </div>
        </div>
    <?php endforeach;?>
</div>


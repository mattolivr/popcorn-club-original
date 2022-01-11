<div id="content_divpic">
    <a href="<?php $_SERVER['PHP_SELF']?>"><img id="content_pic" src="<?php echo $_a_up.$contentData['Foto'];?>"></a>
    <div id="content_info">
        <div class="row">
            <div id="content_name" class="mb-2 mr-2">
                <p id="cttname" class="text-break"><?php echo $contentData['Nome']?></p>
            </div>
            <div id="content_grade" class="mb-2">
                <p id="cttgrade">0.00</p>
            </div>
        </div>
        <div class="row">
            <div id="content_autor" class="mb-2 mr-2">
                <?php echo $contentData['Autor']?>
            </div>
            <?php if(isset($contentData['Dur'])):?>
            <div id="content_duration" class="mb-2">
                <?php echo minuteToHour($contentData['Dur'])?>
            </div>
            <?php endif ?>
            <?php if(isset($contentData['Qtde'])):?>
            <div id="content_duration" class="mb-2">
                <?php echo $contentData['Qtde']." Episódios"?>
            </div>
            <?php endif ?>
        </div>
        <?php if(isset($contentData['Prim'])):?>
            <div class="row">
                <div id="content_duration" class="mb-2">
                <p class="text-break"><?php echo "De: ".getYearMouthFormat($contentData['Prim'])." a ".getYearMouthFormat($contentData['Ultm'])?></p>
                </div>
            </div>
        <?php endif ?>
        <?php if(@$_SESSION['logado']):?>
            <?php if(!$onlist):?>
            <div class="row">
                <form method="get" action="<?php echo $_a_db."list_insert.php"?>"><button id="btn_add_list" class="btn btn-primary">Adicionar à Lista</button></form>
            </div>
            <?php endif?>
        <?php else:?>
            <div class="row">
                <button id="btn_add_list" class="btn btn-primary" onclick="callToastLogin()">Adicionar à Lista</button>
            </div>
        <?php endif ?>
    </div>
</div>
<div id="content_middle">
    <?php if(isset($contentData['Banner'])):?>
        <div id="content_banner">
            <img src="<?php echo $_a_up.$contentData['Banner'];?>">
        </div>
    <?php endif ?>
    <div id="content_descr" class="mt-3 mb-5">
        <p class="text-justify text-break"><?php echo $contentData['Descr']?></p>
    </div>
</div>
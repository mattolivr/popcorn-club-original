<?php
if(isset($_GET['adm_imp_sel'])):
    if($_GET['adm_imp_sel'] == 'filme'):
?>
<form method="POST" action="../db/admin_insert.php" name="adm_import_filme" enctype="multipart/form-data">
    <div class="form-row">
        <div class="col-md-6 col-sm-12 mb-3">
            <label for="adm_filme_name">Nome do Filme</label>
            <input type="text" name="adm_filme_name" id="adm_filme_name" class="form-control" required maxlength="50" placeholder="Cinderela">
            <div id="errorfName" class="invalid-feedback">
                Feedback
            </div>
        </div>
        <div class="col-md-6 col-sm-12 mb-3">
            <label for="adm_filme_author">Criador do Filme</label>
            <input type="text" name="adm_filme_author" id="adm_filme_author" class="form-control" aria-describedby="errorAuthor" required maxlength="50" placeholder="Disney">
            <div id="errorfAuthor" class="invalid-feedback">
                Feedback
            </div>
        </div>
    </div>
    <div class="form-row">
        <div class="col-12 mb-3">
            <label for="adm_filme_desc">Descrição do Filme</label>
            <textarea name="adm_filme_desc" id="adm_filme_desc" class="form-control" maxlength="1000" required placeholder="Cinderela é um dos classicos da Disney..."></textarea>
            <div id="errorfDesc" class="invalid-feedback">
                Feedback
            </div>
        </div>
    </div>
    <div class="form-row">
        <div class="col-lg-12 col-xl-6 mb-3">
            <label for="adm_filme_capa">Foto de Capa</label>
            <input type="file" name="adm_filme_capa" id="adm_filme_capa" class="form-control text-truncate <?php if(!empty($_SESSION['ains_imgERRORS'])) echo 'is-invalid'?>" required>
            <div id="errorfCapa" class="invalid-feedback">
                <?php
                    if(!empty($_SESSION['ains_imgERRORS']))
                        foreach($_SESSION['ains_imgERRORS'] as $_imgERROR)
                        {
                            echo $_imgERROR."<br>";
                            if(strpos($_imgERROR, "formato") != false)break;
                        }
                ?>
            </div>
        </div>
        <div class="col-lg-12 col-xl-6 mb-3">
            <label for="adm_filme_banner">Foto de Banner</label>
            <input type="file" name="adm_filme_banner" id="adm_filme_banner" class="form-control text-truncate <?php if(!empty($_SESSION['ains_bannerERRORS'])) echo 'is-invalid'?>" required>
            <div id="errorfBanner" class="invalid-feedback">
                <?php
                    if(!empty($_SESSION['ains_bannerERRORS']))
                        foreach($_SESSION['ains_bannerERRORS'] as $_banERROR)
                        {
                            echo $_banERROR."<br>";
                            if(strpos($_banERROR, "formato") != false)break;
                        }
                ?>
            </div>
        </div>
    </div>
    <div class="form-row">
        <div class="col-xl-4 col-md-8 mb-3">
            <label for="adm_filme_lans">Data de Lançamento</label>
            <input type="date" name="adm_filme_lans" id="adm_filme_lans" class="form-control" required>
            <div id="errorfLans" class="invalid-feedback">
                Feedback
            </div>
        </div>
        <div class="col-xl-2 col-md-4 mb-3">
            <label for="adm_filme_dur">Duração (minutos)</label>
            <input type="number" name="adm_filme_dur" id="adm_filme_dur" class="form-control" required maxlength="4">
            <div id="errorfDur" class="invalid-feedback">
                Feedback
            </div>
        </div>
    </div>
    <div class="form-row">
        <div class="col-xl-6 mb-3">
            <input type="submit" value="Enviar" class="btn btn-primary align-middle">
            <input type="reset"  value="Limpar" class="btn btn-primary">
        </div>
    </div>
</form>
<?php
    elseif($_GET['adm_imp_sel'] == 'serie'):
?>
<form method="POST" action="../db/admin_insert.php" name="adm_import_serie" enctype="multipart/form-data">
    <div class="form-row">
        <div class="col-md-6 col-sm-12 mb-3">
            <label for="adm_serie_name">Nome da Série:</label>
            <input type="text" name="adm_serie_name" id="adm_serie_name" class="form-control" maxlength="50" required>
            <div id="errorsName" class="invalid-feedback">
                Feedback
            </div>
        </div>
        <div class="col-md-6 col-sm-12 mb-3">
            <label for="adm_serie_author">Criador da Série:</label>
            <input type="text" name="adm_serie_author" id="adm_serie_author" class="form-control" maxlength="50" required>
            <div id="errorsAuthor" class="invalid-feedback">
                Feedback
            </div>
        </div>
    </div>
    <div class="form-row">
        <div class="col-12 mb-3">
            <label for="adm_serie_desc">Descrição da Serie</label>
            <textarea name="adm_serie_desc" id="adm_serie_desc" class="form-control" maxlength="1000" required placeholder=""></textarea>
            <div id="errorsDesc" class="invalid-feedback">
                Feedback
            </div>
        </div>
    </div>
    <div class="form-row">
        <div class="col-lg-12 col-xl-6 mb-3">
            <label for="adm_serie_capa">Foto de Capa</label>
            <input type="file" name="adm_serie_capa" id="adm_serie_capa" class="form-control text-truncate <?php if(!empty($_SESSION['ains_imgERRORS'])) echo 'is-invalid'?>" required>
            <div id="errorsCapa" class="invalid-feedback">
                <?php
                    if(!empty($_SESSION['ains_imgERRORS']))
                        foreach($_SESSION['ains_imgERRORS'] as $_imgERROR)
                        {
                            echo $_imgERROR."<br>";
                            if(strpos($_imgERROR, "formato") != false)break;
                        }
                ?>
            </div>
        </div>
        <div class="col-lg-12 col-xl-6 mb-3">
            <label for="adm_serie_banner">Foto de Banner</label>
            <input type="file" name="adm_serie_banner" id="adm_serie_banner" class="form-control text-truncate <?php if(!empty($_SESSION['ains_bannerERRORS'])) echo 'is-invalid'?>" required>
            <div id="errorsBanner" class="invalid-feedback">
                <?php
                    if(!empty($_SESSION['ains_bannerERRORS']))
                        foreach($_SESSION['ains_bannerERRORS'] as $_banERROR)
                        {
                            echo $_banERROR."<br>";
                            if(strpos($_banERROR, "formato") != false)break;
                        }
                ?>
            </div>
        </div>
    </div>
    <div class="form-row">
        <div class="col-xl-5 col-lg-4 col-sm-6 mb-3">
            <label for="adm_serie_lans">Primeiro Episódio:</label>
            <input type="date" name="adm_serie_lans" id="adm_serie_lans" class="form-control" required>
            <div id="errorsLans" class="invalid-feedback">
                Feedback
            </div>
        </div>
        <div class="col-xl-5 col-lg-4 col-sm-6 mb-3">
            <label for="adm_serie_ultm">Último Episódio:</label>
            <input type="date" name="adm_serie_ultm" id="adm_serie_ultm" class="form-control" required>
            <div id="errorsUltm" class="invalid-feedback">
                Feedback
            </div>
        </div>
        <div class="col-xl-2 col-lg-4 col-sm-12 mb-3">
            <label for="adm_serie_qtde">Qtde de Episódios:</label>
            <input type="number" name="adm_serie_qtde" id="adm_serie_qtde" class="form-control" required>
            <div id="errorsQtde" class="invalid-feedback">
                Feedback
            </div>
        </div>
    </div>
    <div class="form-row">
            <div class="col-xl-6 mb-3">
                <input type="submit" value="Enviar" class="btn btn-primary">
                <input type="reset"  value="Limpar" class="btn btn-primary">
            </div>
        </div>
</form>
<?php
    endif;
unset($_SESSION['ains_imgERRORS']);
unset($_SESSION['ains_bannerERRORS']);
elseif(isset($_GET['adm_req_sel1'])):
    require_once($_a_db."admin_request.php");
    $_SESSION['req_query'] = $requestContent;

    $req_table = ($_GET['adm_req_sel1'] == 'all')?"Tudo":ucfirst($_GET['adm_req_sel1'])."s";

        if($_reqOnde != 'none'){
            $req_where = explode("'",requestAdmWhere($_reqOnde, ""));
            $req_where = explode("-",$req_where[1]);
            $req_where = $req_where[2]."/".$req_where[1]."/".$req_where[0];
        }
        else{
            $req_where = "todo o período";
        }

        $req_contem = ($_reqContem != '')?", contendo \"".$_reqContem."\"":"";
        $req_mens = "Exibindo ".$req_table.", desde ".$req_where.$req_contem;
?>
<div id="request_index">
    <span><?php echo $req_mens;?></span>
    <form method="post" action="../pdf.php">
        <button class="btn btn-primary" name="mens" value="<?php echo $req_mens?>">Gerar PDF</button>
    </form>
</div>
<div class="table-responsive-xl"> 
<table id="request_table" class="table table-hover table-dark">
<?php
    if($_GET['adm_req_sel1'] == 'all'):
?>
    <thead>
        <tr class="text-left">
            <th></th>
            <th scope="col" class="align-middle">Nome</th>
            <th scope="col" class="align-middle">Descrição</th>
            <th scope="col" class="align-middle text-center">Data de Criação/Lançamento</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($requestContent as $requestRow){?>
            <tr>
                <td class="align-middle"><img src="<?php echo $_a_up.$requestRow['Foto']?>" class="req_img p-3 img_capa"></td>
                <td class="align-middle"><?php echo $requestRow['Nome']?></td>
                <td class="align-middle request_desc text-justify"><?php echo $requestRow['Descr']?></td>
                <td class="align-middle text-center"><?php echo getDayFormat($requestRow['DataC'])?></td>
            </tr>
        <?php } ?>
    </tbody>
<?php
    elseif($_GET['adm_req_sel1'] == 'filme'):
?>
    <thead>
        <tr class="text-left">
            <th></th>
            <th scope="col">Nome</th>   
            <th scope="col">Descrição</th>
            <th scope="col">Lançamento</th>
            <th scope="col" class="text-center">Duração</th>
            <th scope="col">Estúdio/Autor</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($requestContent as $requestRow){?>
        <tr class="text-left">
            <td class="align-middle"><img src="<?php echo $_a_up.$requestRow['Foto']?>" class="img_capa"></td>
            <td class="align-middle"><?php echo $requestRow['Nome']?></td>
            <td class="align-middle text-break request_desc text-justify" ><?php echo $requestRow['Descr']?></td>
            <td class="align-middle"><?php echo getDayFormat($requestRow['DataC'])?></td>
            <td class="align-middle text-center"><?php echo minuteToHour($requestRow['Dur'])?></td>
            <td class="align-middle"><?php echo $requestRow['Autor']?></td>
        </tr>
        <?php } ?>
    </tbody>
<?php
    elseif($_GET['adm_req_sel1'] == 'serie'):
?>
    <thead>
        <tr class="text-left">
            <th></th>
            <th scope="col">Nome</th>
            <th scope="col">Descrição</th>
            <th scope="col">Episódios</th>
            <th scope="col">Primeiro Episódio</th>
            <th scope="col">Último Episódio</th>
            <th scope="col">Estúdio</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($requestContent as $requestRow){?>
        <tr class="text-left">
            <td class="align-middle"><img src="<?php echo $_a_up.$requestRow['Foto']?>" class="img_capa"></td>
            <td class="align-middle"><?php echo $requestRow['Nome']?></td>
            <td class="align-middle text-break request_desc text-justify"><?php echo $requestRow['Descr']?></td>
            <td class="align-middle"><?php echo $requestRow['Qtde']?></td>
            <td class="align-middle"><?php echo getDayFormat($requestRow['DataC'])?></td>
            <td class="align-middle"><?php echo getDayFormat($requestRow['DataU'])?></td>
            <td class="align-middle"><?php echo $requestRow['Autor']?></td>
        </tr>
        <?php }?>
    </tbody>
<?php
    elseif($_GET['adm_req_sel1'] == 'usuario'):
?>
    <thead>
        <tr class="text-left">
            <th></th>
            <th scope="col" class="align-middle">Nome</th>
            <th scope="col" class="align-middle">Tipo</th>
            <th scope="col" class="align-middle">Email</th>
            <th scope="col" class="align-middle">Localização</th>
            <th scope="col" class="align-middle">Nascimento</th>
            <th scope="col" class="align-middle">Cadastrou-se em:</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($requestContent as $requestRow){?>
            <tr>
                <td class="align-middle"><img src="<?php echo $_a_up.$requestRow['Foto']?>" class="h-50 p-3 img_round rounded-circle"></td>
                <td class="align-middle"><?php echo $requestRow['Nome']?></td>
                <td class="align-middle"><?php echo $requestRow['Tipo']?></td>
                <td class="align-middle text-break"><?php echo $requestRow['Email']?></td>
                <td class="align-middle"><?php echo (!empty($requestRow['City']) && !empty($requestRow['Coun']))?$requestRow['City'].", ".$requestRow['Coun']:"Null";?></td>
                <td class="align-middle"><?php echo getDayFormat($requestRow['Nasc'])?></td>
                <td class="align-middle"><?php echo getYearMouthFormat($requestRow['Cria'])?></td>
            </tr>
        <?php }?>
    </tbody>
<?php
    endif;
?>
</table>
</div>
<?php
endif;
?>
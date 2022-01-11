<?php
session_start();
require_once("conexao.php");
require_once("insert_pic.php");
require_once("validade.php");

if(isset($_POST['adm_filme_name']))
{
    echo "filme";
    $_ins_name = $_POST['adm_filme_name'  ];
    $_ins_auth = $_POST['adm_filme_author'];
    $_ins_desc = $_POST['adm_filme_desc'  ];
    $_ins_lans = $_POST['adm_filme_lans'  ];
    $_ins_dur  = $_POST['adm_filme_dur'   ];
    $_ins_capa = validateImage($_FILES['adm_filme_capa']);
    $_ins_bann = validateImage($_FILES['adm_filme_banner']);

    if($_ins_capa != null)
    {
        $_img_name = returnImg($_ins_capa, 500, 500, 2500, 2500);
        if(is_array($_img_name)){$_SESSION['ains_imgERRORS'] = $_img_name;};
    }
    if($_ins_bann != null)
    {
        $_img_banner = returnImg($_ins_bann, 800, 800, 2500, 2500);
        if(is_array($_img_banner)){$_SESSION['ains_bannerERRORS'] = $_img_banner;};
    }

    $queryarray  = array(
        ':nome'  => $_ins_name,
        ':descr' => $_ins_desc,
        ':auth'  => $_ins_auth,
        ':lans'  => $_ins_lans,
        ':dur'   => $_ins_dur,
        ':capa'  => (isset($_img_name))?$_img_name:null,
        ':bann'  => (isset($_img_banner))?$_img_banner:null
    );

    $queryregister = $_connection->prepare('INSERT INTO filme (Nome_Filme, Descricao_Filme, Autor_Filme, Data_Lancamento_Filme, Duracao_Filme, Foto_Filme, Banner_Filme)
                                    VALUES (:nome, :descr, :auth, :lans, :dur, :capa, :bann)');
    unset($_POST['adm_filme_name']);
}
else if(isset($_POST['adm_serie_name']))
{
    echo "serie";
    $_ins_name = $_POST['adm_serie_name'  ];
    $_ins_auth = $_POST['adm_serie_author'];
    $_ins_desc = $_POST['adm_serie_desc'  ];
    $_ins_lans = $_POST['adm_serie_lans'  ];
    $_ins_ultm = $_POST['adm_serie_ultm'  ];
    $_ins_qtde = $_POST['adm_serie_qtde' ];
    $_ins_capa = validateImage($_FILES['adm_serie_capa']);
    $_ins_bann = validateImage($_FILES['adm_serie_banner']);

    if($_ins_capa != null)
    {
        $_img_name = returnImg($_ins_capa, 500, 500, 2500, 2500);
        if(is_array($_img_name)){$_SESSION['ains_imgERRORS'] = $_img_name;};
    }
    if($_ins_bann != null)
    {
        $_img_banner = returnImg($_ins_bann, 800, 800, 2500, 2500);
        if(is_array($_img_banner)){$_SESSION['ains_bannerERRORS'] = $_img_banner;};
    }

    $queryarray  = array(
        ':nome'  => $_ins_name,
        ':descr' => $_ins_desc,
        ':auth'  => $_ins_auth,
        ':lans'  => $_ins_lans,
        ':ultm'  => $_ins_ultm,
        ':qtde'  => $_ins_qtde,
        ':capa'  => (isset($_img_name))?$_img_name:null,
        ':bann'  => (isset($_img_banner))?$_img_banner:null
    );

    $queryregister = $_connection->prepare('INSERT INTO serie (Nome_Serie, Descricao_Serie, Autor_Serie, Data_Lanc_Primeiro_Ep_Serie, Data_Lanc_Ultimo_Ep_Serie, Quantidade_Ep_Serie, Foto_Serie, Banner_Serie)
                                    VALUES (:nome, :descr, :auth, :lans, :ultm, :qtde, :capa, :bann)');
    unset($_POST['adm_serie_name']);
}
if(empty($_SESSION['ains_imgERRORS']) && empty($_SESSION['ains_bannerERRORS']))
{
    $queryregister->execute($queryarray);
    header("location: ../php/admin.php");
}
else
{
    echo "<script>window.history.back();</script>";
}

?>
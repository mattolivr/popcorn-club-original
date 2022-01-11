<?php
require_once("conexao.php");
require_once("admin_functions.php");

$_reqDe = $_GET['adm_req_sel1'];
$_reqOnde = $_GET['adm_req_sel2'];
$_reqContem = $_GET['adm_req_inp'];
$_reqOrdenar = $_GET['adm_req_sel3'];

switch($_reqDe)
{
    case 'all':
        {
            $_Where1 = "";// array(requestAdmWhere($_reqOnde, "Data_Criacao_Usu"),requestAdmWhere($_reqOnde, "Data_Lancamento_Filme"),requestAdmWhere($_reqOnde, "Data_Lanc_Primeiro_Ep_Serie"));
            $_OrderBy = ($_reqOrdenar == "Name")?"Nome":"DataC";
            $queryRequest = $_connection->prepare("SELECT Foto_Perfil_Usu as Foto, Nome_Usu as Nome, Bio_Usu as Descr, Data_Criacao_Usu as DataC
                                                FROM usuario
                                                WHERE $_Where1 Nome_Usu LIKE '%$_reqContem%' OR Bio_Usu LIKE '%$_reqContem%'
                                                UNION ALL
                                                SELECT Foto_Filme as Foto, Nome_Filme as Nome, Descricao_Filme as Descr, Data_Lancamento_Filme as DataC
                                                FROM filme
                                                WHERE $_Where1 Nome_Filme LIKE '%$_reqContem%' OR Descricao_Filme LIKE '%$_reqContem%'
                                                UNION ALL
                                                SELECT Foto_Serie as Foto, Nome_Serie as Nome, Descricao_Serie as Desct, Data_Lanc_Primeiro_Ep_Serie as DataC
                                                FROM serie
                                                WHERE $_Where1 Nome_Serie LIKE '%$_reqContem%' OR Descricao_Serie LIKE '%$_reqContem%'
                                                ORDER BY $_OrderBy
                                                ");
        }break;
    case 'filme':
        {
            $_Where1 = requestAdmWhere($_reqOnde, "Data_Lancamento_Filme");
            $_OrderBy = ($_reqOrdenar == "Name")?"Nome_Filme":"Data_Lancamento_Filme";
            $queryRequest = $_connection->prepare("SELECT Foto_Filme as Foto, Nome_Filme as Nome, Descricao_Filme as Descr, Data_Lancamento_Filme as DataC, Autor_Filme as Autor, Duracao_Filme as Dur
                                                FROM filme WHERE $_Where1 Nome_Filme LIKE '%$_reqContem%' OR Descricao_Filme LIKE '%$_reqContem%' OR Autor_Filme LIKE '%$_reqContem%'
                                                ORDER BY $_OrderBy ASC");
        }break;
    case 'serie':
        {
            $_Where1 = requestAdmWhere($_reqOnde, "Data_Lanc_Primeiro_Ep_Serie");
            $_OrderBy = ($_reqOrdenar == "Name")?"Nome_Serie":"Data_Lanc_Primeiro_Ep_Serie";
            $queryRequest = $_connection->prepare("SELECT Foto_Serie as Foto, Nome_Serie as Nome, Descricao_Serie as Descr, Data_Lanc_Primeiro_Ep_Serie as DataC , Autor_Serie as Autor, Data_Lanc_Ultimo_Ep_Serie as DataU, Quantidade_Ep_Serie as Qtde
                                                FROM serie WHERE $_Where1 Nome_Serie LIKE '%$_reqContem%' OR Descricao_Serie LIKE '%$_reqContem%' OR Autor_Serie LIKE '%$_reqContem%'
                                                ORDER BY $_OrderBy ASC");
        }break;
    case 'usuario':
        {
            $_Where1 = requestAdmWhere($_reqOnde, "Data_Criacao_Usu");
            $_OrderBy = ($_reqOrdenar == "Name")?"Nome_Usu":"Data_Criacao_Usu";
            $queryRequest = $_connection->prepare("SELECT Nome_Usu as Nome, Data_Nasc_Usu as Nasc, Data_Criacao_Usu as Cria,
                                                Cidade_Usu as City, Bio_Usu as Bio, Foto_Perfil_Usu as Foto, Pais_Usu as Coun,
                                                Tipo_Usu as Tipo, Email_Usu as Email
                                                FROM usuario WHERE $_Where1 Nome_Usu LIKE '%$_reqContem%' OR Email_Usu LIKE '%$_reqContem%' OR Bio_Usu LIKE '%$_reqContem%'
                                                OR Pais_Usu LIKE '%$_reqContem%' OR Cidade_Usu LIKE '%$_reqContem%'
                                                ORDER BY $_OrderBy ASC");
        }break;
    default:
        {
            
        }
}

$queryRequest->execute();
$requestContent = $queryRequest->fetchAll(PDO::FETCH_ASSOC);
?>
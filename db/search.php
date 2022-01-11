<?php
require_once("conexao.php");

    $_searchSelect = $_GET['header_select'];
    $_searchText   = @$_GET['header_search'];
    $_searchERROR;
    
    switch($_searchSelect)
    {
        case 'filme':
            {
                $querySearch = $_connection->prepare("SELECT Cod_Id_Filme as Id, Foto_Filme as Foto, Nome_Filme as Nome, Descricao_Filme as Descricao, Data_Lancamento_Filme as Data_C, Autor_Filme as Autor, Duracao_Filme as Dur
                                                    FROM filme WHERE Nome_Filme LIKE '%$_searchText%' ORDER BY Nome_Filme ASC");
            }
            break;
        case 'serie':
            {
                $querySearch = $_connection->prepare("SELECT Cod_Id_Serie as Id, Foto_Serie as Foto, Nome_Serie as Nome, Descricao_Serie as Descricao, Data_Lanc_Primeiro_Ep_Serie as Data_C , Autor_Serie as Autor, Data_Lanc_Ultimo_Ep_Serie as Data_U, Quantidade_Ep_Serie as Qtde
                                                    FROM serie WHERE Nome_Serie LIKE '%$_searchText%' ORDER BY Nome_Serie ASC");
            }
            break;
        case 'usuario':
            {
                $querySearch = $_connection->prepare("SELECT Cod_Id_Usu as Id, Nome_Usu as Nome, Data_Nasc_Usu as Nasc, Data_Criacao_Usu as Cria,
                                                    Cidade_Usu as City, Foto_Perfil_Usu as Foto, Pais_Usu as Coun
                                                    FROM usuario WHERE Nome_Usu LIKE '%$_searchText%' ORDER BY Nome_Usu ASC");
            } 
            break;
        default:
            {
                echo "<script>window.history.back();</script>";
                exit;
            } 
            break;
    }
    $querySearch->execute();
    $searchContent = $querySearch->fetchAll(PDO::FETCH_ASSOC); 
?>
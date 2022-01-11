<?php

function queryContent($_connection, $_conteudo)
{
    if($_connection->query("SELECT Cod_Id_Filme FROM filme WHERE Nome_Filme = '$_conteudo'")->rowCount() > 0)
    {
        $_id = $_connection->query("SELECT Cod_Id_Filme FROM filme WHERE Nome_Filme = '$_conteudo'")->fetch(PDO::FETCH_ASSOC);
        $_id = $_id['Cod_Id_Filme'];
        $_tipo = 'filme';
    }
    else if($_connection->query("SELECT Cod_Id_Serie FROM serie WHERE Nome_Serie = '$_conteudo'")->rowCount() > 0)
    {
        $_id = $_connection->query("SELECT Cod_Id_Serie FROM serie WHERE Nome_Serie = '$_conteudo'")->fetch(PDO::FETCH_ASSOC);
        $_id = $_id['Cod_Id_Serie'];
        $_tipo = 'serie';
    }

    switch($_tipo)
    {
        case 'filme': {
            $queryContent = $_connection->prepare("SELECT Cod_Id_Filme as Id, Nome_Filme as Nome, Foto_Filme as Foto, Banner_Filme as Banner, Descricao_Filme as Descr, Autor_Filme as Autor, 
                                                Data_Lancamento_Filme as Lanc, Duracao_Filme as Dur FROM filme WHERE Cod_Id_Filme = $_id");
        } break;
        case 'serie': {
            $queryContent = $_connection->prepare("SELECT Cod_Id_Serie as Id, Nome_Serie as Nome, Foto_Serie as Foto, Banner_Serie as Banner, Descricao_Serie as Descr, Autor_Serie as Autor, 
                                                Data_Lanc_Primeiro_Ep_Serie as Prim, Data_Lanc_Ultimo_Ep_Serie as Ultm, Quantidade_Ep_Serie as Qtde
                                                FROM serie WHERE Cod_Id_Serie = $_id");
        } break;
    }

    $queryContent->execute();
    if($queryContent->rowCount() > 0)
    {
        return $queryContent->fetchAll(PDO::FETCH_ASSOC)[0];
    }
}
?>
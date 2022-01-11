<?php

function queryUser($connection, $userId)
{
    $queryUser = $connection->prepare("SELECT Cod_Id_Usu as qUser_id, Nome_Usu as qUser_name, Data_Nasc_Usu as qUser_bday, 
                            Data_Criacao_Usu as qUser_cday, Cidade_Usu as qUser_city, Bio_Usu as qUser_bio, 
                            Foto_Perfil_Usu as qUser_pic, Pais_Usu as qUser_coun, Tipo_Usu as qUser_type
                            FROM usuario WHERE Cod_Id_Usu = $userId");
    $queryUser->execute();
    if($queryUser->rowCount() == 1)
    {
        return $queryUser->fetch(PDO::FETCH_ASSOC);
    }
    else
    {
        return null;
    }
}

function queryLista($connection, $userId)
{
    $queryLista = $connection->query("SELECT Nome_Filme as Nome, Foto_Filme as Foto, Favorito_Lista_Filme as Fav,
                            Status_Lista_Filme as Stat, Comentarios_Lista_Filme as Come,
                            Notas_Lista_Filme as Nota, Autor_Filme as Autor, Cod_Id_Usu as Id
                            FROM lista_filme 
                            INNER JOIN filme ON lista_filme.Cod_Id_Filme_fk = filme.Cod_Id_Filme 
                            INNER JOIN usuario ON lista_filme.Cod_Id_Usu_fk = usuario.Cod_Id_Usu 
                            WHERE Cod_Id_Usu = $userId
                            UNION
                            SELECT Nome_Serie as Nome, Foto_Serie as Foto, Favorito_Lista_Serie as Fav,
                            Status_Lista_Serie as Stat, Comentarios_Lista_Serie as Come, Notas_Lista_Serie as Nota, 
                            Autor_Serie as Autor, Cod_Id_Usu as Id FROM lista_serie
                            INNER JOIN serie ON lista_serie.Cod_Id_Serie_fk = serie.Cod_Id_Serie
                            INNER JOIN usuario ON lista_serie.Cod_Id_Usu_fk = usuario.Cod_Id_Usu
                            WHERE Cod_Id_Usu = $userId;");

    return $queryLista->fetchAll(PDO::FETCH_ASSOC);
}
?>
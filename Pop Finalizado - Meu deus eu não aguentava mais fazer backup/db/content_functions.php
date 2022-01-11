<?php

function returnOnList($connection, $contentId, $userId)
{
    $queryFilmeTest = $connection->query("SELECT Cod_Id_Lista_Filme FROM lista_filme WHERE Cod_Id_Filme_fk = $contentId AND Cod_Id_Usu_fk = $userId");  
    $querySerieTest = $connection->query("SELECT Cod_Id_Lista_Serie FROM lista_serie WHERE Cod_Id_Serie_fk = $contentId AND Cod_Id_Usu_fk = $userId");

    return ($queryFilmeTest->rowCount() == 1 || $querySerieTest->rowCount() == 1)?true:false;
}
?>
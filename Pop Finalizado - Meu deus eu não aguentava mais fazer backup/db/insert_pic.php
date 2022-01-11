<?php

function returnImg($_picture, $min_width, $min_height, $max_width, $max_height)
{
    if($_picture != null)
    {
        $_img_size   = 3000000;
        $_imgError = array();

        // Verificação de Formato
        if(!preg_match("/^image\/(pjpeg|jpeg|png|gif|bmp)$/", $_picture['type']))
        {
            $_imgError[1] = "Erro na imagem! Por favor, insira um formato válido.";
        }

        // Verificação de Dimensão
        $_img_dimensions = getimagesize($_picture['tmp_name']);

        if($_img_dimensions[0] <= $min_width ){$_imgError[2] = "A imagem deve ter pelo menos "  .$min_width. " pixels de largura!";}
        if($_img_dimensions[1] <= $min_height){$_imgError[3] = "A imagem deve ter pelo menos "  .$min_height." pixels de altura!"; }
        if($_img_dimensions[0] >  $max_width ){$_imgError[4] = "A largura não deve ultrapassar ".$max_width. " pixels de largura!";}
        if($_img_dimensions[1] >  $max_height){$_imgError[5] = "A largura não deve ultrapassar ".$max_height." pixels de altura!"; }
        if($_picture['size']   >  $_img_size ){$_imgError[6] = "A imagem deve ter no máximo "   .$_img_size. " bytes!";}

        if (count($_imgError) == 0) 
        {
            preg_match("/\.(gif|bmp|png|jpg|jpeg){1}$/i", $_picture["name"], $ext);

            $_img_name = md5(uniqid(time())). "." . $ext[1];
            $_img_path = "../upload/".$_img_name;

            move_uploaded_file($_picture["tmp_name"], $_img_path);

            return $_img_name;
        }
        else
        {
            return $_imgError;
        }
    }
}


?>
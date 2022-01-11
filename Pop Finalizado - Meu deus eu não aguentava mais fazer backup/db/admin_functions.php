<?php
function requestAdmWhere($_selectData, $colName)
{
    switch($_selectData)
    {
        case 'sem' : return "$colName >"."'".date('Y-m-d', time()-604800 )."'AND"; // 1 semana
        case 'dsem': return "$colName >"."'".date('Y-m-d', time()-1209600)."'AND"; // 2 semanas
        case 'mes' : return "$colName >"."'".date('Y-m-d', time()-2628000)."'AND"; // 1 mes
        case 'dmes': return "$colName >"."'".date('Y-m-d', time()-5256000)."'AND"; // 2 meses
        default: return "";
    }
}
?>
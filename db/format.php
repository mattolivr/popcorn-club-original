<?php
// DATE
function getDayFormat($dateTime)
{
    $date = date_create($dateTime);
    return date_format($date, "d/m/Y");
}
function getYearMouthFormat($dateTime)
{
    $date = date_create($dateTime);
    // date_default_timezone_set('America/Sao_Paulo');
    $formatter = new IntlDateFormatter(
        'pt_BR',
         IntlDateFormatter::MEDIUM,
         IntlDateFormatter::NONE,
         'America/Sao_Paulo',          
         IntlDateFormatter::GREGORIAN
       );

    return $formatter->format($date);
}
function getAge($dateTime)
{
    $from = new DateTime($dateTime);
    $to   = new DateTime('today');
    return $from->diff($to)->y;
}
function minuteToHour($minutes)
{
    $tempo = explode(":", date("G:i", ($minutes*60)));
    return "".$tempo[0]."h ".$tempo[1]."min";
}
?>
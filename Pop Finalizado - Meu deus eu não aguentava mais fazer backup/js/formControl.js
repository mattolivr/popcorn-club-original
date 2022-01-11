function somenteLetra()
{
    var sDigitos="qwertyuiopasdfghjklçzxcvbnmQWERTYUIOPASDFGHJKLÇZXCVBNMáéíóúÁÉÍÓÚãõÃÕâêîôûÂÊÎÔÛ ";
    
    var cTecla = event.key;

    if(sDigitos.indexOf(cTecla) == -1)
    {
        return false;
    } 
    else 
    {
        return true;
    }
}
function somenteNumeros()
{
    var sKeys = "Backspace";
    var sDigitos="0123456789.,()-"+keys;

    var cTecla = event.key;

    if(sDigitos.indexOf(cTecla) == -1)
    {
        return false;
    } 
    else 
    {
        return true;
    }
}
function semEspeciais(email)
{
    var exc = (email)?"@":"";
    var sKeys = "Backspace";
    var sDigitos = "qwertyuiopasdfghjklçzxcvbnmQWERTYUIOPASDFGHJKLÇZXCVBNM0123456789-_."+exc+sKeys;

    var cTecla = event.key;

    if(sDigitos.indexOf(cTecla) == -1)
    {
        return false;
    } 
    else 
    {
        return true;
    }
}
function verificaEmail(id)
{
    var texto = document.getElementById(id).value;
    var cTecla = event.key;
    var sDigito = "@";

    if(sDigito.indexOf(cTecla) != -1)
    {
        if(texto.indexOf(cTecla) != -1)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    else
    {
        return true;
    }
}
function KeyReturn()
{
    console.log(event.key);
}
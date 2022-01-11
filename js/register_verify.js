function empty(elemento)
{
    if(elemento == "" || elemento == null){
        return true;
    }
    else{
        return false;
    }
}

function confirmarCampo(CampoID = "", ConfirmID = "", CampoERROID = "", Type = "")
{
	var Campo       = document.getElementById(CampoID).value;
	var Confirm     = document.getElementById(ConfirmID).value;
	var CampoERRO   = document.getElementById(CampoERROID);
	var usuario     = document.getElementById("register_user_id").value;
	var email       = document.getElementById("register_email_id").value;
	var confirmaEmail = document.getElementById("register_emailc_id").value;
	var senha         = document.getElementById("register_password_id").value;
    var confirmaSenha = document.getElementById("register_passwordc_id").value;
    
    if((Campo === Confirm)){
        CampoERRO.innerHTML = "";
    }
    else{
        CampoERRO.innerHTML = Type + " não coincidem!";
    }

    if(empty(usuario) || empty(email) || empty(confirmaEmail) || empty(senha) || empty(confirmaSenha)){
        document.getElementById("register_submit").disabled = true;
    }
    else{
        if(email == confirmaEmail && senha == confirmaSenha)
        {
            console.log("aberto");
            document.getElementById("register_submit").disabled = false;
        }
        else
        {
            console.log("errado");
            document.getElementById("register_submit").disabled = true;
        }
    }
}
// function confirmarCampoButton()
{
	var usuario = document.getElementById("register_user_id").value;
	var email = document.getElementById("register_email_id").value;
	var confirmaEmail = document.getElementById("register_emailc_id").value;
	var senha = document.getElementById("register_password_id").value;
	var confirmaSenha = document.getElementById("register_passwordc_id").value;
	var date = document.getElementById("register_bday_id").value;
	
	if(email != confirmaEmail || senha != confirmaSenha){
		callToastRegister("Preencha todos os campos e verifique a integridade dos dados!");
	}
}
function validarSenha()
{
    var Mai = /[A-Z]/;
    var Min = /[a-z]/;
    var Esp = /[!|@|#|$|%|^|&|*|(|)|-|_]/;
    var Num = /[0-9]/;

    var auxMai = 0, auxMin = 0, auxEsp = 0, auxNum = 0;

    var Senha = document.getElementById("register_password_id").value;
    var Erro  = document.getElementById("register_password_return");

    console.clear()
	
    for(var i = 0; i < Senha.length; i++)
    {
        if(Mai.test(Senha[i])) auxMai++;
        else if(Min.test(Senha[i])) auxMin++;
        else if(Esp.test(Senha[i])) auxEsp++;
        else if(Num.test(Senha[i])) auxNum++;
    }
    console.log("Maíusculas: "+auxMai);
    console.log("Minúsculas: "+auxMin);
    console.log("Números: "  +auxNum);
    console.log("Especiais: "+auxEsp);
    console.log("Tamanho: "+Senha.length);

    if(Senha.length < 4 && Senha.length > 0)
    {
        // Erro.style.color = "rgb(112, 2, 2)";
        Erro.innerHTML = "Senha muito curta!!!";
    }
    else if(Senha.length == 0)
    {
        Erro.innerHTML = "";
    }
    else
    {
        if(auxMai > 0 && auxMin > 0 && auxNum > 0)
        {
            if(Senha.length < 6)
            {
                console.log()
                Erro.style.color = "var(--yellow)";
                Erro.innerHTML = "Senha razoável!";
            }
            else
            {
                Erro.style.color = "var(--green)";
                Erro.innerHTML = "Senha forte!";
            }
        }
        else
        {
            var ErroString = "";
            Erro.style.color = "var(--text-color)";
            if(auxMai == 0) ErroString = "Insira pelo menos uma letra MAIÚSCULA";
            if(auxMin == 0) ErroString = "Insira pelo menos uma letra MINÚSCULA";
            if(auxNum == 0) ErroString = "Insira pelo menos um NÚMERO";
            Erro.innerHTML = ErroString;
        }
    }
}
window.onload = confirmarCampo('register_password_id','register_passwordc_id', 'register_password_confirm', 'Senhas');


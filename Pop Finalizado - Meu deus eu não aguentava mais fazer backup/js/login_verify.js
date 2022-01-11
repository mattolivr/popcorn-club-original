function verificaCamposs(){
	var login = document.getElementById("login_user_id").value;
	var psw = document.getElementById("login_password_id").value;
	
	if(login != "" && psw != "" || login!=null || psw!=null){
		document.getElementById("login_submit").disabled = false;
	}if(login == "" || psw=="" || login==null || psw==null){
		document.getElementById("login_submit").disabled = true;
	}
}
window.onload = function() {
  verificaCamposs();
};
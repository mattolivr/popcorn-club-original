<h2 id="login_title">Login</h2>
<form method="POST" name="form_login" id="idform_login" action="../db/authenticate.php">
    <p class="login_text">
        <label for="login_user_id">Usuário</label>
    </p>
    <input type="text" name="login_user" id="login_user_id" class="login_input" onkeyup="verificaCamposs()" onkeypress="return semEspeciais()" maxlength="20" required autofocus>
    <p class="login_text">
        <label for="login_password_id">Senha</label>
    </p>
    <input type="password" name="login_password" id="login_password_id" class="login_input" onkeyup="verificaCamposs()" onkeypress="return semEspeciais()" maxlength="35" minlength="#" required>
    <input id="login_submit" type="submit" value="Login" class="btn btn-primary login_btn">
    <input type="reset" value="Limpar" class="btn btn-primary login_btn">
    <div id="login_cadastro">
        <p class="cadastro_text">Não possui uma conta?</p>
        <a id="cadastro_link" class="cadastro_text" href="./register.php">Cadastre-se agora!</a>
    </div>
</form>

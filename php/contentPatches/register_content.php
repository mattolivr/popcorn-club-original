
<h2 id="register_title">Cadastre-se</h2>
<form method="POST" name="form_register" id="idform_register" action="../db/user_insert.php" enctype="multipart/form-data">
     <!-- USERNAME  -->
    <p class="textosregister">
        <label for="register_user_id">Usuário</label>
    </p>
    <input type="text" name="register_user" id="register_user_id" class="register_input" onkeyup="confirmarCampo('register_password_id','register_passwordc_id', 'register_password_confirm', 'Senhas')" onkeypress="return semEspeciais()" maxlength="20" autofocus required><br>
    <small class="register_error"><?php echo (!empty(@$_SESSION['uins_ERRORS']))?"".@$_SESSION['uins_ERRORS']['user_name']:""?></small>
     <!-- EMAIL  -->
    <p class="textosregister">
        <label for="register_email_id">E-Mail</label>
    </p>
    <input type="text" name="register_email" id="register_email_id" class="register_input" onkeyup="confirmarCampo('register_email_id','register_emailc_id', 'register_email_confirm', 'Email');" onkeypress="return semEspeciais(true)" onkeydown="return verificaEmail('register_email_id')" required><br>
    <small class="register_error"><?php echo (!empty(@$_SESSION['uins_ERRORS']))?"".@$_SESSION['uins_ERRORS']['user_email']:""?></small>
    <p class="textosregister">
        <label for="register_emailc_id">Confirme o E-Mail</label>
    </p>
    <input type="text" name="register_emailc" id="register_emailc_id" class="register_input" onkeyup="confirmarCampo('register_email_id','register_emailc_id', 'register_email_confirm', 'Email');" onkeypress="return semEspeciais(true)" onkeydown="return verificaEmail('register_emailc_id')" required><br>
    <small id="register_email_confirm" class="register_error"></small>
     <!-- PASSWORD  -->
    <p class="textosregister">
        <label for="register_password_id">Senha</label>
    </p>
    <input type="password" name="register_password" id="register_password_id" class="register_input" onkeyup="confirmarCampo('register_password_id','register_passwordc_id', 'register_password_confirm', 'Senhas'); validarSenha()" maxlength="32" required><br>
    <small id="register_password_return" class="register_error"></small>
    <p class="textosregister">
        <label for="register_passwordc_id">Confirme a Senha</label>
    </p>
    <input type="password" name="register_passwordc" id="register_passwordc_id" class="register_input" onkeypress="return semEspeciais()" onkeyup="confirmarCampo('register_password_id','register_passwordc_id', 'register_password_confirm', 'Senhas')" maxlength="32" required><br>
    <small id="register_password_confirm" class="register_error"></small>
     <!-- BIRTHDAY  -->
    <p class="textosregister">
        <label for="register_bday_id">Data de Nascimento</label>
    </p>
    <input type="date" name="register_bday" id="register_bday_id" class="register_input" required><br>
    <small class="register_error">
        <?php
            echo (!empty(@$_SESSION['uins_ERRORS']))?"".@$_SESSION['uins_ERRORS']['user_bday']:"";
        ?>
    </small>
     <!-- LOCATION  -->
    <p class="textosregister">
        <label for="register_city_id">Cidade/País</label>
    </p>
    <p id="register_location">
        <input type="text" name="register_city"  id="register_city_id" class="register_input" placeholder="Campinas" onkeypress="return somenteLetra()">
        <input type="text" name="register_country" id="register_country_id" class="register_input" placeholder="Brasil" onkeypress="return somenteLetra()">
    </p>
     <!-- PROFILE PICTURE  -->
    <p class="textosregister">
        <label for="register_pic_id">Foto de Perfil</label>
    </p>
    <input type="file" name="register_pic" id="register_pic_id" class="register_input text-truncate">
        <?php
            if(!empty(@$_SESSION['uins_imgERRORS'])):
                foreach($_SESSION['uins_imgERRORS'] as $_imgERROR)
                {
        ?>
            <br><small class="register_error"><?php echo $_imgERROR;?></small>
        <?php
                    // if(strpos($_imgERROR, "Erro") == false)break;
                }
            endif;
        ?>
     <!-- BUTTONS  -->
    <input id="register_submit" type="submit" value="Cadastrar" class="btn btn-primary register_btn" onclick="confirmarCampoButton()">
    <input type="reset" value="Limpar" class="btn btn-primary register_btn">
    <div id="register_login">
        <p class="login_text">Já possui uma conta?</p>
        <a id="login_link" class="login_text" href="./login.php">Faça Login!</a>
    </div>
     <script type="text/JavaScript" src="../js/register_verify.js"></script>
</form>

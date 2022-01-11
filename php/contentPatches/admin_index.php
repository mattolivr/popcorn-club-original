<div id="admin_index">
        <hr class="hr_admIndex">
        <p class="index_title">Importar</p>
        <hr class="hr_admIndex">
        <form method="GET" action="<?php $_SERVER['PHP_SELF']?>" name="admin_import_index"> 
            <div class="form-row">
                <div class="col-lg-7 mb-1 mt-1">
                    <select class="custom-select" name="adm_imp_sel" id="adm_imp_sel" onchange="verifyImport()">
                        <option value="none" selected></option>
                        <option value="filme">Filmes</option>
                        <option value="serie">Séries</option>
                    </select>
                </div>
                <div class="col-lg-5 mb-1 mt-1">
                    <button type="submit" id="adm_imp_btn" class="btn btn-primary col">Importar</button>
                </div>
            </div>
        </form>
        <hr class="hr_admIndex">
        <p class="index_title">Selecionar</p>
        <hr class="hr_admIndex">
        <form method="GET" action="<?php $_SERVER['PHP_SELF']?>" name="admin_request_index">
            <div class="form-row">
                <div class="col-lg-4 mb-2 mt-1">
                    <label for="adm_req_sel1" class="col-form-label">De:</label>
                </div>
                <div class="col-lg-8 mb-2 mt-1">
                    <select class="custom-select " id="adm_req_sel1" name="adm_req_sel1">
                        <option value="all" selected>Tudo</option>
                        <option value="filme">Filmes</option>
                        <option value="serie">Séries</option>
                        <option value="usuario">Usuário</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="col-lg-4 mb-2 mt-1">
                    <label for="adm_req_sel2" class="col-form-label">Onde:</label>
                </div>
                <div class="col-lg-8 mb-2 mt-1">
                    <select class="custom-select" id="adm_req_sel2" name="adm_req_sel2">
                        <option value="none" selected>Todo o Período</option>
                        <optgroup label="Foi adicionado...">
                            <option value="sem">Há uma semana</option>
                            <option value="dsem">Há duas semanas</option>
                            <option value="mes">Há um mês</option>
                            <option value="dmes">Há dois meses</option>
                        </optgroup>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="col-lg-4 mb-2 mt-1">
                    <label for="adm_req_inp" class="col-form-label">Contém:</label>
                </div>
                <div class="col-lg-8 mb-2 mt-1">
                    <input type="text" id="adm_req_inp" name="adm_req_inp" class="form-control" placeholder="Digite algo..." maxlength="20" onkeydown="return semEspeciais(false)">
                </div>
            </div>
            <div class="form-row">
                <div class="col-lg-4 mb-2 mt-1">
                    <label for="adm_req_sel3" class="col-form-label">Ordernar:</label>
                </div>
                <div class="col-lg-8 mb-2 mt-1">
                    <select class="custom-select" id="adm_req_sel3" name="adm_req_sel3">
                        <option value="Name" selected>Por nome</option>
                        <option value="Date">Por data</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="col-12">
                    <button type="submit" id="adm_req_btn" class="btn btn-primary col">Pesquisar...</button>
                </div>
            </div>
        </form>
        <hr class="hr_admIndex">
    </div>
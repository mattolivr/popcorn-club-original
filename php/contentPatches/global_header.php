 <header id="header_container">
    <a href="../php/home.php">
        <?php if($_page != 'about'): ?>
        <img id="header_logo" src=<?php echo $_a_logo?>>
        <?php endif; ?>
    </a>
    <div id="header_nav">
        <ul>
            <li style="display: <?php ;echo (@$_page == 'home')?"none":"block"?>">
                <a href="../php/home.php">
                    <span class="header_link">Página Inicial</span>
                </a>
            </li>
            <li>
                <a href="#" role="button" id="header_drop_conteudo" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="header_link">Conteúdo</span>
                </a>
                <div class="dropdown-menu header_drop" aria-labelledby="header_drop_conteudo">
                    <a class="dropdown-item" href="#">Mais Populares</a>
                    <a class="dropdown-item" href="#">Novidades</a>
                    <a class="dropdown-item" href="#">Melhores</a>
                </div>
            </li>
            <li>
                <a href="#" role="button" id="header_drop_comunidade" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="header_link">Comunidade</span>
                </a>
                <div class="dropdown-menu header_drop" aria-labelledby="header_drop_comunidade">
                    <a class="dropdown-item" href="#">Seus Clubes</a>
                    <a class="dropdown-item" href="#">Encontrar Clubes</a>
                    <a class="dropdown-item" href="#">Encontrar Amigos</a>
                </div>
            </li>
            <li style="display: <?php ;echo (@$_page == 'about')?"none":"block"?>">
                <a href="../php/about.php">
                    <span class="header_link">Sobre</span>
                </a>
            </li>
            <li>
                <button id="header_dark_button" class="btn btn-primary">
                    <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" class="bi bi-moon mb-auto mt-auto" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M14.53 10.53a7 7 0 0 1-9.058-9.058A7.003 7.003 0 0 0 8 15a7.002 7.002 0 0 0 6.53-4.47z"/>
                    </svg>
                </button>
            </li>
        </ul>
        <div id="header_searchbar" class="form-group">
            <form method="GET" action="./results.php" name="form_search" class="mr-3">
                <div id="search_container" class="form-row">
                    <div class="input-group">
                        <select class="custom-select col-3" id="searchbar_select" name="header_select">
                            <option value="filme" selected>Filmes</option>
                            <option value="serie">Series</option>
                            <option value="usuario">Usuário</option>
                        </select>
                        <input type="text" class="form-control col-auto" id="searchbar_input" name="header_search" maxlength="25" placeholder="Pesquise algo...">
                        <button type="submit" class="form-control col-2 btn btn-primary" id="searchbar_submit">
                            <svg width="1.2em" height="1.2em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
                                <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
                            </svg>
                        </button>
                    </div>
                </div>
            </form>
            <?php if ($_page != 'userprofile'):?>
            <button id="header_menu_button" class="btn btn-primary h-100">
                <svg xmlns="http://www.w3.org/2000/svg" width="1.5em" height="1.5em" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M2.5 11.5A.5.5 0 0 1 3 11h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 3 7h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 3 3h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                </svg>
            </button>
            <?php endif ?>
        </div>  
    </div>
</header>
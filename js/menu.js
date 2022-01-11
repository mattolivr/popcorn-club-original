const requestMenuStatus = localStorage.getItem('menu');
const $menu = document.getElementById("menu_container");
const $menu_button = document.querySelector('#header_menu_button');

    if(requestMenuStatus == 'closed'){
        $menu.style.display = "none";
    }
    else if(requestMenuStatus == 'show'){
        $menu.style.display = "block";
    }

try{$menu_button.addEventListener('click', function(){
    if(requestMenuStatus == null || requestMenuStatus == "" || requestMenuStatus == 'closed'){
        localStorage.setItem('menu', 'show');
        document.location.reload(true);
        return;
    }
    else{
        localStorage.setItem('menu', 'closed');
        document.location.reload(true);
    }
})}catch{}

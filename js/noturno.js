const requestDarkStatus = localStorage.getItem('dark');
const $html = document.querySelector('html');
const $dark_button = document.querySelector('#header_dark_button');

    if (requestDarkStatus) {
      // ativa o night mode
      document.documentElement.classList.add('dark-mode');
    }

try{$dark_button.addEventListener('click',function(){
    $html.classList.toggle('dark-mode');
    if (document.documentElement.classList.contains('dark-mode')) {
        // salva o tema no localStorage
        localStorage.setItem('dark', true);
        
        return;
      }else{
          localStorage.removeItem('dark');
        
      }
})}catch{}

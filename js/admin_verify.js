function verifyImport()
{
    var Select = document.getElementById("adm_imp_sel");
    var Button = document.getElementById("adm_imp_btn");
    Button.disabled = (Select.selectedIndex == 0)?true:false;
}
window.onload = verifyImport();
function showContent(obj){
    var id = obj.id;
    var content = document.querySelector("#"+id+">div>div[class=result_content]");
    content.style.display = "block";
}
function hideContent(obj){
    var id = obj.id;
    var content = document.querySelector("#"+id+">div>div[class=result_content]");
    content.style.display = "none";
}
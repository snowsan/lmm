/**
 * Created by ttc on 18-1-5.
 */
function unlogin(haha) {
    var o = document.getElementById("doupiao");
    o.style.display="none";
    var title = haha.title;
    var id = haha.id;
    window.location.href="http://localhost:8080/Servletdingdan?name="+title+"&"+"id="+id;
}
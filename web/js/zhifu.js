/**
 * Created by ttc on 18-1-4.
 */

window.onload = function () {

    document.getElementById("submitCreateOrder").onclick = function () {
        var xhr = new XMLHttpRequest();
        xhr.open("post", "/ZhiFuServlet");
        var f = document.getElementById("order_submit");
        var fd = new FormData(f);
        xhr.send(fd);

        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200 || xhr.status == 302) {
                    var data = xhr.responseText;
                    document.getElementById("errmess").innerHTML = data;
                }
            }
        }


    }

}

function numchange() {
    var count = document.getElementById("menpiao_count").value;
    var prica = document.getElementById("nobd-text3").innerHTML;
    var zongshu = count * prica;
    document.getElementById("priceCount").innerHTML = zongshu;
}
/**
 * Created by ttc on 18-1-9.
 */
window.onload = function () {

    document.getElementById("btnbeij").onclick = function () {
        var xhr = new XMLHttpRequest();
        xhr.open("post", "../page/beijingtest.jsp");
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200 || xhr.status == 304) {
                    document.getElementById("beijing").innerHTML = xhr.responseText;
                }
            }
        }
    }

    document.getElementById("btnshangh").onclick = function () {
        var xhr = new XMLHttpRequest();
        xhr.open("post", "../page/shanghaitest.jsp");
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200 || xhr.status == 304) {
                    document.getElementById("beijing").innerHTML = xhr.responseText;
                }
            }
        }
    }
    document.getElementById("btnguangz").onclick = function () {
        var xhr = new XMLHttpRequest();
        xhr.open("post", "../page/guangzhoutest.jsp");
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200 || xhr.status == 304) {
                    document.getElementById("beijing").innerHTML = xhr.responseText;
                }
            }
        }
    }
    document.getElementById("btnchengd").onclick = function () {
        var xhr = new XMLHttpRequest();
        xhr.open("post", "../page/chengdutest.jsp");
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200 || xhr.status == 304) {
                    document.getElementById("beijing").innerHTML = xhr.responseText;
                }
            }
        }
    }
    document.getElementById("btnhangz").onclick = function () {
        var xhr = new XMLHttpRequest();
        xhr.open("post", "../page/hangzhoutest.jsp");
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200 || xhr.status == 304) {
                    document.getElementById("beijing").innerHTML = xhr.responseText;
                }
            }
        }
    }
    document.getElementById("btnnanj").onclick = function () {
        var xhr = new XMLHttpRequest();
        xhr.open("post", "../page/nanjingtest.jsp");
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200 || xhr.status == 304) {
                    document.getElementById("beijing").innerHTML = xhr.responseText;
                }
            }
        }
    }
    document.getElementById("btnwuh").onclick = function () {
        var xhr = new XMLHttpRequest();
        xhr.open("post", "../page/wuhantest.jsp");
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200 || xhr.status == 304) {
                    document.getElementById("beijing").innerHTML = xhr.responseText;
                }
            }
        }
    }

}
/**
 * Created by ttc on 17-12-27.
 */
window.onload = function () {
    window.setInterval(changeimg,1000);

    //设定当前日期
    var date = new Date();
    var year = date.getFullYear();
    var month = ("0"+(date.getMonth()+1)).slice(-2);
    var dd = ("0"+date.getDate()).slice(-2);
    var o = document.getElementById("input3");
    var str = year+"-"+(month)+"-"+(dd);
    o.value=str;
    console.log(str);

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
//定时更新背景图片
var s = 0;
function changeimg() {
    var o = document.getElementById("searchinner");
    var img = ["../img/mu1.jpg","../img/mu3.jpg","../img/mu4.jpg","../img/mu5.jpg",
        "../img/mu6.jpg","../img/mu7.jpg","../img/mu8.jpg","../img/mu9.jpg","../img/mu10.jpg"];
    if(s<img.length)
    {
        s++;
        o.style.backgroundImage='url('+img[s]+')';
    }
    if(s==img.length)
    {
        s = 0;
        o.style.backgroundImage='url('+img[0]+')';
    }
}

function mouseover(i) {
    var o = document.getElementsByName("demo");

    for(var w=0;w<o.length;w++)
    {
       if(w!=i)
       {
           o[w].style.display="none";
       }
       else
       {
           o[w].style.display="block";
       }
    }

}
//点击选择从时，弹出供选择的框
function searchin() {
    var o = document.getElementById("search");
    o.style.display="block";
}

function searchin1() {
    var o = document.getElementById("search1");
    o.style.display="block";
}
function startadress(i) {
    var o = document.getElementById("input1");
    o.value = document.getElementsByName("adress")[i].innerHTML;
    document.getElementById("search").style.display="none";
}
function endadress(i) {
    var o = document.getElementById("input2");
    o.value = document.getElementsByName("adress1")[i].innerHTML;
    document.getElementById("search1").style.display="none";
}
//点击只搜高铁时，会更换图片
function chimg() {
    var o = document.getElementById("chengeimg");
    console.log(o.src);
    if(o.src=="http://localhost:8080/img/duihao.jpg")
    {
        o.src = "../img/redduihao.jpg";
    }
    else
    {
        o.src = "../img/duihao.jpg";
    }
}
function dingdan() {
    var name = "run";
    window.location.href="http://localhost:8080/Servletd?name="+name;
}

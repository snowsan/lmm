/**
 * Created by ttc on 18-1-4.
 */
window.onload = function () {
    //设定当前日期
    var date = new Date();
    var year = date.getFullYear();
    var month = ("0"+(date.getMonth()+1)).slice(-2);
    var dd = ("0"+date.getDate()).slice(-2);
    var o = document.getElementById("input");
    var str = year+"-"+(month)+"-"+(dd);
    o.value=str;
}
function gin(i) {
    var o = document.getElementsByClassName("gaotiein");
    var s = document.getElementById("buxian");
    if(i==0)
    {
        if(o[i].src=="http://localhost:8080/img/gaitied.jpg")
        {
            o[i].src = "../img/gaotiewd.jpg";
        }
        else
        {
            o[i].src = "../img/gaitied.jpg";
            s.style.backgroundColor = "white";
            s.style.color = "black";
        }
    }
   if(i==1)
   {
       if(o[i].src=="http://localhost:8080/img/dongched.jpg")
       {
           o[i].src = "../img/dongchewd.jpg";
       }
       else
       {
           o[i].src = "../img/dongched.jpg";
           s.style.backgroundColor = "white";
           s.style.color = "black";
       }
   }
   if(i==2)
   {
       if(o[i].src=="http://localhost:8080/img/putongched.jpg")
       {
           o[i].src = "../img/putongchewd.jpg";
       }
       else
       {
           o[i].src = "../img/putongched.jpg";
           s.style.backgroundColor = "white";
           s.style.color = "black";
       }
   }
   if(o[0].src=="http://localhost:8080/img/gaotiewd.jpg" &&
   o[1].src == "http://localhost:8080/img/dongchewd.jpg" &&
   o[2].src == "http://localhost:8080/img/putongchewd.jpg")
   {
       s.style.backgroundColor = "#FF9900";
       s.style.color = "white";
   }

}
function time(i) {
    var o = document.getElementsByClassName("time");
    var s = document.getElementById("buxian1");
    if(i==0)
    {
        if(o[i].src=="http://localhost:8080/img/time1d.jpg")
        {
            o[i].src = "../img/time1.jpg";
        }
        else
        {
            o[i].src = "../img/time1d.jpg";
            s.style.backgroundColor = "white";
            s.style.color = "black";
        }
    }
    if(i==1)
    {
        if(o[i].src=="http://localhost:8080/img/time2d.jpg")
        {
            o[i].src = "../img/time2.jpg";
        }
        else
        {
            o[i].src = "../img/time2d.jpg";
            s.style.backgroundColor = "white";
            s.style.color = "black";
        }
    }
    if(i==2)
    {
        if(o[i].src=="http://localhost:8080/img/time3d.jpg")
        {
            o[i].src = "../img/time3.jpg";
        }
        else
        {
            o[i].src = "../img/time3d.jpg";
            s.style.backgroundColor = "white";
            s.style.color = "black";
        }
    }
    if(i==3)
    {
        if(o[i].src=="http://localhost:8080/img/time4d.jpg")
        {
            o[i].src = "../img/time4.jpg";
        }
        else
        {
            o[i].src = "../img/time4d.jpg";
            s.style.backgroundColor = "white";
            s.style.color = "black";
        }
    }
    if(o[0].src=="http://localhost:8080/img/time1.jpg" &&
        o[1].src == "http://localhost:8080/img/time2.jpg" &&
        o[2].src == "http://localhost:8080/img/time3.jpg" &&
        o[3].src == "http://localhost:8080/img/time4.jpg")
    {
        s.style.backgroundColor = "#FF9900";
        s.style.color = "white";
    }

}

function mouseover() {
    var o = document.getElementById("jiayi");
    o.style.display = "block";
}
function mouseout() {
    var o = document.getElementById("jiayi");
    o.style.display = "none";
}
function hfunc() {
    var o = document.getElementById("huan");
    o.src = "../img/huan.jpg";
}
function uhfunc() {
    var o = document.getElementById("huan");
    o.src = "../img/unhuan.jpg";
}
function dfunc() {
    var o = document.getElementById("startadress");
    var s = document.getElementById("endadress");
    var t = o.value;
    o.value = s.value;
    s.value=t;
}
function func(o) {
    var title = o.title;
    var id = o.id;
    window.location.href="http://localhost:8080/Servletding?name="+title+"&"+"id="+id;
}
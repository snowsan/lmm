//第一次进的弹出协议
function quit() {
    window.location.href = "http://localhost:8080/page/JiuDianDingDan.jsp";
}
function JiXu() {
    var o = document.getElementById("XieYi2");
    o.style.display = "none";
}

//验证手机号是否正确
function ShouJiHao() {
    var a = /^[1][0-9]{10,10}$/;
    var o = document.getElementById("SouJiHao");
    var oo = document.getElementById("ShouJiHaoYanZheng");
    var ooo = document.getElementById("YZM");
    if (a.test(o.value)) {
        o.style.backgroundColor = "#FAFFBD";
        oo.style.display = "none";
        //Chrome 和Fierfox display="" 或者"table-row";;;;;   ="block";会布局错乱
        ooo.style.display = "table-row";


        //这里还要判断一下是否有重复的情况；；；；；；

        // oo.innerHTML = "&nbsp;&nbsp;&nbsp;此手机号已注册，完成验证后即可登录携程。立即验证>";
//
//
//
//
//
//

        //在注册页获取手机号，放到phone中
        document.getElementById("phone").innerHTML=o.value;





    } else {
        o.style.backgroundColor = "#FFF";
        oo.innerHTML = "&nbsp;&nbsp;&nbsp;请输入正确的手机号";
        oo.style.display = "block";
        ooo.style.display = "none";

    }
}

//验证密码是否符合 ，判断密码强度
function MiMa1() {
    var o = document.getElementById("MiMa");
    var oo = document.getElementById("MiMaYanZheng");
    var ruo = document.getElementById("Ruo");
    var zhong = document.getElementById("Zhong");
    var qiang = document.getElementById("Qiang");
    var a = /^(\d)\1+$/;
    var a1 = /^[0-9]{8,10}$/;
    var a2 = /^[A-z0-9]{8,20}$/;


    if (o.value == "") {
        o.style.backgroundColor = "#FFF";
        oo.innerHTML = "&nbsp;&nbsp;&nbsp;请设置登录密码。";
        oo.style.display = "block";

    } else {
        if (o.value.length < 8) {
            oo.style.display = "block";
            o.style.backgroundColor = "#FFF";
            oo.style.width = "324px";
            oo.innerHTML = "&nbsp;&nbsp;&nbsp;密码需为8-20个字符,由字母、数字和符号组成。";
            ruo.style.backgroundColor = "#F1D0B9";
            zhong.style.backgroundColor = "#F1D0B9";
            qiang.style.backgroundColor = "#F1D0B9";
        } else {
            oo.style.display = "none";

            if (a.test(o.value)) {
                oo.style.display = "block";
                o.style.backgroundColor = "#FFF";
                oo.innerHTML = "&nbsp;&nbsp;&nbsp;密码过于简单，有被盗风险。";
                ruo.style.backgroundColor = "#F1D0B9";
                zhong.style.backgroundColor = "#F1D0B9";
                qiang.style.backgroundColor = "#F1D0B9";
            } else {
                o.style.backgroundColor = "#FAFFBD";
                oo.style.display = "none";

                if (a1.test(o.value)) {
                    ruo.style.backgroundColor = "#FFB000";
                } else {
                    if (a2.test(o.value)) {
                        ruo.style.backgroundColor = "#FFB000";
                        zhong.style.backgroundColor = "#FFB000";
                    } else {
                        ruo.style.backgroundColor = "#FFB000";
                        zhong.style.backgroundColor = "#FFB000";
                        qiang.style.backgroundColor = "#FFB000";

                    }
                }

                //这里调用MiMa22()；是应为如果密码输入之后改了，可以判断两次是否一致
                MiMa22();
            }
        }
    }

}

//判断两次密码是否一致
function MiMa22() {
    var o = document.getElementById("MiMa2");
    var oo = document.getElementById("MiMa2YanZheng");
    var ooo = document.getElementById("MiMa").value;
    if (o.value == "") {
        o.style.backgroundColor = "#FFF";
        oo.innerHTML = "&nbsp;&nbsp;&nbsp;请再次输入密码。";
        oo.style.display = "block";
    } else {
        if (o.value != ooo) {
            o.style.backgroundColor = "#FFF";
            oo.innerHTML = "&nbsp;&nbsp;&nbsp;您两次输入的密码不一致。";
            oo.style.display = "block";
        } else {
            o.style.backgroundColor = "#FAFFBD";
            oo.style.display = "none";
        }
    }
}


//   显示验证码
var code;
function createCode() {
    //首先默认code为空字符串
    code = '';
    //设置长度，这里看需求，我这里设置了4
    var codeLength = 4;
    var codeV = document.getElementById('code');
    //设置随机字符
    var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
    //循环codeLength 我设置的4就是循环4次
    for (var i = 0; i < codeLength; i++) {
        //设置随机数范围,这设置为0 ~ 36
        var index = Math.floor(Math.random() * 36);
        //字符串拼接 将每次随机的字符 进行拼接
        code += random[index];
    }
    //将拼接好的字符串赋值给展示的Value
    codeV.value = code;
}

//下面就是判断是否== 的代码，无需解释，点击下一步table 会隐藏 ， 弹出<div id="YanZheng2">
function validate() {

    var oo = document.getElementById("input1");
    var o = document.getElementById("YanZhengMa1");
    var qqq = document.getElementById("SouJiHao").value;
    var www = document.getElementById("MiMa").value;
    var eee = document.getElementById("MiMa2").value;
    var YanZheng = document.getElementsByClassName("YanZhengMa").length;
    if (YanZheng == 0) {

        if (qqq == "") {
            ShouJiHao();
        } else if (www == "") {
            MiMa1();
        } else if (eee == "") {
            MiMa22();
        } else {
            if (oo.value == "") {
                oo.style.backgroundColor = "#FFF";
                o.innerHTML = "&nbsp;&nbsp;&nbsp;请输入验证码。";
                o.style.display = "block";

            } else if (oo.value != code) {
                oo.style.backgroundColor = "#FFF";
                o.innerHTML = "&nbsp;&nbsp;&nbsp;验证码输入错误，请重新输入。";
                o.style.display = "block";
                oo.value = "";
                createCode();
            } else {
                oo.style.backgroundColor = "#FAFFBD";
                o.style.display = "none";
                document.getElementById("table1").style.display = "none";
                document.getElementById("YanZheng2").style.display = "block";

                var ooo=document.getElementById("YanZheng11");
                var oooo=document.getElementById("YanZheng111");
                ooo.src ="../img/jindutiao.gif";
                oooo.style.color="#799D08";
            }
        }
    }
}


//设置此处的原因是每次进入界面展示一个随机的验证码，不设置则为空
window.onload = function () {
    createCode();


}



//
// // 点击下一步弹出
// function YanZhengMa() {
//     var o=document.getElementById("YanZhengMa2");
//     var oo=document.getElementById("YanZhengMa22");
//
//     //！！！！！！！！！！这里判断发送到手机的验证码是否正确！！！！！！
//     if(o.value==""){
//         oo.style.display="block";
//         oo.innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;请输入验证码";
//     }else if(o.value!="1234"){
//         oo.style.display="block";
//         oo.innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;请输入正确的验证码";
//
//     }else {
//         oo.style.display="none";
//     }
// }
//

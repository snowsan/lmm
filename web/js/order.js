/**
 * Created by ttc on 18-1-5.
 */
window.onload = function () {
   func();
}
function func() {
    var xhr = new XMLHttpRequest();
    xhr.open("post", "/SelectMenPiao_JingDian");
    xhr.send();

    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
            if (xhr.status == 200 || xhr.status == 302) {
                var data = xhr.responseText;
                var menpiao_jingdienList = JSON.parse(data);
                var html = "";

                for (var i = 0; i < menpiao_jingdienList.length; i++) {
                    html += '<tr >';
                    html += '	<td width="400">' + menpiao_jingdienList[i].jd_name + '</td>';
                    html += '	<td width="80">' + menpiao_jingdienList[i].mp_count + '</td>';
                    html += '	<td width="100">' + menpiao_jingdienList[i].mp_date + '</td>';
                    html += '	<td width="70">' + menpiao_jingdienList[i].mp_status + '</td>';
                    html += '	<td width="110">退票</td>';
                    html += '</tr>';
                }

                document.getElementById("t_body").innerHTML = html;
            }
        }
    }
}

function jiudianFunc() {
    var xhr = new XMLHttpRequest();

    xhr.open("post", "/ServletJiuDianDingDan");
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");


    var name=document.getElementById("name8").value;
    xhr.send("name=" + name);
    xhr.onreadystatechange = function () {
        var obj = JSON.parse(xhr.responseText);
        if (obj == "") {
            document.getElementById("t_body").innerHTML = "您还没有订单！";
        } else {
            if (xhr.readyState == 4) {
                if (xhr.status == 200 || xhr.status == 304) {
                    var html = "";
                    for (var i in obj) {
                        html += '<tr>'
                        html += ' <td width="170">' + obj[i].jiudianname + '</td>'
                        html += ' <td width="170"> ￥' + obj[i].price + '</td>'
                        html += ' <td width="170"> ' + obj[i].startdate + '</td>'
                        html += ' <td width="170"> 已经预定</td>'
                        html += ' <td width="170"> 取消  </td>'
                        html += '</tr>'
                    }

                    document.getElementById("t_body").innerHTML = html;
                }
            }
        }
    }
}
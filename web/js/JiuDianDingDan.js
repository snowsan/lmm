window.onload = function () {
    document.getElementById("but").onclick = function () {
        var name = document.getElementById("name11").value;
        var xhr = new XMLHttpRequest();
        xhr.open("post", "/ServletJiuDianDingDan");
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.send("name=" + name);
        xhr.onreadystatechange = function () {
            var obj = JSON.parse(xhr.responseText);
            if (obj == "") {
                document.getElementById("qqqq").innerHTML = "您还没有订单！";
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

                        document.getElementById("qqqq").innerHTML = html;
                    }
                }
            }
        }
    }
}


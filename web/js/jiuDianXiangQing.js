/**
 * Created by ttc on 17-12-29.
 */
window.onload = function () {

    document.getElementById("but").onclick = function () {
        var name = document.getElementById("name").value;
        var xhr = new XMLHttpRequest();
        xhr.open("post", "/ServletJiuDian1");
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.send("name=" + name);
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200 || xhr.status == 304) {
                    var obj = JSON.parse(xhr.responseText);
                    var html = "";
                    for (var i in obj) {
                        html += ' <div class="FangJian11">'
                        html += ' <h3> ' + obj[i].jiudian + '  </h3>'
                        html += ' <div class="FangJian">'
                        html += '    <img width="100px" height="60px" src="../images/RenMenDuJiaQu/' + obj[i].images + '" alt="">'
                        html += '    <div>&nbsp;&nbsp;' + obj[i].name + ' '
                        html += '    <div>&nbsp;&nbsp;' + obj[i].bed + ' | 不能加床 | 最大入住 ' + obj[i].number1 + '人 | 宽带免费 共两个商品</div>'
                        html += '</div>'
                        html += '</div>'
                        html += '<table cellspacing="0">'
                        html += '    <tr class="MuLuLan">'
                        html += '       <td width="400">商品名称</td>'
                        html += '       <td width="80">床型</td>'
                        html += '       <td width="80">早起</td>'
                        html += '       <td width="80">窗户</td>'
                        html += '       <td width="80">政策</td>'
                        html += '       <td width="80">房价</td>'
                        html += '    </tr>'
                        html += '    <tr  class="FangJian2">'
                        html += '       <td>[双早][滑雪2人次]</td>'
                        html += '       <td>' + obj[i].bed + '</td>'
                        html += '       <td>双早</td>'
                        html += '       <td>有窗</td>'
                        html += '       <td>不可退改</td>'
                        html += '       <td class="price1">￥' + obj[i].price + '</td>'
                        html += '       <td><span class="YuDing1" id=' + obj[i].id + ' onclick="YuDing(this)">预订</span></td>'
                        html += '    </tr>'
                        html += '    <tr>'
                        html += '       <td>门店专用[双早][连住2天及以上][滑雪2人次]</td>'
                        html += '       <td>' + obj[i].bed + '</td>'
                        html += '       <td>双早</td>'
                        html += '       <td>有窗</td>'
                        html += '       <td>不可退改</td>'
                        html += '       <td class="price1">￥' + obj[i].price + '</td>'
                        html += '       <td><span class="YuDing1" id=' + obj[i].id+1 + ' onclick="YuDing(this)" >预订</span></td>'
                        html += '    </tr>'
                        html += '</table>'
                        html += ' </div>'
                    }
                    document.getElementById("quizContainer").innerHTML = html;

                }
            }
        }
    }


}


//跳转到ServletDingFang1  传递一个id
function YuDing(obj) {
    var id = obj.id;
    window.location.href = "http://localhost:8080/ServletDingFang1?name=" + id;
}




window.onload = function () {
    selectJingDianInfo();
}

function selectJingDianInfo() {
    var xhr = new XMLHttpRequest();
    xhr.open("post", "/selectJingDianInfoServlet");
    xhr.send();

    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
            if (xhr.status == 200 || xhr.status == 302) {
                var data = xhr.responseText;
                var list = JSON.parse(data);
                var html = "";

                for (var i = 0; i < list.length; i++) {
                    html += '<tr >';
                    html += '	<td><input type="checkbox" id="checkbox' + i + '" name="checkbox1"></td>';
                    html += '	<td>' + list[i].jd_id + '</td>';
                    html += '	<td>' + list[i].jd_name + '</td>';
                    html += '	<td>' + list[i].jd_price + '</td>';
                    html += '	<td>' + list[i].jd_address + '</td>';
                    html += '	<td>' + list[i].jd_photoname + '</td>';
                    html += '	<td>' + list[i].jd_introduction + '</td>';
                    html += '	<td>' + list[i].jd_type + '</td>';
                    html += '	<td>' + list[i].city_name + '</td>';
                    html += '	<td>' + list[i].jd_rank + '</td>';
                    html += '	<td>' + list[i].jd_date + '</td>';
                    html += '	<td>删除</td>';
                    html += '</tr>';
                }

                document.getElementById("t_body").innerHTML = html;
            }
        }
    }
}

function city() {
    //获取city_name变化的参数
    var city_name = document.getElementById("city_name").value;
    //ajax查询对应参数的景点类型
    var xhr = new XMLHttpRequest();

    xhr.open("post", "/JDTypeServlet", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send("city_name=" + city_name);

    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
            if (xhr.status == 200 || xhr.status == 302) {
                var data = xhr.responseText;
                var list = JSON.parse(data);
                var html = "";
                html += '<option value="-1">请选择</option>';
                for (var i = 0; i < list.length; i++) {
                    html += '<option value="' + list[i].jt_name + '">' + list[i].jt_name + '</option>';
                }

                document.getElementById("jd_type").innerHTML = html;
            }
        }
    }
}

/**
 * Created by ttc on 17-12-28.
 */

window.onload = function () {
    city(null);
    jdtype(null);
}

function city(obj) {
    var city = "沈阳";
    var type = ""
    if (obj != null && obj != "") {
        city = obj.innerHTML;
    }

    //查询对应城市的风景类型显示在li中
    //写一段ajax查询
    var xhr = new XMLHttpRequest();
    xhr.open("post", "/JDTypeServlet");
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded", false);
    xhr.send("city_name=" + city);
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
            if (xhr.status == 200 || xhr.status == 302) {
                var data = xhr.responseText;
                var list = JSON.parse(data);
                type = list[0].jt_name;
                jdtype(null, type);
                var html = "";
                for (var i = 0; i < list.length; i++) {
                    html += '<li class="subject_js" onclick="jdtype(this,null)">' + list[i].jt_name + '<i class="ticket_icon"></i></li>';
                }

                document.getElementById("jd_type").innerHTML = html;
            }
        }
    }
}

function jdtype(obj, type) {
    if (obj != null && obj != "") {
        type = obj.innerHTML;
        type = type.substring(0, type.indexOf("<"));
    }
    //写一段ajax查询
    var xhr = new XMLHttpRequest();
    xhr.open("post", "/JingDianServlet");
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send("jd_type=" + type);
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
            if (xhr.status == 200 || xhr.status == 302) {
                var data = xhr.responseText;
                var list = JSON.parse(data);
                var html = "";

                for (var i = 0; i < list.length; i++) {
                    html += '<li>';
                    html += '	<a href="/JDInfoServlet?jd_id=' + list[i].jd_id + '" target="_blank"';
                    html += '	onclick="">';
                    html += '		<div class="promotion_img_box">';
                    html += '		<img src="/images/' + list[i].jd_photoname + '.jpg"';
                    html += '	width="222" height="150" alt="">';
                    html += '		</div>';
                    html += '		<div class="promotion_footer">';
                    html += '		<h5 title="' + list[i].jd_name + '">' + list[i].jd_name + '</h5>';
                    html += '		<span class="promotion_comment_b">97.6% 好评</span>';
                    html += '	<p><span>¥<dfn>' + list[i].jd_price + '</dfn></span><samp>起</samp></p>';
                    html += '	</div>';
                    html += '	</a>';
                    html += '</li>';
                }

                document.getElementById("promotion_list").innerHTML = html;
            }
        }
    }
}




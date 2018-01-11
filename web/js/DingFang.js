function func() {
    var f = document.getElementById("form");
    var fd = new FormData(f);
    var xh = new XMLHttpRequest();
    xh.open("post", "/ServletDingFang");
    xh.send(fd);
    xh.onreadystatechange = function () {
        if (xh.readyState == 4) {
            if (xh.status == 200 || xh.status == 304) {
                document.getElementById("DingFangChengGong").innerHTML = xh.responseText;
            }
        }
    }
}









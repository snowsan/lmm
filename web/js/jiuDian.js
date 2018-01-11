window.onload = function getNowFormatDate() {

//得到当前时间,打开后直接显示今天的日期
    var date = new Date();
    var seperator1 = "-";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    var strDate1 = date.getDate() +1;

    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    if (strDate1 >= 0 && strDate1 <= 9) {
        strDate1 = "0" + strDate1;
    }
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate;
    document.getElementById("startDate").value = currentdate;
    var currentdate1 = date.getFullYear() + seperator1 + month + seperator1 + strDate1;
    document.getElementById("endDate").value = currentdate1;


    //主页背景滚播
    function moveImg(list, index) {
        for (var i = 0; i < list.length; i++) {
            if (list[i].className == 'opa-on') {//清除li的透明度样式
                list[i].className = '';
            }
        }
        list[index].className = 'opa-on';
    }

    function moveIndex(list, num) {//移动小圆圈
        for (var i = 0; i < list.length; i++) {
            if (list[i].className == 'on') {//清除li的背景样式
                list[i].className = '';
            }
        }
        list[num].className = 'on';
    }

    var imgList = document.getElementById('img').getElementsByTagName('li');
    var list = document.getElementById('index').getElementsByTagName('li');
    var index = 0;
    var timer;

    for (var i = 0; i < list.length; i++) {//鼠标覆盖上哪个小圆圈，图片就移动到哪个小圆圈，并停止
        list[i].index = i;
        list[i].onmouseover = function () {
            var clickIndex = parseInt(this.index);
            index = clickIndex;

            moveImg(imgList, index);
            moveIndex(list, index);
            clearInterval(timer);
        }
        list[i].onmouseout = function () {//移开后继续轮播
            play();
        }
    }
    function nextMove() {
        index += 1;
        if (index >= 5) {
            index = 0
        }
        moveImg(imgList, index);
        moveIndex(list, index);
    }

    function play() {
        timer = setInterval(nextMove, 1000);
    }

    play();
    //主页背景滚播结束


}
function func(obj) {
    var title = obj.title;
    location.href = "http://localhost:8080/ServletJiuDian?name=" + title;
}


//热门度假区改变目录背景图片
function ChangBaiShanver(obj) {
    var a = obj.title;
    var arr = document.getElementsByClassName("ChangBaiShan");
    //此处循环七次，*********************
    for (var i = 0; i < arr.length; i++) {
        if (arr[i].id == a) {
            document.getElementById(a).style.display = "block";
            document.getElementById("DuJiaQu4").style.backgroundImage = 'url("../images/RenMenDuJiaQu/' + a + '.jpg")';

        } else {
            //应该取arr[i].id，让所有的都隐藏，不能取a，a只是一个
            document.getElementById(arr[i].id).style.display = "none";
        }
    }
}

//主题推荐
function ZhuTiTuiJina(obj) {
    var a = obj.id;
    var b = a + 1;     //XiaoTuPian的id
    var c = a + 2;     //XiaoTuPian1的id
    var d = a + 3;     //显示内容的Id
    var arr = document.getElementsByClassName("XiaoTuPian");
    var arr1 = document.getElementsByClassName("XiaoTuPian1");
    var arr2 = document.getElementsByClassName("TuiJian");
    var p = document.getElementsByClassName("p");

    for (var i = 0; i < arr.length; i++) {
        if (arr[i].id == b) {
            arr1[i].style.display = "block";
            arr[i].style.display = "none";
            document.getElementById(d).style.display = "block";
            p[i].style.color = "#FF6600";
        }
        else {
            arr1[i].style.display = "none";
            arr[i].style.display = "block";
            var e = arr[i].id.substring(0, arr[i].id.length - 1) + 3;
            document.getElementById(e).style.display = "none";
            p[i].style.color = "#000";
        }
    }
}






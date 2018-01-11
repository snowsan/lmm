<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-8
  Time: 下午3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/chenggong.css">
    <script src="../js/chenggong.js"></script>
</head>
<body>
<header>
    <div class="header-inner">
        <div class="inner1"><a href="#">请登录</a></div>
        <div>&nbsp;|&nbsp;</div>
        <div><a href="#">免费注册</a></div>
        <div class="inner2" onclick="dingdan()">我的订单 <i class="fa fa-sort-desc" aria-hidden="true"></i></div>
        <div class="inner3"><a href="#">积分商城</a></div>
        <div><a href="#">会员俱乐部</a></div>
        <div class="inner4"><a href="#">帮助</a></div>
        <div class="inner5">|</div>
        <div class="img1"><img src="../img/weixin.jpg" alt=""></div>
        <div class="img1"><img src="../img/dpiao.jpg" alt=""></div>
        <div class="img1"><img src="../img/weibo.jpg" alt=""></div>
        <div class="img2"><img src="../img/shouji.jpg" alt=""></div>
        <div class="inner6"><a href="#">手机版</a></div>
        <div class="inner7">|</div>
        <div class="img1 imgphone">
            <img src="../img/phone.jpg" alt=""><span class="phone">国内：<span class="phonenum">4006-040-603</span></span>
            <i class="fa fa-sort-desc" aria-hidden="true"></i>
        </div>
    </div>
</header>
<div class="top">
    <span class="logo"><img src="../img/logo.jpg" alt=""></span>
    <span class="logo1"><img src="../img/sign.jpg" alt=""></span>
</div>
<div class="select">
    <div class="select-inner">
        <ul>
            <li class="li1"><a href="#">首页</a></li>
            <li class="li2"><a href="#">出境游 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li3"><a href="#">国内游 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li4"><a href="#">周边游 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li5"><a href="/page/jingdian.jsp">景点门票 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li6"><a href="/page/jiuDian.jsp">酒店 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li7"><a href="#">当地游</a></li>
            <li class="li8"><a href="#">自驾游 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li9"><a href="#">亲子游</a></li>
            <li class="li10"><a href="#">邮轮 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li11"><a href="#">机票 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li12"><a href="#">火车票</a></li>
            <li class="li13"><a href="#">特卖会</a></li>
            <li class="li14"><a href="#">定制游</a></li>
            <li class="li15"><a href="#">金融 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li16"><a href="#">旅游攻略 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
        </ul>
    </div>
</div>
<%--点击购票，会弹出的页面--%>
<div class="doupiao">
    <div class="gp">购票成功！</div>
</div>
</body>
</html>

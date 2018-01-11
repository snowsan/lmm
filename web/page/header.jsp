<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/header.css">
</head>
<body>
<div class="header">

    <c:choose>
        <c:when test="${qqqq==null}">
            <a href="../page/DengLu.jsp" id="username">请登录</a>
        </c:when>
        <c:otherwise>
            <a href="/page/User.jsp">${qqqq}</a>
            <form action="/ServletXinXi">
                <input hidden id="name0" name="name0" type="text" value=${qqq}>
                <input type="submit" value="我的信息"> |
            </form>

        </c:otherwise>
    </c:choose>

    <a href="../page/register.jsp" class="xiaoshou">免费注册</a>


    <div class="DingDan">

            <a href="../page/order.jsp">订单</a>
            <span>客服电话： 1010-6060</span>

    </div>
</div>
<img class="img" src="../images/qqq/header1.jpg" alt="">
<div class="header1">
    <a href=""></a>
    <a href=""></a> <a href=""></a>

    <a class="souye" href="../page/jingdian.jsp">景点门票</a>
    <a class="souye" href="../page/jiuDian.jsp">酒店</a>
    <a class="souye" href="../page/jiuDian.jsp">游轮</a>
    <a class="souye" href="../page/trainticket.jsp">火车票</a>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-6
  Time: 下午5:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>

    <script src="../js/JiuDianYuDing.js"></script>
    <link rel="stylesheet" href="../css/JiuDianYuDing.css">


</head>
<body>
<jsp:include page="header.jsp"/>

<div>驴妈妈首页 > 酒店 > 酒店预订</div>

<c:forEach var="li" items="${list}">
    <div id="YuDing" class="YuDing">
        <div>
            <div class="name">${li.name}【${li.type}型】</div>
            <div>休闲度假</div>
            <div>${li.address}</div>
        </div>
        <div>
            <div>￥ <span class="name">${li.price} </span>起</div>
            <br>
            <span class="YuDing1" onclick="YuDing1(this)" id="${li.id}">立即预定</span>
        </div>
    </div>
</c:forEach>
<jsp:include page="footer.jsp"/>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-8
  Time: 下午5:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/dingdan.css">
</head>
<body>
<%--<c:forEach var = "ques" items="${list}">--%>
<div class="dd"><a href="../page/trainticket.jsp">返回主页面</a></div>
<div class="f1">
    <table border="1" width="50%" align="center" cellspacing="0" cellpadding="5px">
        <tr>
            <th class="div1">订单信息</th>
            <th class="div2">订单编号</th>
            <th class="div3">订单状态</th>
        </tr>
        <tr align="center">
            <td><span>${list[0].name}</span>&nbsp;&nbsp;
                <span>${list[0].trainnum}</span>&nbsp;&nbsp;
                <span>${list[0].startaddress}</span>&nbsp;&nbsp;到
                <span>${list[0].endaddress}</span>&nbsp;&nbsp;
                <span>${list[0].indate}</span>&nbsp;&nbsp;
                <span>${list[0].starttime}</span>发车&nbsp;&nbsp;
                <span>${list[0].seattype}</span>&nbsp;&nbsp;
                <span>${list[0].price}</span>&nbsp;&nbsp;元
            </td>
            <td>${list[0].dingdanid}</td>
            <td>已订购</td>
        </tr>
    </table>
</div>
</body>
</html>

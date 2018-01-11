<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>驴妈妈&lt;酒店订单</title>
    <script src="../js/JiuDianDingDan.js"></script>
    <link rel="stylesheet" href="../css/JiuDian/JiuDianDingDan.css">
</head>
<body>

<jsp:include page="header.jsp"/>

<div style="margin-left: 200px">

    <input type="text" hidden name="name11" id="name11" value=${qqqqq}>
    <h2>我的订单</h2>
    <input type="button" id="but" value="查询">
    <table cellspacing="15" border="2">
        <tr>
            <td width="170" style="font-size: 23px; font-weight: 900">产品信息</td>
            <td width="170" style="font-size: 23px; font-weight: 900">订单金额</td>
            <td width="170" style="font-size: 23px; font-weight: 900">出行时间</td>
            <td width="170" style="font-size: 23px; font-weight: 900">订单状态</td>
            <td width="170" style="font-size: 23px; font-weight: 900">操作</td>
        </tr>
    </table>
    <table id="qqqq" cellspacing="15" border="2">

    </table>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>

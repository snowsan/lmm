<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-9
  Time: 上午8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<c:choose>
    <c:when test="${1>2}">
        <h1>成立</h1>
    </c:when>
    <c:otherwise>
        <h1>不成立</h1>
    </c:otherwise>
</c:choose>


</body>
</html>

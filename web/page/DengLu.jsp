<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-8
  Time: 上午8:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>驴妈妈&gt;登录</title>
    <link rel="stylesheet" href="../css/DengLu.css">
    <script src="../js/DengLu.js"></script>
</head>

<body>

<img src="../images/denglu11.jpg" alt=""></li>
<img class="DengLu" src="../images/denglu.jpg" alt="">

<%--用户登录框--%>
<div class="JiuDianSouSuo">
    <div class="JiuDianSouSuo1">

        <div class="JiuDianSouSuo2">
            <span class="line"></span>
            <div>用户登录</div>
            <span class="line"></span>
        </div>

        <%--form表单 --%>
        <form action="/ServletDengLu" method="post">
            <input type="text" class="qq1 qq" id="phone1" name="phone"
                   maxlength="11" required="required"
            <%--onfocus="phone()" onblur="phone11()"--%>
                   placeholder="  &nbsp;&nbsp;&nbsp;&nbsp;请输入手机号"><br><br>
            <input type="password" name="password" class="qq2 qq" id="password1"
                   maxlength="20" required="required"
            <%--onfocus="password()" onblur="password11()" --%>
                   placeholder="  &nbsp;&nbsp;&nbsp;&nbsp;请输入密码"><br><br>
            <input type="checkbox">记住密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="xiaoshou" onclick="WangJiMiMa()">忘记密码？</span><br><br>
            <input class="qq aa" type="submit" value="登 &nbsp; 录">
        </form>

        <div class="qqq">还不是驴妈妈会员？ <a class="qqqq" href="http://localhost:8080/page/register.jsp">免费注册</a></div>
        <span>合作网站——————————————</span>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<img src="../images/hezuo.jpg" alt="">

    </div>
</div>
<%--用户登录框结束--%>

<%--用户名或密码错误时显示--%>
<div class="YanZheng">
    <div class="password" id="password">${qqq}</div>
    <br>
    <div class="zhuce" id="zhuce">&nbsp;&nbsp;&nbsp;忘记密码请重新注册！</div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>

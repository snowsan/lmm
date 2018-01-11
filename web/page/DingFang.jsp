<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>驴妈妈&gt;订房</title>

    <script src="../js/DingFang.js"></script>
    <link rel="stylesheet" href="../css/JiuDian/DingFang.css">

</head>
<body>

<jsp:include page="header.jsp"/>

<!-- 预订信息 开始 -->
<div class="YuDing">
    <div class="h21">
        <img src="../images/qqq/yuding.jpg" alt="">
        <h1>预订信息</h1>
    </div>

    <form id="form" method="post" enctype="multipart/form-data">

        <%--得到酒店名称--%>
        <input class="JiuDianNanme" type="text" name="jiudian" readonly value=${li[0].jiudian}>

        <div class="YuDing2">
            <table cellspacing="10">
                <tr>
                    <td class="YuDing1" width="130">房间类型：</td>
                    <td width="130"> ${li[0].name}</td>
                </tr>
                <tr>
                    <td class="YuDing1" width="130">入住日期：</td>
                    <td width="130"><input type="date" name="startdate"></td>
                </tr>
                <tr>
                    <td class="YuDing1" width="130">离开日期：</td>
                    <td width="130"><input type="date" name="enddate"></td>
                </tr>
                <tr>
                    <td class="YuDing1" width="130">房间数量：</td>
                    <td width="130">
                        <select class="number1" name="number1" id="">
                            <c:forEach var="a" begin="1" end="10" step="1">
                                <option value=${a}>${a}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="YuDing1" width="130">房费单价：</td>
                    <td width="130">￥ <input name="price" readonly type="text" class="XingHao" value=${li[0].price}>
                    </td>
                </tr>
            </table>
        </div>

        <%--入住信息--%>
        <div>
            <div class="h21">
                <img src="../images/qqq/yuding.jpg" alt="">
                <h1>入住信息</h1>
            </div>
            <table class="YuDing2" cellspacing="10">
                <tr>
                    <td class="YuDing1" width="150"><span class="XingHao">*</span>入住姓名：</td>
                    <td class="YuDing1" width="150"><input name="name" type="text"></td>
                </tr>
                <tr>
                    <td class="YuDing1" width="150"><span class="XingHao">*</span>手机号码：</td>
                    <td class="YuDing1" width="150"><input name="phone" type="text"></td>
                </tr>
                <tr>
                    <td class="YuDing1" width="150"><span class="XingHao">*</span>短信验证码：</td>
                    <td class="YuDing1" width="150"><input type="text"></td>
                </tr>
                <tr>
                    <td class="YuDing1" width="150"><span class="XingHao">*</span>其他要求：</td>
                    <td class="YuDing1" width="150"><textarea name="" id="" cols="70" rows="7"></textarea></td>
                </tr>
            </table>
        </div>
        <h1 class="h21">扣款说明</h1>
        <div class="YuDing1 YuDing2">
            · 驴妈妈会根据您的付款方式进行订单全款扣除和预授权限定，如订单不确认将解除预授权或全额退款至您的支付账户. <br>
            · 订单一经预订成功，不可变更/取消，如未入住将扣除全额房费 ,订单是否生效以驴妈妈最终通知为准。
        </div>
    </form>
</div>
<input class="input" type="button" value="提交" onclick="func()">
<div id="DingFangChengGong"></div>
</div>




<jsp:include page="footer.jsp"/>

</body>
</html>

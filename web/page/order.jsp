<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-4
  Time: 下午4:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单</title>
    <script src="../js/order.js"></script>
    <link rel="stylesheet" href="/css/order.css">
</head>
<body>
<jsp:include page="header.jsp"/>
<!-- 主体部分开始-->
<div class="newmember_main">
    <!-- 会员中心左侧菜单栏 -->
    <div class="newmember_leftside">
        <dl>
            <dd><i class="order_icon"></i>订单中心<i class="downarr"></i></dd>
            <dd onclick="func()">门票订单</dd>
                <input hidden id="name8" type="text" value=${qqq}>
             <dd onclick="jiudianFunc()">酒店订单</dd>
            <dd><a href="#" id="lvnav_if_order">出行订单</a></dd>
            <dd><a href="#" id="lvnav_intent">订单</a></dd>
        </dl>
    </div>


    <!--  右边部分开始 -->
    <div class="newmember_rightside">
        <div class="mod_box">
            <div class="mod_title">
                <h3 class="h3_title">我的订单<span class="mod_tips"><i></i>退款申请只支持未游玩、可退改的订单。</span></h3>
            </div>
            <!-- 新的订单列表开始----------------------------------------------------------------------------------------------------- -->
            <div class="mod_tcontent js_con" style="display:block;">
                <table class="order_table">
                    <thead>
                    <tr class="col-name">
                        <th width="400">产品信息</th>
                        <th width="80">订单金额</th>
                        <th width="72">出行时间</th>
                        <th width="70">订单状态</th>
                        <th width="110">操作</th>
                    </tr>
                    </thead>
                    <tbody id="t_body">
                    <!-- 近期没有下过订单 -->
                    <tr class="sep-row">
                        <td colspan="7">
                            <div class="no_order">
                                <%-- <a href="3" class="noimg"><img
                                         src="http://s1.lvjs.com.cn/img/v6/myspace/noorder.png"/></a>--%>
                                <div class="content">
                                    <p>最近您没有下过订单哦~</p>
                                    <a href="#" class="gohome">去首页看看</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- 新的订单列表结束----------------------------------------------------------------------------------------------------- -->
        </div>
    </div>
    <!--  右边部分结束 -->
</div>
<!-- 主体部分结束-->
<jsp:include page="footer.jsp"/>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-2
  Time: 下午6:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>订单支付</title>
    <script src="../js/zhifu.js"></script>
    <link rel="stylesheet" href="../css/zhifu.css">
</head>
<body>
<jsp:include page="header.jsp"/>



<div class="mainBox">
    <ol class="ui-step ui-step-3">
        <li class="ui-step1 ui-step-start ui-step-active">
            <div class="ui-step-arrow">
                <i class="arrow_r1"></i> <i class="arrow_r2"></i>
            </div>
            <span class="ui-step-text">填写订单</span>
        </li>
        <li class="ui-step2 ">
            <div class="ui-step-arrow">
                <i class="arrow_r1"></i> <i class="arrow_r2"></i>
            </div>
            <span class="ui-step-text">在线支付</span>
        </li>
        <li class="ui-step3 ui-step-end ">
            <div class="ui-step-arrow">
                <i class="arrow_r1"></i> <i class="arrow_r2"></i>
            </div>
            <span class="ui-step-text">预订成功</span>
        </li>
    </ol>
    <!-- 操作步骤 -->
    <!-- 未登录提示 -->
    <%-- <div class="tiptext tip-info order_login">
         <span class="tip-icon tip-icon-info"></span>您当前未登录，如您是驴妈妈会员，<a class="order_login_btn" href="javascript:;">登录</a>后可使用账户中优惠券，奖金以及存款。
     </div>--%>
    <div class="orderTicket">
        <!--订单明细-->
        <div class="orderInfo orderTicketInfo">
            <div class="orderTicketInfo-list">
                <h3>费用明细</h3>
                <ul class="nobd">
                    <li class="primary">
                        <div>门票价格</div>
                        <div class="nobd-text">¥</div>
                        <div id="nobd-text3">${sessionScope.jingdianinfo.get(0).jd_price}</div>
                    </li>
                    <li class="primary">
                        <div>门票数量</div>
                        <div class="primary-text">1</div>
                        <div>*</div>
                        <div>¥</div>
                        <div>${sessionScope.jingdianinfo.get(0).jd_price}</div>
                    </li>
                </ul>
                <ul class="last">
                </ul>
            </div>
            <div class="ticketPriceTotal">
                <div  class="ticketPriceTotal-text1">应付金额</div>
                <div class="ticketPriceTotal-text2">¥</div>
                <div class="priceCount" id="priceCount">
                    ${sessionScope.jingdianinfo.get(0).jd_price}
                </div>
            </div>
        </div>
        <div class="orderMainLeft">
            <form method="post" name="orderForm" id="order_submit" enctype="multipart/form-data">
                <!-- 预订信息 开始 -->

                <div class="orderTit">
                    <div><img src="/images/111.png"></div>
                    <div class="orderTit-text">
                        <span class="orderTit-title">${sessionScope.jingdianinfo.get(0).jd_name}</span>
                        <span class="orderTit-subTit">在线支付</span>
                    </div>
                </div>

                <!--商品信息-->
                <div class="ticketLi">
                    <div class="ticketTit">
                        <a href="" class="ticketTit-link">${sessionScope.jingdianinfo.get(0).jd_name}-门票</a>
                        <span class="tagsback">随时退</span>
                    </div>

                    <dl class="orderDl">
                        <span>游玩日期：</span>
                        <input id="showVisitTimeInput" class="input" name="date" type="date" placeholder="请选择游玩日期">
                    </dl>
                    <dl class="orderDl">
                        <span>数&emsp;&emsp;量：</span>
                        <input type="number" class="ordeRoomNum js_input" name="count" id="menpiao_count"
                               value="1" min="1" max="99" onchange="numchange()">
                    </dl>
                </div>
                <!-- 预订信息 结束 -->

                <!--关联销售开始-->
                <!--关联销售结束-->
                <div class="orderBox order_box">
                    <div class="orderTit">
                        <div><img src="/images/222.png" alt=""></div>
                        <div class="orderTit-text">
                            <span class="orderTit-title">用户信息 </span>
                            <span class="orderTit-subTit">您需填写1个游玩人信息</span>
                        </div>
                    </div>
                    <div id="userinfoDiv" class="userinfoDiv">
                        <div class="userinfoDiv-text">
                            <span class="red">*</span>中文姓名：<input type="text" name="qupiaoname" placeholder="请输入姓名">
                        </div>
                        <div class="userinfoDiv-text">
                            <span class="red">*</span>手机号码：<input type="text" name="phonenumber" placeholder="请输入手机号码">
                        </div>
                        <div class="userinfoDiv-text">
                            <span class="red">*</span>证件类型：<input type="text" name="shenfenzheng"
                                                                  placeholder="请输入身份证号码">
                        </div>
                    </div>
                </div><!-- 配送方式 结束 -->
            </form>

            <div class="orderFoot">

                <div class="payBox">
                    <span class="btn-submit" id="submitCreateOrder">立即付款</span>
                </div>
                <div id="errmess"></div>
                <p class="payBox-contract">
                    <input type="checkbox" name="" id="" checked>
                    已阅读并同意
                    <a href="" class="orderLinkBtn js_xieyiBtn">驴妈妈旅游网预订条款</a>
                </p>


            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>

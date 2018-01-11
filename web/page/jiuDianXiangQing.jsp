<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 17-12-29
  Time: 下午3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>驴妈妈&gt;酒店&gt;</title>

    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="../css/JiuDian/jiuDianXiangQing.css">
    <script src="../js/jiuDianXiangQing.js"></script>

</head>
<body>
<jsp:include page="header.jsp"/>


<div class="ZhuYe">
    <div class="MuLu">
        驴妈妈首页&gt;酒店预定&gt;${list.getName()}
    </div>
    <div class="JiuDianJianJie">
        <span class="title">${list.getName()}</span>
        <span class="MuLu">[${list.getType()}型]</span>
        <span class="price">
                <span class="yuan">￥</span>${list.getPrice()}<span class="Qi">起</span>
                <input class="YuDing" type="submit" id="but" value="立即预定">
            </span>
        <div class="ManJian">
            <span>&nbsp;&nbsp;&nbsp;双旦大促</span>
            <span>&nbsp;&nbsp;&nbsp;贵就赔</span>
            <span>&nbsp;&nbsp;&nbsp;即时确认</span>
            <span>&nbsp;&nbsp;&nbsp;入住有礼</span>
            <span>&nbsp;&nbsp;&nbsp;每满1800元减30</span>
            <span>&nbsp;&nbsp;&nbsp;满1099元减50</span>
            <span>&nbsp;&nbsp;&nbsp;满799元减30</span>
            <span>&nbsp;&nbsp;&nbsp;满499元减20</span>
        </div>
        <div class="ShouCang">&nbsp;&nbsp;&nbsp;收藏</div>
        <div class="MuLu">${list.getAddress()}</div>
        <table class="XiangQing">
            <tr>
                <td class="TuPian" rowspan="3"><img class="TuPian" src="../images/RenMenDuJiaQu/xilaideng.jpg" alt="">
                </td>
                <td valign="top" class="XiangQing1">
                    <span class="HaoPingLv">${list.getRight()}%</span><span class="title1">好评率 已有<span
                        class="HaoPingLv1">${list.getCommentnumber()}</span>条点评</span>
                    <div class="PingLun">来自.lv13443的最新评论：</div>
                    <br>
                    【点评有奖14季】${list.getCommentt()}
                </td>
            </tr>
            <tr>
                <td valign="top" class="XiangQing1">
                    <hr>
                    <div class="PingLun">产品经理推荐：</div>
                    <br>
                    <div>${list.getManagersay()}</div>
                </td>
            </tr>
            <tr>
                <td><img src="../images/qqq/gongneng.jpg" alt=""></td>
            </tr>
        </table>
    </div>
    <input hidden id="name" name="name" type="text" value=${list.getId()}>

    <%--这里要循环--%>
    <div id="quizContainer"></div>
    <!--这里循环结束-->

    <div>
        <h1>
            <span class="line"></span>
            <span>酒店详情</span>
            <span class="line"></span>
        </h1>
        <div>
            【价格包含项目】
            【吃】次日早餐2份（三人间含3份）
            【娱】度假区礼包
            1.包含2位成人（三人间包含3成人）及1位12岁（不含）以下儿童使用，入住期间任选【1】天，每天滑雪1次进出（以实际登记人数为准）
            滑雪票含雪具、头盔、缆车及魔毯，不包含雪服、风镜、手套，可在雪具大厅租赁；雪场营业时间：8：30-16：30（此时间仅供参考，以度假区实际为准）
            2.赠送万达度假区内水乐园门票，包含2位成人（三人间包含3成人）及1位12岁（不含）以下儿童使用，入住期间内任选【1】天游玩，每天仅限1次进出（以实际登记人数为准）；
            3.赠送汉拿山温泉门票，包含2位成人（三人间包含3成人）及1位1.2米（不含）以下儿童使用，入住期间任选【1】天游玩，每天仅限使用1次，温泉停止使用时间以酒店公示为准；
            4.赠送万达度假区内佛库伦雪圈公园套票，包含2位成人（三人间包含3成人）及1位12岁（不含）以下儿童使用，入住期间任选【1】天游玩娱雪项目（以实际登记人数为准）仅限2017年12月20日至2018年2月28日期间入住客人享用
            5.入住期间每间房赠送2张（三人间含3张）大剧院门票
            ※特别提醒：
            1.接送机只接送机场到酒店的客人；
        </div>
        <h1>
            <span class="line"></span>
            <span>设施服务</span>
            <span class="line"></span>
        </h1>
        <ul>
            <li>
                <span>基本信息：</span>
                开业时间：2013-11 电话：0439 6987777 传真：0439-6987778 邮编：134504 最近装修：2013-11
            </li>
            <li>
                <span>酒店政策：</span>
                最早到店时间：14:00 最晚离店时间：12:00 外宾接待： 接待 宠物携带： 不可携带
            </li>
            <li>
                <span>酒店服务：</span>
                <img src="" alt="">
                <img src="" alt="">
                <span>免费宽带</span>
                <span>免费停车场</span>
            </li>
            <li>
                <span>房间服务：</span>
                拖鞋,独立写字台,24小时热水,电热水壶,免费洗漱用品,免费瓶装水,迷你酒吧,小冰箱,多种规格电源插座,独立淋浴间,吹风机,保险箱
            </li>
            <li>
                <span>休闲娱乐：</span>
                棋牌室
            </li>
            <li>
                <span>特色信息：</span>
                酒店经济实惠品质较高，舒心入住，房间包含的度假区娱乐度假项目，一站式解决度假问题，方便实惠
            </li>
        </ul>
    </div>
</div>
    <jsp:include page="footer.jsp"/>
</body>
</html>

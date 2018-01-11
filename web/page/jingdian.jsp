<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 17-12-28
  Time: 下午1:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>景点查询</title>
    <link rel="stylesheet" href="../css/jingdian.css">
    <link rel="stylesheet" href="../css/footer.css">
    <script src="../js/jingdian.js"></script>

</head>
<body>

<jsp:include page="header.jsp"/>


<!-- 景点推荐 开始 -->
<div class="main_box">
    <h3 class="main_tit">景点推荐<%--<a id="smartShelfUrl" href="javascript:void(0);" >查看更多<span>&gt;</span></a>--%></h3>
    <div class="main_content_box main_recommend clearfix">
        <ul class="recommend_tab_t">
            <li class="city_js" onclick="city(this)">沈阳</li>
            <li class="city_js" onclick="city(this)">大连</li>
            <li class="city_js" onclick="city(this)">抚顺</li>
        </ul>

        <!-- 城市列表 -->
        <div class="recommend_list_content" style="display: block;">
            <div class="main_content_l ticket_icon">
                <ul class="recommend_tab_l" id="jd_type">
                    <li class="subject_js" onclick="jdtype(this)">湖光山色<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">海滨岛屿<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">民俗风情<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">滑雪<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">温泉<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">主题乐园<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">田园度假<i class="ticket_icon"></i></li>
                    <li class="subject_js" onclick="jdtype(this)">登山徒步<i class="ticket_icon"></i></li>
                </ul>
            </div>
            <ul class="promotion_list " id="promotion_list" style="display: block;">

            </ul>
        </div>
    </div>
</div>
<!-- 景点推荐  结束 -->

<jsp:include page="footer.jsp"/>

</body>
</html>

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
    <title>景点信息</title>
    <link rel="stylesheet" href="../css/jd_info.css">
</head>
<body>
<jsp:include page="header.jsp"/>
<!--组装面包屑和天气-->
<div class="crumbs">
    <!--面包屑导航、天气-->
    <div class="crumbs-link">
        <a>景点门票</a> &gt;
        <a class="current">${sessionScope.jingdianinfo.get(0).jd_name}</a>
    </div>
</div>

<div class="overview">
    <div class="dtitle">
        <div class="titbox">
            <h2 class="tit" title="沈阳怪坡园风景区">${sessionScope.jingdianinfo.get(0).jd_name}</h2>

        </div>
        <span class="mp_star"><i>${sessionScope.jingdianinfo.get(0).jd_rank}</i>级景区</span>
        <div class="titboxtwo">

            <span class="xorder">
				    <span class="price">&yen;<i>${sessionScope.jingdianinfo.get(0).jd_price}</i>起</span>
                    <a href="zhifu.jsp" class="btn"><span class="btn-text">立即预订</span></a>
			</span>
        </div>
    </div>
    <div class="dcontent">
        <!--组装产品图片-->
        <div class="ticket_img_scroll">
            <img src="/images/${sessionScope.jingdianinfo.get(0).jd_photoname}.jpg" width="462" height="308">
        </div>

        <div class="dinfo">
            <div class="sec-info">
                <div class="sec-inner">
                    <p class="dl-hor">
                        <span class="dl-title">景点地址：</span>
                        <span class="linetext">${sessionScope.jingdianinfo.get(0).jd_address}</span>
                    </p>
                    <p class="dl-hor index3">
                        <span class="dl-title">营业时间：</span>
                        <span>${sessionScope.jingdianinfo.get(0).jd_date}</span>
                    </p>

                    <p class="dl-hor">
                        <span class="dl-title">服务保障：</span>
                        <span class="dl-text">入园保障</span>
                        <span class="dl-text">如实描述</span>
                        <span class="dl-text">贵就赔</span>
                    </p>
                </div>
            </div>
            <!--有精华点评显示下面的div-->
            <div class="comment-info">
                <div class="pj_t">
                    <div class="pj_tab">
                    </div>
                    <div class="c_09c"><i class="icon"></i>
                        <span class="count">90.5%</span>
                        <span class="good_recon">好评</span>
                        <i class="verticle_line"></i>
                        <a href="#yhdp" hidefocus="false"> 查看 41人点评</a></div>
                </div>
                <div class="quote">
                    <i class="qstart">"</i>
                    ${sessionScope.jingdianinfo.get(0).jd_introduction}
                    <i class="qend">"</i>
                    <ul class="pj_list">
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>

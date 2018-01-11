<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-2
  Time: 上午9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="../css/dingpiao.css">
    <script src="../js/dingpiao.js"></script>
</head>
<body>
<header>
    <div class="header-inner">
        <div class="inner1"><a href="#">请登录</a></div>
        <div>&nbsp;|&nbsp;</div>
        <div><a href="#">免费注册</a></div>
        <div class="inner2">我的驴妈妈 <i class="fa fa-sort-desc" aria-hidden="true"></i></div>
        <div class="inner3"><a href="#">积分商城</a></div>
        <div><a href="#">会员俱乐部</a></div>
        <div class="inner4"><a href="#">帮助</a></div>
        <div class="inner5">|</div>
        <div class="img1"><img src="../img/weixin.jpg" alt=""></div>
        <div class="img1"><img src="../img/dpiao.jpg" alt=""></div>
        <div class="img1"><img src="../img/weibo.jpg" alt=""></div>
        <div class="img2"><img src="../img/shouji.jpg" alt=""></div>
        <div class="inner6"><a href="#">手机版</a></div>
        <div class="inner7">|</div>
        <div class="img1 imgphone">
            <img src="../img/phone.jpg" alt=""><span class="phone">国内：<span class="phonenum">4006-040-603</span></span>
            <i class="fa fa-sort-desc" aria-hidden="true"></i>
        </div>
    </div>
</header>
<div class="top">
    <span class="logo"><img src="../img/logo.jpg" alt=""></span>
    <span class="logo1"><img src="../img/sign.jpg" alt=""></span>
</div>
<div class="select">
    <div class="select-inner">
        <ul>
            <li class="li1"><a href="#">首页</a></li>
            <li class="li2"><a href="#">出境游 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li3"><a href="#">国内游 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li4"><a href="#">周边游 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li5"><a href="/page/jingdian.jsp">景点门票 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li6"><a href="/page/jiuDian.jsp">酒店 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li7"><a href="#">当地游</a></li>
            <li class="li8"><a href="#">自驾游 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li9"><a href="#">亲子游</a></li>
            <li class="li10"><a href="#">邮轮 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li11"><a href="#">机票 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li12"><a href="#">火车票</a></li>
            <li class="li13"><a href="#">特卖会</a></li>
            <li class="li14"><a href="#">定制游</a></li>
            <li class="li15"><a href="#">金融 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
            <li class="li16"><a href="#">旅游攻略 <i class="fa fa-angle-down" aria-hidden="true"></i></a></li>
        </ul>
    </div>
</div>
<div class="tucao"><a href="#">我要吐槽</a></div>
<%--第四部分--%>
<div class="sreach-inner">
    <div class="title">
      <span>
        <a href="#">首页</a>
      </span>
       <span class="title1">
        >
      </span>
        <span>
        <a href="#">火车票</a>
      </span>
        <span class="title1">
        >
      </span>
        <span class="title2">${list[0].startaddress}到${list[0].endaddress}火车票</span>
    </div>
    <%--第五部分--%>
    <div class="info">
        <ul>
            <li>
                <div class="startadress"><span>出发地：</span><input type="text" value="${list[0].startaddress}" class="input" id="startadress"></div>
            </li>
            <li>
                <img src="../img/unhuan.jpg" alt="" onmouseover="hfunc()" id="huan" onmouseout="uhfunc()" onclick="dfunc()">
            </li>
            <li>
                <div class="endadress"><span>目的地：</span><input type="text" value="${list[0].endaddress}" class="input" id="endadress"></div>
            </li>
            <li>
                <div class="date"><span>出发日期：</span><input type="date" value="${list[0].date}" class="input" id="input"></div>
            </li>
            <li>
                <div class="search">搜 索</div>
            </li>

        </ul>

    </div>
    <%--第六部分--%>
    <div class="xianlu">
        <span class="address">${list[0].startaddress}</span>
        <img src="../img/jiantou.jpg" alt="">
        <span class="address">${list[0].endaddress}</span>&nbsp;&nbsp;
        <span class="date1">${list[0].date}<span> ( 周四 )</span></span>
    </div>
    <div class="riqi">
        <div class="riqi1">
            <ul>
                <li>01-02<br>周二</li>
                <li id="zhou">01-03<br>周三</li>
                <li>01-04<br>周四</li>
                <li>01-05<br>周五</li>
                <li>01-06<br>周六</li>
                <li>01-07<br>周日</li>
                <li>01-08<br>周一</li>
            </ul>
        </div>
        <div class="chetype">
            <ul>
                <li id="chetype1">车次类型：</li>
                <li><div class="beijing" id="buxian">不限</div></li>
                <li id="chetype2"><img src="../img/gaotiewd.jpg" alt="" onclick="gin(0)" class="gaotiein"></li>
                <li id="chetype3"><img src="../img/dongchewd.jpg" alt="" onclick="gin(1)" class="gaotiein"></li>
                <li id="chetype4"><img src="../img/putongchewd.jpg" alt="" onclick="gin(2)" class="gaotiein"></li>
            </ul>
        </div>
        <div class="chetype10">
            <ul>
                <li id="chetype5">出发时段：</li>
                <li><div class="beijing" id="buxian1">不限</div></li>
                <li id="chetype6"><img src="../img/time1.jpg" alt="" onclick="time(0)" class="time"></li>
                <li id="chetype7"><img src="../img/time2.jpg" alt="" onclick="time(1)" class="time"></li>
                <li id="chetype8"><img src="../img/time3.jpg" alt="" onclick="time(2)" class="time"></li>
                <li id="chetype9"><img src="../img/time4.jpg" alt="" onclick="time(3)" class="time"></li>
            </ul>
        </div>
        <div class="infocount">
            <ul>
                <li>共
                    <span class="infocount2">10</span>
                    条信息
                </li>
                <li id="infocount1"><a href="#">展开更多筛选项 <i class="fa fa-sort-desc" aria-hidden="true"></i></a></li>
            </ul>
        </div>
    </div>
    <div class="xuzhi">
        <div class="shaoma">
         <div>
            <img src="../img/saoma.jpg" alt="">
         </div>
          <div class="saoma1">
             <div>扫码下载驴妈妈</div>
             <div>客户端手机预订</div>
             <div>更方便</div>
          </div>
        </div>
        <div class="xuzhi-inner">
            <div class="xuzhi1"><b>购票须知</b></div>
            <div class="xuzhi2">
                <div>1、本产品内包含火车票，受全国各铁路</div>
                <div>局的不同规定和要求，无法100％预订成</div>
                <div>功。暂不支持购买学生票、军人票等特</div>
                <div>殊火车票。</div>
            </div>
            <div class="xuzhi3">
                <div>2、一张有效身份证件同一乘车日期同一</div>
                <div>车次只能购买一张车票。如果因行程冲</div>
                <div>突(指同一乘车人的乘车时间出现交</div>
                <div>叉)不能购票时，可在互联网或车站指</div>
                <div>定窗口举报后继续购票。</div>
            </div>
            <div class="xuzhi4">
                <img src="../img/tanhao.jpg" alt="">
                <div class="xuzhi5">
                    <div>部分高铁动车组列车可持二代居民</div>
                    <div>身份证直接检验进站</div>
                </div>
            </div>
        </div>
    </div>

    <%--车次情况K78--%>
    <div class="che">
        <div class="cheinfo">
            <ul>
                <li>车次/车型</li>
                <li id="cheinfo1"><a href="#">出发/到达时间<i class="fa fa-arrow-up" aria-hidden="true"></i></a></li>
                <li>发站/到站</li>
                <li id="cheinfo2"><a href="#">耗时<i class="fa fa-arrow-up" aria-hidden="true"></i></a></li>
                <li id="cheinfo3">坐席</li>
                <li id="cheinfo4">参考票价</li>
                <li id="cheinfo5">剩余票量</li>
            </ul>
        </div>
    </div>
     <c:forEach var = "ques" items="${list}">
         <div class="hi">
        <div class="cheinfos">

               <div class="cheinfos1">
               <div class="info1">${ques.trainnum}</div>
               <div class="info2">经停站点</div>
               </div>
               <div class="cheinfos2">
               <div class="info3">${ques.starttime}</div>
               <div class="info4">${ques.endtime}</div>
               <div class="info5" onmouseover="mouseover()" onmouseout="mouseout()">+1</div>
               </div>
               <div class="cheinfos3">
               <div class="info6">
                <img src="../img/guo.jpg" alt="">&nbsp;
                <span>${ques.startaddress}</span>
               </div>
               <div class="info7">
                <img src="../img/zhong.jpg" alt="">&nbsp;
                <span>${ques.endaddress}</span>
               </div>
               </div>
                <div>
            <div class="info8">${ques.time}</div>
              </div>
              <div class="cheinfos4">
            <div>${ques.seattype}</div>
            <div>${ques.seattype1}</div>
            <div>${ques.seattype2}</div>
            <div>${ques.seattype3}</div>
             </div>
             <div class="cheinfos5">
            <div class="info9">
                <span class="fhao">¥</span>
                <span>${ques.price}</span>
            </div>
            <div class="info10 info11">
                <span class="fhao">¥</span>
                <span>${ques.price1}</span>
            </div>
            <div class="info10 info11">
                <span class="fhao">¥</span>
                <span>${ques.price2}</span>
            </div>
            <div class="info10">
                <span class="fhao">¥</span>
                <span>${ques.price3}</span>
            </div>
            </div>
            <div class="cheinfos6">
            <div>余 <span>${ques.surplusticket}</span> 张</div>
            <div>余 <span>${ques.surplusticket1}</span> 张</div>
            <div>余 <span>${ques.surplusticket2}</span> 张</div>
            <div>余 <span>${ques.surplusticket3}</span> 张</div>
            </div>
            <div class="cheinfos7">
            <div class="yuding" onclick="func(this)" title="1" id=${ques.trainnum}>预订</div>
            <div class="qiang" onclick="func(this)" title="2" id=${ques.trainnum}>抢票</div>
            <div class="yuding" onclick="func(this)" title="3" id=${ques.trainnum}>预订</div>
            <div class="yuding" onclick="func(this)" title="4" id=${ques.trainnum}>预订</div>
            </div>
            </div>
        </div>
     </c:forEach>
    <%--车次情况G1226--%>
    <%--<div class="che1">--%>
        <%--<div class="cheinfoss">--%>
        <%--<div class="cheinfoss1">--%>
            <%--<div class="info1">G1226</div>--%>
            <%--<div class="info2">经停站点</div>--%>
        <%--</div>--%>
        <%--<div class="cheinfoss2">--%>
            <%--<div class="info3">08:08</div>--%>
            <%--<div class="info4">18:42</div>--%>
        <%--</div>--%>
        <%--<div class="cheinfoss3">--%>
            <%--<div class="info6">--%>
                <%--<img src="../img/guo.jpg" alt="">&nbsp;--%>
                <%--<span>沈阳</span>--%>
            <%--</div>--%>
            <%--<div class="info7">--%>
                <%--<img src="../img/zhong.jpg" alt="">&nbsp;--%>
                <%--<span>上海虹桥</span>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div>--%>
            <%--<div class="infog8">10时34分</div>--%>
        <%--</div>--%>
        <%--<div class="cheinfoss5">--%>
            <%--<div>二等座</div>--%>
            <%--<div>一等座</div>--%>
            <%--<div>商务座</div>--%>
        <%--</div>--%>
        <%--<div class="cheinfoss6">--%>
            <%--<div class="info10">--%>
                <%--<span class="fhao">¥</span>--%>
                <%--<span>792</span>--%>
            <%--</div>--%>
            <%--<div class="info10">--%>
                <%--<span class="fhao">¥</span>--%>
                <%--<span>1289.5</span>--%>
            <%--</div>--%>
            <%--<div class="info10">--%>
                <%--<span class="fhao">¥</span>--%>
                <%--<span>2488.5</span>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="cheinfoss7">--%>
            <%--<div>余 <span>99</span> 张</div>--%>
            <%--<div>余 <span>8</span> 张</div>--%>
            <%--<div>余 <span>10</span> 张</div>--%>
        <%--</div>--%>
        <%--<div class="cheinfoss8">--%>
            <%--<div class="yuding">预订</div>--%>
            <%--<div class="yuding">预订</div>--%>
            <%--<div class="yuding">预订</div>--%>
        <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

    <footer>
        <div class="footer-inner">
            <ul>
                <li><a href="#">关于我们</a></li> |
                <li><a href="#">联系我们</a></li> |
                <li><a href="#">网站地图</a></li> |
                <li><a href="#">酒店品牌</a></li> |
                <li><a href="#">酒店查询</a></li> |
                <li><a href="#">帮助中心</a></li> |
                <li><a href="#">友情链接</a></li> |
                <li><a href="#">诚聘英才</a></li> |
                <li><a href="#">旅游度假资质</a></li> |
                <li><a href="#">意见反馈</a></li> |
                <li><a href="#">广告业务</a></li>
            </ul>
        </div>
        <div class="infono">
            Copyright &copy; 2018 www.lvmama.com.上海文化传播股份有限公司版权所有&nbsp;&nbsp;
            <a href="#">沪ICP备13011172号-3</a>&nbsp;&nbsp;
            增值电信业务经营许可证编号：<a href="#">沪B2-20100030</a>
        </div>
        <div class="footer-inner2">
            <ul>
                <li><img src="../img/foot1.jpg" alt=""></li>
                <li><img src="../img/foot2.jpg" alt=""></li>
                <li><img src="../img/foot3.jpg" alt=""></li>
                <li><img src="../img/foot4.jpg" alt=""></li>
                <li><img src="../img/foot5.jpg" alt=""></li>
                <li><img src="../img/foot6.jpg" alt=""></li>
                <li><img src="../img/foot7.jpg" alt=""></li>
                <li><img src="../img/foot8.jpg" alt=""></li>
                <li><img src="../img/foot9.jpg" alt=""></li>
                <li><img src="../img/foot10.jpg" alt=""></li>
                <li><img src="../img/foot11.jpg" alt=""></li>
            </ul>
        </div>
    </footer>
    <div class="lianjie">
        <div>
            <ul>
                <li class="lj1">友情链接：</li>
                <li><a href="#">查看更多</a></li>
            </ul>
        </div>
        <div class="lianjie1">
            <ul class="lj1">
                <li>热门精选：</li>
                <li><a href="#">上海旅游</a></li>
                <li><a href="#">北京到上海旅游</a></li>
                <li><a href="#">沈阳到上海旅游</a></li>
                <li><a href="#">杭州到上海旅游</a></li>
                <li><a href="#">西安到上海旅游</a></li>
                <li><a href="#">郑州到上海旅游</a></li>
                <li><a href="#">济南到上海旅游</a></li>
                <li><a href="#">重庆到上海旅游</a></li>
                <li><a href="#">深圳到上海旅游</a></li>
                <li><a href="#">广州到上海旅游</a></li>
                <li><a href="#">哈尔滨到上海旅游</a></li>
                <li><a href="#">成都到上海旅游</a></li>
                <li><a href="#">厦门到</a></li>
                <br>
                <li id="lj2"><a href="#">上海旅游</a></li>
                <li><a href="#">天津到上海旅游</a></li>
                <li><a href="#">长春到上海旅游</a></li>
                <li><a href="#">宣春到上海旅游</a></li>
                <li><a href="#">合肥到上海旅游</a></li>
                <li><a href="#">唐山到上海旅游</a></li>
                <li><a href="#">温州到上海旅游</a></li>
                <li><a href="#">上海到上海旅游</a></li>
            </ul>
        </div>
    </div>
</div>
<%--+1的解释--%>
<div class="jiayi" hidden id="jiayi">
    <div class="jiayi1">车次到达日期为出发日期 <span>+1天。</span></div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>

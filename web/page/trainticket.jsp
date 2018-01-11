<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 17-12-27
  Time: 下午2:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="../css/trainticket.css">
    <script src="../js/trainticket.js"></script>
</head>
<body>

<header>

    <div class="header-inner">
        <div class="inner1"><a href="#">请登录</a></div>
        <div>&nbsp;|&nbsp;</div>
        <div><a href="#">免费注册</a></div>
        <div class="inner2" onclick="dingdan()">我的驴妈妈 <i class="fa fa-sort-desc" aria-hidden="true"></i></div>
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
<div class="search">
    <div class="search-inner" id="searchinner">
        <div class="search-in">
          <div class="search1">火车票</div>
          <form action="/ServletSearch" method="post">
          <div class="search2">
            <div class="search3 search4"><span class="cong">从：</span><input type="text" placeholder="请输入出发站" class="input1" id="input1" name="input1" onfocus="searchin()"></div>

            <div class="search3"><span class="cong">到：</span><input type="text" placeholder="请输入到达站" class="input1" id="input2" name="input2" onfocus="searchin1()"></div>
            <div class="search3 search8"><span class="cong">出发：</span><input type="date" class="input2" id="input3" name="input3" value=""></div>
            <div class="search5"><img src="../img/duihao.jpg" alt="" onclick="chimg()" id="chengeimg"> <span>只搜高铁/动车</span></div>
            <div class="search6"><button type="submit">搜&nbsp;&nbsp;索</button></div>
          </div>
          </form>
            <div class="search7">
            <ul class="ul1">
                <li><img src="../img/sareach.jpg" alt=""> <a href="#">出行保障</a></li>
                <li><img src="../img/sareach.jpg" alt=""><a href="#">24小时服务</a></li>
                <li><img src="../img/sareach.jpg" alt=""><a href="#">标准退改</a></li>
                <li><img src="../img/sareach.jpg" alt=""><a href="#">服务多样</a></li>
            </ul>
            </div>
        </div>
    </div>
</div>
<div class="xianlu" id="beijing">
    <div class="hcxianlu">
          <div class="hcxianlu1">
            <div class="xianlu1">热门路线推荐</div>
            <div class="xianlu2">
              <ul>
                  <li class="l1"><span id="btnshangh">上海</span></li>
                  <li class="l2"><span id="btnbeij">北京</span></li>
                  <li class="l3"><span id="btnguangz">广州</span></li>
                  <li class="l4"><span id="btnchengd">成都</span></li>
                  <li class="l5"><span id="btnhangz">杭州</span></li>
                  <li class="l6"><span id="btnnanj">南京</span></li>
                  <li class="l7"><span id="btnwuh">武汉</span></li>
              </ul>
            </div>
          </div>
          <div class="xianlu3">
              <div class="sqart1">
                  <ul>
                      <li class="ha he">
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;北京</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">156.5</span> <span class="qi">起</span></div>
                      </li>
                      <li class="he">
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;广州</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">189.5</span> <span class="qi">起</span></div>
                      </li>
                      <li class="he">
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;杭州</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">24.5</span> <span class="qi">起</span></div>
                      </li>
                      <li>
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;南京</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">40.5</span> <span class="qi">起</span></div>
                      </li>
                  </ul>
              </div>
              <div class="sqart2">
                  <ul>
                      <li class="ha he">
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;成都</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">254.5</span> <span class="qi">起</span></div>
                      </li>
                      <li class="he">
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;武汉</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">135.5</span> <span class="qi">起</span></div>
                      </li>
                      <li class="he">
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;西安</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">180.5</span> <span class="qi">起</span></div>
                      </li>
                      <li>
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;苏州</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">12.5</span> <span class="qi">起</span></div>
                      </li>
                  </ul>
              </div>
              <div class="sqart3">
                  <ul>
                      <li class="ha he">
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;重庆</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">235</span> <span class="qi">起</span></div>
                      </li>
                      <li class="he">
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;郑州</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">128.5</span> <span class="qi">起</span></div>
                      </li>
                      <li class="he">
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;天津</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">143.5</span> <span class="qi">起</span></div>
                      </li>
                      <li>
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;青岛</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">518</span> <span class="qi">起</span></div>
                      </li>
                  </ul>
              </div>
              <div class="sqart4">
                  <ul>
                      <li class="ha he">
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;深圳</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">234</span> <span class="qi">起</span></div>
                      </li>
                      <li class="he">
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;厦门</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">168.5</span> <span class="qi">起</span></div>
                      </li>
                      <li class="he">
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;沈阳</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">224</span> <span class="qi">起</span></div>
                      </li>
                      <li>
                          <div class="sh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/huoche.jpg" alt="">&nbsp;&nbsp;&nbsp;哈尔滨</div>
                          <div class="sh2"><span class="bh">¥</span> <span class="price">273.5</span> <span class="qi">起</span></div>
                      </li>
                  </ul>
              </div>
          </div>
          <div class="tool">
            <div class="tool1">常用工具</div>
            <div class="tool2">
                <ul>
                    <li class="tl">
                        <img src="../img/ask1.jpg" alt="">
                        <div><a href="#">火车时刻查询</a></div>
                    </li>
                    <li>
                        <img src="../img/ask2.jpg" alt="">
                        <div><a href="#">代售点查询</a></div>
                    </li>
                </ul>
            </div>
            <div class="wenti">
              <span class="wt1">常见问题</span>
              <span class="wt2"><a href="#">更多</a></span>
            </div>
            <div class="question">
                <ul>
                    <li>
                        <span><img src="../img/Q.jpg" alt=""></span>
                        <span class="qu1" onmouseover="mouseover(0)">&nbsp;&nbsp;如何取票</span>
                        <div class="demo1" name="demo">
                            <em>&#9670</em>
                            <span>&#9670</span>
                            <div class="A"><img src="../img/A.jpg" alt=""></div>
                            <div class="qp">
                              <div>自取票代购成功后，需在发车前携带购票时所使用的有效</div>
                              <div>身份证件原件和电子订单号到火车站或代售点取票（电子</div>
                              <div>订单号会在购票成功后以短信的方式发送到订单中联系人</div>
                              <div>的手机上）。当地火车站有自动取票机的话就可以...<a href="#">详情</a></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span><img src="../img/Q.jpg" alt=""></span>
                        <span class="qu1" onmouseover="mouseover(1)">&nbsp;&nbsp;改签？</span>
                        <div class="demo2" hidden name="demo">
                            <em>&#9670</em>
                            <span>&#9670</span>
                            <div class="A"><img src="../img/A.jpg" alt=""></div>
                            <div class="qp">
                                <div>用户可通过APP办理改签，或自行至乘车地的火车站专门</div>
                                <div>窗口办理改签，改签后的票价高于用户已支付票价的，少</div>
                                <div>付款由用户在办理改签时直接支付；改签后的票价低于用</div>
                                <div>户已支付票价的，由用户向本公司申请，本公司将...<a href="#">详情</a></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span><img src="../img/Q.jpg" alt=""></span>
                        <span class="qu1" onmouseover="mouseover(2)">&nbsp;&nbsp;支付失败问题？</span>
                        <div class="demo3" hidden name="demo">
                            <em>&#9670</em>
                            <span>&#9670</span>
                            <div class="A"><img src="../img/A.jpg" alt=""></div>
                            <div class="qp">
                                <div>如出现"支付失败"提示，可能是以下原因所致：1、支付</div>
                                <div>信息输入有误。2、订单的金额高于银行卡的每次支付限</div>
                                <div>额或每日支付限额、银行卡金额少于支付金额。3、信用</div>
                                <div>卡或借记卡不支持网上交易。遇此情况，请您联系...<a href="#">详情</a></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span><img src="../img/Q.jpg" alt=""></span>
                        <span class="qu1" onmouseover="mouseover(3)">&nbsp;&nbsp;退票？</span>
                        <div class="demo4" hidden name="demo">
                            <em>&#9670</em>
                            <span>&#9670</span>
                            <div class="A"><img src="../img/A.jpg" alt=""></div>
                            <div class="qp">
                                <div>购票成功后，如用户办理退票的，用户应自行至乘车地的</div>
                                <div>火车站、售票点办理退票。办理退票的，用户应根据铁路</div>
                                <div>部门如下退票方案支付手续费：票面乘车站开车前48小时</div>
                                <div>以上的，退票时收取票价5％的退票费；开车前24...<a href="#">详情</a></div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
          </div>
    </div>
</div>
<div class="ff">
    <div class="fjxianlu">
            <div class="fjxianlu1">
              <div class="airticket">特价机票推荐</div>
              <div class="airticket1">
                <ul>
                  <li class="ff1"><a href="#">上海</a></li>
                  <li class="ff2"><a href="#">北京</a></li>
                  <li class="ff3"><a href="#">广州</a></li>
                  <li class="ff4"><a href="#">成都</a></li>
                  <li class="ff5"><a href="#">深圳</a></li>
                  <li class="ff6"><a href="#">西安</a></li>
                  <li class="ff7"><a href="#">三亚</a></li>
                </ul>
              </div>
            </div>
            <div class="fjxianlu2">
                <div class="fjsqart1">
                    <ul>
                        <li class="ha he">
                            <div class="fjsh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/feiji.jpg" alt="">&nbsp;&nbsp;&nbsp;北京</div>
                            <div class="date">12月31日</div>
                            <div class="fjsh2"><span class="bh">¥</span> <span class="price">370</span> <span class="qi">起</span></div>
                        </li>
                        <li class="he">
                            <div class="fjsh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/feiji.jpg" alt="">&nbsp;&nbsp;&nbsp;厦门</div>
                            <div class="date">01月06日</div>
                            <div class="fjsh2"><span class="bh">¥</span> <span class="price">320</span> <span class="qi">起</span></div>
                        </li>
                        <li class="he">
                            <div class="fjsh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/feiji.jpg" alt="">&nbsp;&nbsp;&nbsp;三亚</div>
                            <div class="date">01月01日</div>
                            <div class="fjsh2"><span class="bh">¥</span> <span class="price">730</span> <span class="qi">起</span></div>
                        </li>
                        <li>
                            <div class="fjsh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/feiji.jpg" alt="">&nbsp;&nbsp;&nbsp;成都</div>
                            <div class="date">01月06日</div>
                            <div class="fjsh2"><span class="bh">¥</span> <span class="price">450</span> <span class="qi">起</span></div>
                        </li>
                    </ul>
                </div>
                <div class="fjsqart2">
                    <ul>
                        <li class="ha he">
                            <div class="fjsh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/feiji.jpg" alt="">&nbsp;&nbsp;&nbsp;广州</div>
                            <div class="date">01月06日</div>
                            <div class="fjsh2"><span class="bh">¥</span> <span class="price">470</span> <span class="qi">起</span></div>
                        </li>
                        <li class="he">
                            <div class="fjsh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/feiji.jpg" alt="">&nbsp;&nbsp;&nbsp;重庆</div>
                            <div class="date">01月02日</div>
                            <div class="fjsh2"><span class="bh">¥</span> <span class="price">440</span> <span class="qi">起</span></div>
                        </li>
                        <li class="he">
                            <div class="fjsh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/feiji.jpg" alt="">&nbsp;&nbsp;&nbsp;西安</div>
                            <div class="date">01月04日</div>
                            <div class="fjsh2"><span class="bh">¥</span> <span class="price">320</span> <span class="qi">起</span></div>
                        </li>
                        <li>
                            <div class="fjsh1">上海&nbsp;&nbsp;&nbsp;<img src="../img/feiji.jpg" alt="">&nbsp;&nbsp;&nbsp;深圳</div>
                            <div class="date">12月31日</div>
                            <div class="fjsh2"><span class="bh">¥</span> <span class="price">420</span> <span class="qi">起</span></div>
                        </li>
                    </ul>
                </div>
            </div>
        <div class="news">
            <div>
                <span class="wt1">铁路新闻</span>
                <span class="wt2"><a href="#">更多</a></span>
            </div>
            <div class="new-inner">
              <ul>
                  <li><a href="#">国庆火车票周一开抢 青岛至西安仅需...</a> <span class="time">2017-09-06</span></li>
                  <li><a href="#">为方便学生出行 济铁加开多趟动车 途...</a> <span class="time">2017-09-06</span></li>
                  <li><a href="#">呼铁公安开出首张动车吸烟罚单 吸烟...</a> <span class="time">2017-09-06</span></li>
                  <li><a href="#">重庆至营山首趟动车过境南充</a> <span class="time">2017-09-06</span></li>
                  <li><a href="#">9月5日起 厦门往南昌、福州方向加开...</a> <span class="time">2017-09-06</span></li>
                  <li><a href="#">涪陵铁路两趟动车恢复运行 两趟列车...</a> <span class="time">2017-09-06</span></li>
                  <li><a href="#">坐上火车逛花城——兰州至金昌旅游...</a> <span class="time">2017-09-06</span></li>
              </ul>
            </div>
        </div>
    </div>
</div>
<div class="daohang">
    <div class="daoh">
        <span class="daohang1">热门导航</span>
        <span>
            <a href="#" class="d1">火车票时刻查询</a>
            <a href="#">代售点查询</a>
            <a href="#">铁路资讯</a>
        </span>
    </div>
    <div class="daoh">
        <span class="daohang1">热门线路火车票</span>
        <span>
            <a href="#" class="d2">上海到北京火车票</a>
            <a href="#">北京到上海火车票</a>
            <a href="#">广州到杭州火车票</a>
            <a href="#">成都到南京火车票</a>
            <a href="#">杭州到成都火车票</a>
            <a href="#">南京到武汉火车票</a>
            <a href="#">武汉到西安火车票</a>
            <a href="#">西安到苏州火车票</a>
            <br>
            <a href="#" class="d3">苏州到重庆火车票</a>
            <a href="#">深圳到郑州火车票</a>
            <a href="#">天津到青岛火车票</a>
            <a href="#">重庆到天津火车票</a>
            <a href="#">沈阳到深圳火车票</a>
            <a href="#">哈尔滨到大连火车票</a>
            <a href="#">郑州到沈阳火车票</a>
            <a href="#">无锡到哈尔滨火车票</a>
            <br>
            <a href="#" class="d4">济南到秦皇岛火车票</a>
            <a href="#">大连到长沙火车票</a>
        </span>
    </div>
    <div class="daoh">
        <span class="daohang1">热门城市线路时</span>
        <span>
            <a href="#" class="d5">上海到北京火车时刻表</a>
            <a href="#">上海到广州火车时刻表</a>
            <a href="#">北京到上海火车时刻表</a>
            <a href="#">广州到成都火车时刻表</a>
            <a href="#">广州到北京火车时刻表</a>
            <a href="#">成都到武汉火车时刻表</a>
            <a href="#">杭州到重庆火车时刻表</a>
        </span>
        <br>
        <span class="daohang1">刻表</span>
        <span>
            <a href="#" class="d6">南京到杭州火车时刻表</a>
            <a href="#">武汉到西安火车时刻表</a>
        </span>
    </div>
    <div class="daoh">
        <span class="daohang1">热门城市火车票</span>
        <span>
            <a href="#" class="d7">北京火车票代售点</a>
            <a href="#">上海火车票代售点</a>
            <a href="#">广州火车票代售点</a>
            <a href="#">杭州火车票代售点</a>
            <a href="#">南京火车票代代售点</a>
            <a href="#">深圳火车票代售点</a>
            <a href="#">珠海火车票代售点</a>
            <a href="#">无锡火车票代售点</a>
        </span>
        <br>
        <span class="daohang1">代售点</span>
        <span>
            <a href="#" class="d8">长沙火车票代售点</a>
            <a href="#">昆明火车票代售点</a>
        </span>
    </div>
</div>
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
    <div class="info">
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
    <span>
        <ul>
            <li class="lj1">友情链接：</li>
            <li><a href="#">机票预订</a></li>
            <li><a href="#">旅游攻略</a></li>
            <li><a href="#">国际租车网</a></li>
            <li><a href="#">门票预订</a></li>
            <li><a href="#">查看更多</a></li>
        </ul>
    </span>
</div>
<%--选火车票起点时弹出的框--%>
<%--热门--%>
<div id="search" hidden>
    <div class="yuyan">支持中文/拼音/简拼</div>
    <div class="rm1">
        <ul>
            <li class="active" id="active">热门</li>
            <li>ABCD</li>
            <li>EFGH</li>
            <li>JKLM</li>
            <li>NOPQRS</li>
            <li>TUVWX</li>
            <li>YZ</li>
        </ul>
    </div>
    <div class="rm2">
        <ul>
            <li><a href="#" name="adress" onclick="startadress(0)">北京</a></li>
            <li><a href="#" name="adress" onclick="startadress(1)">上海</a></li>
            <li><a href="#" name="adress" onclick="startadress(2)">杭州</a></li>
            <li><a href="#" name="adress" onclick="startadress(3)">广州</a></li>
            <li><a href="#" name="adress" onclick="startadress(4)">南京</a></li>
            <li><a href="#" name="adress" onclick="startadress(5)">武汉</a></li>
            <li><a href="#" name="adress" onclick="startadress(6)">郑州</a></li>
            <li><a href="#" name="adress" onclick="startadress(7)">长沙</a></li>
            <li><a href="#" name="adress" onclick="startadress(8)">深圳</a></li>
            <li><a href="#" name="adress" onclick="startadress(9)">成都</a></li>
        </ul>
    </div>
    <div class="rm3">
        <ul>
            <li><a href="#" name="adress" onclick="startadress(10)">西安</a></li>
            <li><a href="#" name="adress" onclick="startadress(11)">合肥</a></li>
            <li><a href="#" name="adress" onclick="startadress(12)">重庆</a></li>
            <li><a href="#" name="adress" onclick="startadress(13)">汉口</a></li>
            <li><a href="#" name="adress" onclick="startadress(14)">济南</a></li>
            <li><a href="#" name="adress" onclick="startadress(15)">天津</a></li>
            <li><a href="#" name="adress" onclick="startadress(16)">苏州</a></li>
            <li><a href="#" name="adress" onclick="startadress(17)">沈阳</a></li>
            <li><a href="#" name="adress" onclick="startadress(18)">青岛</a></li>
            <li><a href="#" name="adress" onclick="startadress(19)">厦门</a></li>
        </ul>
    </div>
</div>
<%--选火车票终点时弹出的框--%>
<%--热门--%>
<div id="search1" hidden>
    <div class="yuyan">支持中文/拼音/简拼</div>
    <div class="rm1">
        <ul>
            <li class="active" id="active1">热门</li>
            <li>ABCD</li>
            <li>EFGH</li>
            <li>JKLM</li>
            <li>NOPQRS</li>
            <li>TUVWX</li>
            <li>YZ</li>
        </ul>
    </div>
    <div class="rm2">
        <ul>
            <li><a href="#" name="adress1" onclick="endadress(0)">北京</a></li>
            <li><a href="#" name="adress1" onclick="endadress(1)">上海</a></li>
            <li><a href="#" name="adress1" onclick="endadress(2)">杭州</a></li>
            <li><a href="#" name="adress1" onclick="endadress(3)">广州</a></li>
            <li><a href="#" name="adress1" onclick="endadress(4)">南京</a></li>
            <li><a href="#" name="adress1" onclick="endadress(5)">武汉</a></li>
            <li><a href="#" name="adress1" onclick="endadress(6)">郑州</a></li>
            <li><a href="#" name="adress1" onclick="endadress(7)">长沙</a></li>
            <li><a href="#" name="adress1" onclick="endadress(8)">深圳</a></li>
            <li><a href="#" name="adress1" onclick="endadress(9)">成都</a></li>
        </ul>
    </div>
    <div class="rm3">
        <ul>
            <li><a href="#" name="adress1" onclick="endadress(10)">西安</a></li>
            <li><a href="#" name="adress1" onclick="endadress(11)">合肥</a></li>
            <li><a href="#" name="adress1" onclick="endadress(12)">重庆</a></li>
            <li><a href="#" name="adress1" onclick="endadress(13)">汉口</a></li>
            <li><a href="#" name="adress1" onclick="endadress(14)">济南</a></li>
            <li><a href="#" name="adress1" onclick="endadress(15)">天津</a></li>
            <li><a href="#" name="adress1" onclick="endadress(16)">苏州</a></li>
            <li><a href="#" name="adress1" onclick="endadress(17)">沈阳</a></li>
            <li><a href="#" name="adress1" onclick="endadress(18)">青岛</a></li>
            <li><a href="#" name="adress1" onclick="endadress(19)">厦门</a></li>
        </ul>
    </div>
</div>
</body>
</html>

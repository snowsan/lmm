<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-4
  Time: 下午4:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/yuding.css">
    <script src="../js/yuding.js"></script>
    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.css">
</head>
<body>
<header>
    <div class="top">
        <span class="img1"><img src="../img/logo.jpg" alt=""></span>
        <span class="img2"><img src="../img/rexian.jpg" alt=""></span>
        <span class="img3"><img src="../img/tdingdan.jpg" alt=""></span>
    </div>
</header>
<form action="/Servletgo" method="post">
<div class="info">
    <div class="info1">
        <div class="cheinfo1"><input type="text" name="trainnum" readonly value=${list[0].trainnum}></div>
        <div class="info2">
            <div class="inner1">
                <img src="../img/guo.jpg" alt="">&nbsp;
                <span><input type="text" name="startaddress" readonly value=${list[0].startaddress}></span>
            </div>
            <div class="inner2"><input type="text" name="starttime" readonly value=${list[0].starttime}></div>
            <div class="inner3"><input type="text" name="date" readonly value=${list[0].date}></div>
        </div>
        <div class="cheinfo2">
            <img src="../img/smallzhong.jpg" alt="">&nbsp;
            <span><input type="text" name="time" readonly value=${list[0].time}></span>
        </div>
        <div class="info3">
            <div class="inner4">
                <img src="../img/guo.jpg" alt="">&nbsp;
                <span><input type="text" name="endaddress" readonly value=${list[0].endaddress}></span>
            </div>
            <div class="inner5"><input type="text" name="endtime" readonly value=${list[0].endtime}></div>
            <div class="inner6"><input type="text" name="enddate" readonly value=${list[0].enddate}></div>
        </div>
        <div class="cheinfo3">退改签说明</div>
    </div>
</div>
<div class="info4">
    <ul>
        <li>切换座席：</li>
        <li class="zuowei"><span class="zuowei1"><input type="text" name="seattype" readonly value=${list[0].seattype}></span>
            <span class="price">¥<input
                type="text" name="price" readonly value=${list[0].price}></span>
            <span class="zuowei2">余&nbsp;&nbsp;<input type="text" name="surplusticket" readonly value=${list[0].surplusticket}>张</span> <i class="fa fa-sort-desc" aria-hidden="true"></i></li>
        <li class="img4"><img src="../img/wenhao.jpg" alt=""></li>
        <li class="img5"><img src="../img/duihao.jpg" alt=""></li>
        <li class="zuowei3">若硬座无票，我愿意接受无座票</li>
    </ul>
</div>

<div class="fire">
    <div class="fire1">费 用 信 息</div>
    <div class="fire2">
     <ul>
        <li>成人票价：</li>
        <li id="f1">¥${list[0].price}</li>
        <li id="f2">×1</li>
     </ul>
    </div>
    <div class="fire3">
        <ul>
            <li>保险价格：</li>
            <li id="f3">¥0</li>
            <li id="f4">×1</li>
        </ul>
    </div>
    <div class="fire4">
        <div class="f5">应付总价：</div>
        <div class="f6">¥${list[0].price}</div>
        <div class="f7">提示：坐席实时变动，请尽快填写并提交订单！</div>
    </div>
</div>
<div class="ckinfo">
   <div class="ckinfo1">
      <span class="ckimg1"><img src="../img/addchengke.jpg" alt=""></span>
       <span class="ckimg2">添加乘客</span>
       <span class="ckimg2"><img src="../img/hduihao.jpg" alt=""> <span>保存所有联系人</span></span>
   </div>
    <div class="ckinfo2">
        <span><a href="#">登录 </a></span>
        <span>驴妈妈账号，同步账号内常用旅客信息，填单更快速！</span>
    </div>
    <div class="ckinfo3">
        <div class="man1"><img src="../img/chengren.jpg" alt=""></div>
        <div class="man2"><span class="xing1">*</span> <span>姓名：</span>&nbsp;&nbsp;<input type="text" placeholder="请输入姓名" name="username"></div>
        <div class="man3">范例填写</div>
        <div class="man4"><a href="#">清空</a></div>
        <div class="man5"><span class="xing2">*</span><span>证件类型：</span>&nbsp;&nbsp;
            <select name="" id="">
                     <option value="">身份证</option>
                <option value="">护照</option>
                <option value="">学生证</option>
            </select>
            <input type="text" placeholder="请输入证件号码" name="shenfenzheng"></div>
    </div>
    <div class="ckinfo4">
            <ul>
                <li><div class="man6">＋&nbsp;&nbsp;添加乘客</div></li>
                <li><div class="man7">＋&nbsp;&nbsp;添加儿童</div></li>
                <li><div class="man8">儿童票购买规则</div></li>
            </ul>
    </div>
    <div class="ckinfo5">
        <select name="" id="">
            <option value=""><a href="#">天安火车意外险基础款&nbsp;&nbsp;¥保额10万元</a></option>
            <option value=""><a href="#">天安火车意外险基础款¥3/份&nbsp;&nbsp;¥保额10万元</a></option>
            <option value=""><a href="#">天安火车意外险特惠款¥10/份&nbsp;&nbsp;¥保额35万元</a></option>
            <option value=""><a href="#">天安火车意外险尊享款¥20/份&nbsp;&nbsp;¥保额66万元</a></option>
            <option value="">不购买保险</option>
        </select>
    </div>
    <div class="ckinfo6">
        <span class="getpiao1"><img src="../img/qupiao.jpg" alt=""></span>
        <span class="getpiao2">取票方式</span>
    </div>
    <div class="ckinfo7">
        <ul>
            <li><div class="get1"><input type="radio" checked name="zuanzuo">随机出票</div></li>
            <li><div class="get2">自取票</div></li>
            <li><div class="get3"><input type="radio" name="zuanzuo">在线选座</div></li>
            <li><div class="get4">送票上门</div></li>
            <li><div class="get5">免核验</div></li>
        </ul>
    </div>
    <div class="ckinfo8">
        <div class="man9"><span class="xing3">*</span> <span>姓名：</span>&nbsp;&nbsp;<input type="text" placeholder="请输入姓名" name="qupiaoname"></div>
        <div class="man10"><span class="xing4">*</span> <span>手机号：</span>&nbsp;&nbsp;<input type="text" placeholder="用于接收出票通知与取票信息" name="qupiaophone"></div>
    </div>
    <div class="ckinfo9">
        <span class="tehui1"><img src="../img/tehui.jpg" alt=""></span>
        <span class="tehui2">特惠专区</span>
    </div>
    <div class="ckinfo10">
        <div class="tehui3">
            <ul>
                <li><img src="../img/duihao.jpg" alt=""> </li>
                <li><div class="th1">门票10员优惠券</div></li>
                <li><div class="th2">¥3</div></li>
                <li><div class="th3">抵扣10元</div></li>
                <li><div class="th4">票券说明</div></li>
            </ul>
        </div>
        <div class="tehui4">
            <ul>
                <li><img src="../img/duihao.jpg" alt=""> </li>
                <li><div class="th1">酒店50元优惠券 (满300可用)</div></li>
                <li><div class="th5">¥18</div></li>
                <li><div class="th6">抵扣50元</div></li>
                <li><div class="th7">票券说明</div></li>
            </ul>
        </div>
    </div>
    <div class="ckinfo11">
        <span class="man11"><img src="../img/youhui.jpg" alt=""></span>
        <span class="man12">优惠方式</span>
    </div>
    <div class="ckinfo12">
        <select name="" id="">
            <option value=""><a href="#">使用优惠券</a></option>
            <option value="">5元</option>
            <option value="">3元</option>
        </select>
    </div>
</div>
<div class="zhifu">
    <div class="zhifu1">
        <div class="zf1"><a href="#">< 返回上一步</a></div>
        <div class="zf2">应付总价</div>
        <div class="zf3">¥${list[0].price}</div>
    </div>
    <div class="zhifu2">
        <button type="submit">同意以下协议，去支付</button>
    </div>
</div>
</form>

<div class="foot1">上海驴妈妈兴旅国际旅行社有限公司。旅行社业务经营许可证编号：L-SH-CJ00056</div>
<div class="foot2">
    Copyright&copy;2016www.lvmama.com.上海景域文化传播股份有限公司版权所有&nbsp;&nbsp;
    <a href="#">沪ICP备13011172号-3</a>&nbsp;&nbsp;
    增值电信业务经营许可证编号：
    <a href="#">沪B2-20100030</a>
</div>



<%--点击购票，会弹出的页面--%>
<div class="doupiao" hidden id="doupiao">
    <div class="doupiao1">
    </div>
        <div class="login">
            <div class="login1">
                <span class="log1">快速预订/登录</span>
                <span class="log2" onclick="unlogin(this)" title="${list[0].trainnum}" id="${list[0].seattype}">X</span>
            </div>
            <div class="login2">
                <div class="name">用户名登录</div>
                <div class="phone">手机快捷登录</div>
            </div>
            <div class="login3"><input type="text" placeholder="手机号码/用户名/邮箱"></div>
            <div class="login4"><input type="text" placeholder="请输入密码"></div>
            <div class="login5"><a href="#">忘记密码？</a></div>
            <div class="login6">登 录</div>
            <div class="login7">还不是驴妈妈会员? <a href="#">免费注册</a></div>

        </div>
</div>
</body>
</html>

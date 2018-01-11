<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-9
  Time: 上午8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>驴妈妈&gt;个人资料</title>
    <link rel="stylesheet" href="../css/editPersonal.css">
    <script src="../js/editPersonal.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="main">
    <div class="card">
        <div class="peopleinfo">
                <img class="photo"  id="img"  src="../images/lmm.gif" alt="">
                <span class="xiugaizi">点击图片修改我的头像</span>
            <form id="form" action="#" method="post" enctype="multipart/form-data" hidden>
                <input type="file" name="file" id="file">
            </form>

            <h1 class="mar-zuo">${li[0].name}<a href="../page/jiuDian.jsp" class="back">返回我的主页</a></h1>
            <!-- 点击修改按钮后，内容可以修改 -->
            <!-- 处理思路：去掉所有个人信息中的disabled和readonly属性 -->
            <button class="modify" onclick="modify()">修改</button>

        </div>
        <form  id="form1"  method="post" enctype="multipart/form-data">
            <div class="intruduce">
                <div class="xinxi">
                    <div class="fild">
                        <h3 class="fildlabel">性别</h3>
                        <div class="fildcontent">
                            <input type="radio" name="sex" checked="checked"/>女
                            <input id="sexs" type="radio" name="sex" disabled="disabled"/>男
                        </div>
                    </div>
                    <div class="fild">
                        <h3 class="fildlabel">居住地</h3>
                        <div class="fildcontent">
                            <!-- 省市二级连动 -->
                            <!-- 处理思路：通过select标记的onchange事件，根据省名添加市名的option选项 -->
                            <select name="province" id="province" class="select fildtext"
                                    disabled="disabled"
                                    onfocus="getProvince()" onchange="getCity()">
                                <option value="">${li[0].address1}</option>
                            </select>
                            <select name="city" id="city" class="select fildtext" disabled="disabled">
                                <option name="address1" value="">${li[0].address}</option>
                            </select>
                        </div>
                    </div>
                    <div class="fild">
                        <h3 class="fildlabel">所在行业</h3>
                        <div class="fildcontent">
                            <input id="job" name="job" readonly="true" class="fildtext" value=${li[0].job} >
                        </div>
                    </div>
                    <div class="fild">
                        <h3 class="fildlabel">邮箱</h3>
                        <div class="fildcontent">
                            <input id="email" name="email" readonly="true" class="fildtext" value=${li[0].email}>
                        </div>
                    </div>
                    <div class="fild">
                        <h3 class="fildlabel">电话</h3>
                        <div class="fildcontent">
                            <input class="fildtext" name="phone" id="phone" readonly="true" value=${li[0].phone}>
                        </div>
                    </div>
                    <div class="fild">
                        <h3 class="fildlabel">个人简介</h3>
                        <div class="fildcontent">
                            <textarea class="fildtext" name="jianjie" id="introduce" readonly="true" rows="3"
                                      cols="30">${li[0].jianjie}</textarea>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <div class="save-btn">
            <button  class="save" id="save" hidden onclick="save()">保存</button>
        </div>
    </div>
</div>
<h1 style="margin-left: 600px" id="aaa"> </h1>


<jsp:include page="footer.jsp"/>

</body>
</html>
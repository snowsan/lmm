<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-5
  Time: 上午9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑景点</title>
    <script src="../js/editjingdian.js"></script>
</head>
<body>
<div>
    <div>
        <input type="button" value="查询" onclick="selectJingDianInfo()">
        <input type="button" value="新增">
        <input type="button" value="修改">
        <input type="button" value="删除">
    </div>
    <div>
        <table border="1px">
            <thead>
            <tr>
                <th><input type="checkbox" name="checkbox1"></th>
                <th>主键</th>
                <th>景点名称</th>
                <th>门票价格</th>
                <th>详细地址</th>
                <th>照片名称</th>
                <th>景点介绍</th>
                <th>景点类型</th>
                <th>所在城市</th>
                <th>景点等级</th>
                <th>营业时间</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody id="t_body"></tbody>
        </table>
    </div>
</div>

<div id="add_jingdian">
    <form action="/insertJingDianServlet" method="post" enctype="multipart/form-data">
        <table border="1px">
            <tr>
                <td align="right">景点名称：</td>
                <td><input type="text" name="jd_name"></td>
            </tr>
            <tr>
                <td align="right">所在城市分类：</td>
                <td>
                    <select name="city_name" id="city_name" onchange="city()">
                        <option value="-1">请选择</option>
                        <option value="沈阳">沈阳</option>
                        <option value="大连">大连</option>
                        <option value="抚顺">抚顺</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td align="right">景点门票价格：</td>
                <td><input type="text" name="jd_price"></td>
            </tr>
            <tr>
                <td align="right">景点详细地址：</td>
                <td><input type="text" name="jd_address"></td>
            </tr>
            <tr>
                <td align="right">景点照片：</td>
                <td><input type="file" name="file"></td>
            </tr>
            <tr>
                <td align="right">景点属于的类型：</td>
                <td>
                    <select name="jd_type" id="jd_type">
                        <option value="-1">请选择</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td align="right">景点等级：</td>
                <td>
                    <input type="radio" name="jd_rank" value="5A">5A
                    <input type="radio" name="jd_rank" value="4A">4A
                    <input type="radio" name="jd_rank" value="3A">3A
                </td>
            </tr>
            <tr>
                <td align="right">景点营业时间：</td>
                <td><input type="text" name="jd_date"></td>
            </tr>
            <tr>
                <td align="right">景点介绍：</td>
                <td><textarea name="jd_introduction" id="" cols="19" rows="3"></textarea></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="保存"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

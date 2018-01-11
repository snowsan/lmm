<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>会员注册</title>
    <link rel="stylesheet" href="../css/register.css">
    <script src="../js/register.js"></script>
</head>
<body>

<img src="../images/zhuce/zhuce.jpg" alt="">

<span class="login1">
    <a href="#" class="login" id="login" name="login">登录</a> |
    <a href="#" class="KeFu" id="KeFu" name="KeFu">客服中心</a>
</span>

<!--显示注册进度-->
<div class="ZhuCe">
    <h1>会员注册</h1>

    <!--填写-->
    <table cellspacing="8" id="table1">
        <form action="/ServletZhuCe" method="post">
            ${qq}
            <tr>
                <td align="right">手机号</td>
                <td><input class="ShuRuKuang" id="SouJiHao" name="SouJiHao" type="text" placeholder=" 可用作登录名"
                           onblur="ShouJiHao()"
                           required="required" maxlength="11"></td>
            </tr>

            <tr>
                <td></td>
                <!--验证手机号提示信息-->
                <td><span class="YanZheng" id="ShouJiHaoYanZheng"></span></td>
            </tr>
            <tr>
                <td align="right">姓名</td>
                <td><input type="text" name="name1"  class="ShuRuKuang" placeholder=" 请填写真实姓名" required="required"></td>
            </tr>
            <tr>
                <td align="right">密码</td>
                <td><input class="ShuRuKuang" id="MiMa" name="MiMa" type="password" placeholder=" 8-20位字母、数字和符号"
                           maxlength="20" required="required" onblur="MiMa1()">
                    <span class="MiMaQiangDu" id="Ruo">弱</span>
                    <span class="MiMaQiangDu" id="Zhong">中</span>
                    <span class="MiMaQiangDu" id="Qiang">强</span>
                </td>
            </tr>

            <tr>
                <td></td>
                <td><!--验证密码提示信息-->
                    <!--！！！！！！！！！这里框太长了！！！！！！！！-->
                    <!--！！！！！！！！！这里框太长了！！！！！！！！-->
                    <!--！！！！！！！！！这里框太长了！！！！！！！！-->
                    <span class="YanZheng" id="MiMaYanZheng"></span>
                </td>
            </tr>

            <tr>
                <td required="required" align="right">确认密码</td>
                <td><input class="ShuRuKuang" id="MiMa2" type="password" placeholder=" 再次输入密码"
                           maxlength="20"
                           onblur="MiMa22()"></td>

            </tr>

            <tr>
                <td></td>
                <td><!--验证确认密码提示信息-->
                    <span class="YanZheng" id="MiMa2YanZheng"></span>
                </td>
            </tr>


            <!--谷歌，火狐，display:block ，会布局错乱，   在js中要用display="";就可以了-->
            <!--IE可以-->
            <tr class="YZM" id="YZM">
                <td align="right">验证码</td>
                <td>
                    <input class="ShuRuKuang" id="input1" required="required" type="text"
                           placeholder="请输入验证码">
                    <input type="button" class="YanZhangMa" id="code" onclick="createCode()">
                    <span class="HuanYiZhang" onclick="createCode()">换一张</span>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><!--验证验证码提示信息-->
                    <span class="YanZheng" id="YanZhengMa1"></span>
                </td>
            </tr>

            <!---->
            <!---->

            <tr>
                <td></td>
                <td class="XieYi1">注册即代表您同意我们的<a href="#">服务协议</a>和<a href="">隐私政策</a></td>
            </tr>

            <tr>
                <td></td>
                <td><input class="ZhuCheAnNiu" type="submit" value="注册" onclick="validate()"></td>
            </tr>

            <tr>
                <td></td>
                <td>已有账号，<a href="../page/DengLu.jsp">直接登录&gt;</a></td>
            </tr>
        </form>
    </table>
</div>


<jsp:include page="footer.jsp"/>


<!--弹出页-->

<div class="XieYi2" id="XieYi2">
    <div class="Modal-backdrop">


    </div>
    <div class="XieYi3">
        <h3 class="h3">驴妈妈用户注册协议和隐私政策<span class="quit" id="quit" onclick="quit()">×</span></h3>
        <div class="NeiRong" id="NeiRong">
        <span class="ZhuTi">
            <br>
            亲爱的用户，在您注册为驴妈妈用户的过程中，您需要完成我们的注册流程并通过点击同意的形式
        在线签署一下协议，请您务必仔细阅读、充分理解协议中的条款内容后在点击同意，由其是加粗字体。</span>
            <br>
            <a class="XieYi4" href="#">服务协议</a>
            <table class="NeiRong1">
                <tr>
                    <td>1.总则</td>
                    <td>2.服务简介</td>
                </tr>
                <tr>
                    <td>3.服务条款的修改</td>
                    <td>4.服务变更、中断、终止</td>
                </tr>
                <tr>
                    <td>5.使用规则</td>
                    <td>6.版权声明</td>
                </tr>
                <tr>
                    <td>7.用户隐私制度</td>
                    <td>8.用户的账号、密码和安全性</td>
                </tr>
                <tr>
                    <td>9.拒绝提供担保</td>
                    <td>10.有限责任</td>
                </tr>
                <tr>
                    <td>11. 携程网络会员服务信息的存储及限制&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>12. 用户管理</td>
                </tr>
                <tr>
                    <td>13. 保障</td>
                    <td>14. 结束服务</td>
                </tr>
                <tr>
                    <td>15. 通告</td>
                    <td>16. 参与广告策划</td>
                </tr>
                <tr>
                    <td>17. 邮件内容的所有权</td>
                    <td>18. 法律</td>
                </tr>
            </table>
            <br>
            <a href="#">隐私政策</a>
            <br><br>
            <div class="YinShi">
                隐私政策明确了我们产品与/或服务所收集、使用及共享个人信息的类型和方式及用途；明确了用户查询、更正和删除个人信息的方式，具体提纲如下：
            </div>
            <table class="NeiRong1">
                <tr>
                    <td>1.隐私政策的确认和接纳</td>
                    <td>2.信息收集</td>
                </tr>
                <tr>
                    <td>3.信息使用</td>
                    <td>4.信息共享、转让和披露</td>
                </tr>
                <tr>
                    <td>5.信息保存及跨境传输</td>
                    <td>6.Cookie的使用</td>
                </tr>
                <tr>
                    <td>7.个人敏感信息提示</td>
                    <td>8.信息安全与保护</td>
                </tr>
                <tr>
                    <td>9.信息安全事件处置</td>
                    <td>10.未成年人信息保护</td>
                </tr>
                <tr>
                    <td>11.用户个人信息管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>12.从中国大陆地区以外访问我们的网站</td>
                </tr>
                <tr>
                    <td>13.隐私政策的适用范围</td>
                    <td>14.隐私政策的修改</td>
                </tr>
                <tr>
                    <td>15.法律</td>
                </tr>
            </table>
            <div class="NeiRong1">
                【审慎阅读】您在申请注册流程中点击同意前，请您务必审慎阅读、充分理解协议中相关条款内容，尤其是与您约定免除或限制责任的条款，以及字体加粗标识的重要条款。
            </div>
            <div class="NeiRong1">
                【请您注意】如果您不同意上述协议或其中任何条款约定，请您停止注册。如果您按照注册流程提示填写信息、阅读并点击同意上述协议且完成全部注册流程后，即表示您已充分阅读、理解并接受协议的全部内容。如果您对以上内容有疑问，请联系：<a
                    href="#">privacy@ctrip.com</a>。
            </div>
            <div class="NeiRong1">
                点击同意即代表您已阅读并同意携程《服务协议》和《隐私政策》，并同意我们将您的订单信息共享给为完成此订单所必须的第三方合作方。
            </div>

        </div>
        <div class="AnNiue">
            <input class="BuTonYi" type="button" value="不同意" onclick="quit()">
            <input class="TongYi" type="button" value="同意并继续" onclick="JiXu()">
        </div>
    </div>
</div>

</body>
</html>
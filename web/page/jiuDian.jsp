<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-7
  Time: 下午7:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>驴妈妈&gt;酒店&gt;</title>

    <!--引入css文件-->
    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.css">

    <!--引入js文件-->
    <script src="../js/jiuDian.js"></script>
    <link rel="stylesheet" href="../css/jiuDian.css">
</head>
<body>

<jsp:include page="header.jsp"/>
<div class="JiuDian">

    <!--主页背景滚播图-->
    <div id="ZhuYe">
        <nal class="ZhuYe1">
            <ul id="index">
                <li class="on"></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
            <ul id="img">
                <li class="opa-on">
                    <img src="../images/ZhuYe/zhuye1.jpg" alt="img1"></li>
                <li><img src="../images/ZhuYe/zhuye2.jpg" alt="img2"></li>
                <li><img src="../images/ZhuYe/zhuye3.jpg" alt="img3"></li>
                <li><img src="../images/ZhuYe/zhuye4.gif" alt="img4"></li>
                <li><img src="../images/ZhuYe/zhuye5.jpg" alt="img5"></li>
                <li><img src="../images/ZhuYe/zhuye6.jpg" alt="img5"></li>
            </ul>
        </nal>
        <!--主页背景滚播图结束-->

        <!--酒店搜索框-->
        <div class="JiuDianSouSuo">
            <div class="JiuDianSouSuo1">
                <div class="JiuDianSouSuo2">
                    <span class="line"></span>
                    <div>酒店搜索</div>
                    <span class="line"></span>
                </div>

                <form action="/ServletSouSuo" method="post">
                    <div class="SouSuo">

                        <!--搜索框-->
                        <div class="SouSuo1">
                            <input name="address" class="SouSuo2" id="SouSuo2" type="text" placeholder=" 请输入目的地">
                        </div>

                        <!--日期框-->
                        <div class="startDate1">
                            <input type="date" id="startDate">
                        </div>
                        <div class="endDate1">
                            <input type="date" id="endDate">
                        </div>

                        <!--选填框-->
                        <div class="XuanTian">
                            <input type="text" placeholder=" (选填)酒店名称/商圈/地标">
                        </div>

                        <!--搜索按钮-->
                        <div class="button1">
                            <input type="submit" value="搜 索">
                        </div>
                    </div>
                </form>

            </div>
            <img class="ww" src="../images/ww.jpg" alt="">
        </div>
    </div>


    <!--酒店主页-->
    <div class="DuJiaQu">
        <br><br>
        <h2>热门度假区</h2>
        <div class="DuJiaQu0">
            <!--目录框   滑动显示对应的酒店-->
            <div class="DuJiaQu4" id="DuJiaQu4">
                <ul class="DuJiaQu1">
                    <li class="DuJiaQu3" onmouseover="ChangBaiShanver(this)" title="ChangBaiShan">
                        长白山万达度假区 <span class="right1"><i class="fa fa-caret-right "></i></span>
                    </li>
                    <li class="DuJiaQu3" onmouseover="ChangBaiShanver(this)" title="ChongLi">
                        崇礼滑雪度假区 <span class="right1"><i class="fa fa-caret-right "></i></span>
                    </li>
                    <li class="DuJiaQu3" onmouseover="ChangBaiShanver(this)" title="GuZhen">
                        古北水镇度假区 <span class="right1"><i class="fa fa-caret-right "></i></span>
                    </li>
                    <li class="DuJiaQu3" onmouseover="ChangBaiShanver(this)" title="XiaoTangShan">
                        北京小汤山温泉度假区 <span class="right1"><i class="fa fa-caret-right "></i></span>
                    </li>
                    <li class="DuJiaQu3" onmouseover="ChangBaiShanver(this)" title="HaErBin">
                        哈尔滨度假区 <span class="right1"><i class="fa fa-caret-right "></i></span>
                    </li>
                    <li class="DuJiaQu3" onmouseover="ChangBaiShanver(this)" title="TianJin">
                        天津度假区 <span class="right1"><i class="fa fa-caret-right "></i></span>
                    </li>
                    <li class="DuJiaQu3" onmouseover="ChangBaiShanver(this)" title="QingDao">
                        青岛度假区 <span class="right1"><i class="fa fa-caret-right "></i></span>
                    </li>
                </ul>
            </div>

            <!--内容-->

            <!--长白山度假区-->
            <div class="ChangBaiShan" id="ChangBaiShan">
                <div class="XiaoBiaoTi">长白山万达度假区</div>
                <div class="GengDuo">
                    是人们山地度假的热门之选，依山而建，夏季清凉无比，冬天又因独特的地貌被誉为“新雪乡”。
                    <a href="#">查看更多 &gt;</a>
                </div>
                <div class="ChangBaiShan1">
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="1" src="../images/RenMenDuJiaQu/xilaideng.jpg"
                             alt="">
                        <br>
                        <a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="1">长白山万达喜来登度假酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">1458</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="2" src="../images/RenMenDuJiaQu/zhixuan.jpg" alt="">
                        <br>
                        <a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="2">长白山万达智选假日酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">950</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="3" src="../images/RenMenDuJiaQu/jiari.jpg" alt="">
                        <br>
                        <a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="3">长白山万达假日度假酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">1220</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                </div>
            </div>

            <!--崇礼度假区-->
            <div class="ChangBaiShan" id="ChongLi">
                <div class="XiaoBiaoTi">崇礼滑雪度假区</div>
                <div class="GengDuo">
                    崇礼背倚广袤的内蒙古草原，自然风光丰富绮丽，夏季避暑，冬季滑雪。
                    <a href="#">查看更多 &gt;</a>
                </div>
                <div class="ChangBaiShan1">
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="4" src="../images/RenMenDuJiaQu/yuanshu.jpg" alt="">
                        <br>
                        <a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="4">崇礼太舞威斯汀源宿酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="5" src="../images/RenMenDuJiaQu/yunding.jpg" alt="">
                        <br><a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="5">崇礼云顶大酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">860</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="6" src="../images/RenMenDuJiaQu/taiwu.jpg" alt="">
                        <br><a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="6">张家口崇礼太舞度假酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">740</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                </div>
            </div>

            <!--水镇度假区-->
            <div class="ChangBaiShan" id="GuZhen">
                <div class="XiaoBiaoTi">古北水镇度假区</div>
                <div class="GengDuo">
                    背靠中国最美、最险的司马台长城，坐拥鸳鸯湖水库，半山半水古北水镇。
                    <a href="#">查看更多 &gt;</a>
                </div>
                <div class="ChangBaiShan1">
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="7" src="../images/RenMenDuJiaQu/gubeizhiguang.jpg"
                             alt="">
                        <br><a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="7">密云古北之光温泉度假酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="8" src="../images/RenMenDuJiaQu/shuizhenjiudian.jpg"
                             alt="">
                        <br><a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="8">北京古北水镇大酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="9" src="../images/RenMenDuJiaQu/weilianande.jpg"
                             alt="">
                        <br><a href="#" class="JiuDianname" name="aaa" onclick="func(this)"
                               title="9">北京古北水镇威廉埃德加精品酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                </div>
            </div>

            <!--小汤山度假区-->
            <div class="ChangBaiShan" id="XiaoTangShan">
                <div class="XiaoBiaoTi">北京小汤山温泉度假区</div>
                <div class="GengDuo">
                    小汤山是京北重镇，素有“温泉古镇”之美称，具有地热资源丰富的自然优势。
                    <a href="#">查看更多 &gt;</a>
                </div>
                <div class="ChangBaiShan1">
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="10" src="../images/RenMenDuJiaQu/jingzhihu.jpg"
                             alt="">
                        <br>
                        <a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="10">北京静之湖度假酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="11" src="../images/RenMenDuJiaQu/hongluwenquan.jpg"
                             alt="">
                        <br>
                        <a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="11">北京红栌温泉山庄</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="12" src="../images/RenMenDuJiaQu/chengbao.jpg"
                             alt="">
                        <br>
                        <a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="12">美神宫温泉城堡酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                </div>
            </div>

            <!--哈尔滨度假区-->
            <div class="ChangBaiShan" id="HaErBin">
                <div class="XiaoBiaoTi">哈尔滨度假区</div>
                <div class="GengDuo">
                    哈尔滨地处东北亚中心地带，被誉为欧亚大陆桥的明珠，是第一条欧亚大陆桥和空中走廊的重要枢纽。
                    <a href="#">查看更多 &gt;</a>
                </div>
                <div class="ChangBaiShan1">
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="13" src="../images/RenMenDuJiaQu/kaibinshiji.jpg"
                             alt="">
                        <br><a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="13">哈尔滨凯宾斯基酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="14" src="../images/RenMenDuJiaQu/xianggelila.jpg"
                             alt="">
                        <br>
                        <a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="14">哈尔滨松北香格里拉大酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="15" src="../images/RenMenDuJiaQu/jiahua.jpg" alt="">
                        <br>
                        <a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="15">哈尔滨万达嘉华度假酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                </div>
            </div>

            <!--天津度假区-->
            <div class="ChangBaiShan" id="TianJin">
                <div class="XiaoBiaoTi">天津度假区</div>
                <div class="GengDuo">
                    天津市区依河而建，景色优美。著名的“津门十景”是天津旅游景观的代表。
                    <a href="#">查看更多 &gt;</a>
                </div>
                <div class="ChangBaiShan1">
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="16" src="../images/RenMenDuJiaQu/tiancheng.jpg"
                             alt="">
                        <br>
                        <a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="16">天津天诚酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="17" src="../images/RenMenDuJiaQu/pubinguoji.jpg"
                             alt="">
                        <br><a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="17">天津晋滨国际大酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="18" src="../images/RenMenDuJiaQu/wanyi.jpg" alt="">
                        <br><a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="18">天津陆家嘴万怡酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                </div>
            </div>

            <!--青岛度假区-->
            <div class="ChangBaiShan" id="QingDao">
                <div class="XiaoBiaoTi">青岛度假区</div>
                <div class="GengDuo">
                    背靠中国最美、最险的司马台长城，坐拥鸳鸯湖水库，半山半水古北水镇。
                    <a href="#">查看更多 &gt;</a>
                </div>
                <div class="ChangBaiShan1">
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="19" src="../images/RenMenDuJiaQu/hongshulin.jpg"
                             alt="">
                        <br>
                        <a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="19">青岛红树林度假世界</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="20" src="../images/RenMenDuJiaQu/juzishuijing.jpg"
                             alt="">
                        <br><a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="20">橘子水晶酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img name="aaa" onclick="func(this)" title="21" src="../images/RenMenDuJiaQu/UUU.jpg" alt="">
                        <br>
                        <a href="#" class="JiuDianname" name="aaa" onclick="func(this)" title="21">青岛U酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!--主题推荐-->
    <h2>主题推荐</h2>
    <div class="ZhuTi">
        <div class="ZhuTi1">
            <ul>
                <li class="XiaoBiaoTi1" id="HuaXue" onclick="ZhuTiTuiJina(this)">
                    <img class="XiaoTuPian" id="HuaXue1" src="../images/ZhuTiTuiJian/huaxue.jpg" alt="">
                    <img class="XiaoTuPian1" id="HuaXue2" src="../images/ZhuTiTuiJian/huaxue1.jpg" alt="">
                    <p class="p" id="p1">滑雪度假</p>
                </li>
            </ul>
            <ul>
                <li class="XiaoBiaoTi1" id="WenQuan" onclick="ZhuTiTuiJina(this)">
                    <img class="XiaoTuPian" id="WenQuan1" src="../images/ZhuTiTuiJian/wenquan.jpg">
                    <img class="XiaoTuPian1" id="WenQuan2" src="../images/ZhuTiTuiJian/wenquan1.jpg">
                    <p class="p">温泉酒店</p>
                </li>
            </ul>
            <ul>
                <li class="XiaoBiaoTi1" id="JingPin" onclick="ZhuTiTuiJina(this)">
                    <img class="XiaoTuPian" id="JingPin1" src="../images/ZhuTiTuiJian/jingpin.jpg" alt="">
                    <img class="XiaoTuPian1" id="JingPin2" src="../images/ZhuTiTuiJian/jingpin1.jpg" alt="">
                    <p class="p">城市精品</p>
                </li>
            </ul>
            <ul>
                <li class="XiaoBiaoTi1" id="MingShan" onclick="ZhuTiTuiJina(this)" v>
                    <img class="XiaoTuPian" id="MingShan1" src="../images/ZhuTiTuiJian/mingshan.jpg" alt="">
                    <img class="XiaoTuPian1" id="MingShan2" src="../images/ZhuTiTuiJian/mingshan1.jpg" alt="">
                    <p class="p">名山胜景</p>
                </li>
            </ul>
            <ul>
                <li class="XiaoBiaoTi1" id="HaiBin" onclick="ZhuTiTuiJina(this)">
                    <img class="XiaoTuPian" id="HaiBin1" src="../images/ZhuTiTuiJian/haibin.jpg" alt="">
                    <img class="XiaoTuPian1" id="HaiBin2" src="../images/ZhuTiTuiJian/haibin1.jpg" alt="">
                    <p class="p">海滨度假</p>
                </li>
            </ul>
        </div>


        <!--滑雪主题推荐酒店-->
        <div class="Tuijian" id="HuaXue3">
            <div class="HuaXueTuiJian">
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/11.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达喜来登度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1458</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/12.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达智选假日酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">950</span>
                        <span class="Qi"> 起</span></span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/13.jpg" alt="">
                    <br><a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/14.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
            </div>
            <div class="HuaXueTuiJian">
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/15.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达喜来登度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1458</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/16.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达智选假日酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">950</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/17.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/18.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
            </div>
        </div>

        <!--温泉主题推荐酒店-->
        <div class="Tuijian" id="WenQuan3">
            <div class="HuaXueTuiJian">
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/21.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">天津天诚酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">933</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/22.jpg" alt="">
                    <br><a href="#" class="JiuDianname">天津晋滨国际大酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">933</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/23.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">天津陆家嘴万怡酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">933</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/24.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">天津陆家嘴万怡酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">933</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
            </div>
            <div class="HuaXueTuiJian">
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/25.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">天津天诚酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">933</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/26.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">天津晋滨国际大酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">933</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/27.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">天津陆家嘴万怡酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">933</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/28.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">天津陆家嘴万怡酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">933</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
            </div>
        </div>

        <!--精品主题推荐酒店-->
        <div class="Tuijian" id="JingPin3">
            <div class="HuaXueTuiJian">
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/31.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达喜来登度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1458</span>
                        <span class="Qi"> 起</span></span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/32.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达智选假日酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">950</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/33.jpg" alt="">
                    <br><a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/34.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
            </div>
            <div class="HuaXueTuiJian">
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/35.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达喜来登度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1458</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/36.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达智选假日酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">950</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/37.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/38.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
            </div>
        </div>

        <!--名山主题推荐酒店-->
        <div class="Tuijian" id="MingShan3">
            <div class="HuaXueTuiJian">
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/41.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达喜来登度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1458</span>
                        <span class="Qi"> 起</span></span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/42.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达智选假日酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">950</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/43.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/44.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
            </div>
            <div class="HuaXueTuiJian">
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/45.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达喜来登度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1458</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/46.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达智选假日酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">950</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/47.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/48.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
            </div>
        </div>

        <!--海滨主题推荐酒店-->
        <div class="Tuijian" id="HaiBin3">
            <div class="HuaXueTuiJian">
                <div class="ChangBaiShan1">
                    <div class="JiuDianname1">
                        <img src="../images/ZhuTiTuiJian/51.jpg" alt="">
                        <br>
                        <a href="#" class="JiuDianname">密云古北水镇古北之光温泉度假酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img src="../images/ZhuTiTuiJian/52.jpg" alt="">
                        <br>
                        <a href="#" class="JiuDianname">北京古北水镇大酒店</a>
                        <span class="JiaGe">
                            <span class="yang">￥</span>
                            <span class="JiaGe1">933</span>
                            <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img src="../images/ZhuTiTuiJian/53.jpg" alt="">
                        <br>
                        <a href="#" class="JiuDianname">北京古北水镇威廉埃德加精品酒店</a>
                        <span class="JiaGe">
                              <span class="yang">￥</span>
                              <span class="JiaGe1">1220</span>
                              <span class="Qi"> 起</span>
                        </span>
                    </div>
                    <div class="JiuDianname1">
                        <img src="../images/ZhuTiTuiJian/54.jpg" alt="">
                        <br>
                        <a href="#" class="JiuDianname">北京古北水镇威廉埃德加精品酒店</a>
                        <span class="JiaGe">
                              <span class="yang">￥</span>
                              <span class="JiaGe1">1458</span>
                              <span class="Qi"> 起</span>
                        </span>
                    </div>
                </div>
            </div>
            <div class="HuaXueTuiJian">
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/55.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达喜来登度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1458</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/56.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达智选假日酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">950</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/57.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
                <div class="JiuDianname1">
                    <img src="../images/ZhuTiTuiJian/58.jpg" alt="">
                    <br>
                    <a href="#" class="JiuDianname">长白山万达假日度假酒店</a>
                    <span class="JiaGe">
                        <span class="yang">￥</span>
                        <span class="JiaGe1">1220</span>
                        <span class="Qi"> 起</span>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="Shortcut Icon" href="logo_2.png">
<link href="css/style.css" rel="stylesheet" />
<link href="css/box.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="logo_site">
				<img src="logo.png" class="img-responsive">
			</div>
			<div class="input_site">
				<input type="text" class="control" placeholder="  请输入菜谱/食材/菜单">
				<input type="submit" class="btn" value="搜 索" />
			</div>
			<div class="userframe">
				<div class="userinfo_w" id="userinfo_w">
					<a href="#" class="avatar"><img src="getOnlineUserHead.action"></a>
					<a href="#" class="outer">${user.username }</a>
					<div class="top_userinfo_more">
						<div class="u">
							<a href="get" class="img"><img src="getOnlineUserHead.action"></a>
							<div class="n">
								<a href="zone.jsp" class="rr">${user.username }</a> <a
									target="_blank" href="zone.jsp" class="v"></a> <span class="re">新人</span>
							</div>
						</div>
						<ul class="clearfix">
							<li><a href="uploadmenu.jsp" class="redbtn">发布菜谱</a> <a
								href="#" class="greybtn">发布话题</a></li>
							<li><a href="zone.jsp" class="linkk">我的美食空间</a></li>
							<li><a href="zone.jsp" class="linkk">我的积分成长</a></li>
							<li><a href="#" class="linkk">退出登录</a></li>
						</ul>
					</div>
				</div>
				<!-- <a href="#" class="outer">收藏</a>
				<div class="mes">
					<a href="#" class="outer">消息</a>
					<div class="topbar_mesbox" id="topbar_mesbox" style="display: none"></div>
				</div> -->
			</div>
			<script>
				$("#userinfo_w").hover(function() {
					$(this).addClass("userinfo_w_hover");
				}, function() {
					$(this).removeClass("userinfo_w_hover");
				});
			</script>
		</div>
	</div>
	<div class="nav_menu">
		<div class="nav">
			<div class="list" id="navlist">
				<ul id="navfouce">
					<li><a href="index.jsp" class="a1">首页</a>
						<div id="po"></div></li>
					<li><a href="#" class="a2">菜谱大全</a></li>
					<li><a href="#" class="a2">饮食健康</a></li>
					<li><a href="main.html" class="a1">美食菜单</a></li>
					<li><a href="#" class="a1">家居馆</a></li>
					<li><a href="#" class="a1">美食达人</a></li>
					<li><a href="#" class="a1">讨论组</a></li>
					<li><a href="#" class="a1">联系我们</a></li>
				</ul>
			</div>
			<div class="box" id="navbox"
				style="height: 0px; opacity: 0; overflow: hidden;">
				<div class="cont" style="display: none;">
					<ul class="sublist clearfix">
						<li>
							<h3 class="mcate-item-hd">
								<span>家常菜谱</span>
							</h3>
							<p class="mcate-item-bd">
								<a href="#">家常菜</a> <a href="#">凉菜</a> <a href="#">素食</a> <a
									href="#">晚餐</a> <a href="#">私家菜</a> <a href="#">热菜</a> <a
									href="#">海鲜</a> <a href="#">甜品点心</a> <a href="#">早餐</a> <a
									href="#">午餐</a> <a href="#">汤粥</a> <a href="#">糕点主食</a>
							</p>
						</li>
						<li>
							<h3 class="mcate-item-hd">
								<span>中华菜系</span>
							</h3>
							<p class="mcate-item-bd">
								<a href="#">川菜</a> <a href="#">粤菜</a> <a href="#">东北菜</a> <a
									href="#">湘菜</a> <a href="#">鲁菜</a> <a href="#">浙菜</a> <a
									href="#">湖北菜 </a>
							</p>
						</li>
						<li>
							<h3 class="mcate-item-hd">
								<span>各地小吃</span>
							</h3>
							<p class="mcate-item-bd">
								<a href="#">四川小吃</a> <a href="#">广东小吃</a> <a href="#">北京小吃</a> <a
									href="#">陕西小吃</a>
							</p>
						</li>
						<li>
							<h3 class="mcate-item-hd">
								<span>烘焙</span>
							</h3>
							<p class="mcate-item-bd">
								<a href="#">蛋糕面包</a> <a href="#">饼干配方</a> <a href="#">甜品点心</a>
							</p>
						</li>
						<li>
							<h3 class="mcate-item-hd">
								<span>食材百科</span>
							</h3>
							<p class="mcate-item-bd">
								<a href="#">蔬菜</a> <a href="#">水果</a> <a href="#">谷类</a>
							</p>
						</li>
					</ul>
				</div>
				<div class="cont" style="display: none;">
					<ul class="sublist clearfix">
						<li>
							<h3 class="mcate-item-hd">
								<span>饮食健康</span>
							</h3>
							<p class="mcate-item-bd">
								<a href="#">饮食小常识</a> <a href="#">美容瘦身</a> <a href="#">食品安全</a>
								<a href="#">养生妙方</a> <a href="#">饮食禁忌</a> <a href="#">中医保健</a> <a
									href="#">母婴健康饮食</a> <a href="#">饮食新闻</a>
							</p>
						</li>
						<li>
							<h3 class="mcate-item-hd">
								<span>功能性调理</span>
							</h3>
							<p class="mcate-item-bd">
								<a href="#">清热去火</a> <a href="#">减肥</a> <a href="#">祛痰</a> <a
									href="#">乌发</a> <a href="#">滋阴补肾</a> <a href="#">健脾开胃</a> <a
									href="#">消化不良</a> <a href="#">清热解毒</a> <a href="#">补阳壮阳</a> <a
									href="#">增肥</a>
							</p>
						</li>
						<li>
							<h3 class="mcate-item-hd">
								<span>人群膳食</span>
							</h3>
							<p class="mcate-item-bd">
								<a href="#">孕妇</a> <a href="#">老人</a> <a href="#">产妇</a> <a
									href="#">哺乳期</a> <a href="#">青少年</a> <a href="#">幼儿</a> <a
									href="#">学龄期儿童</a>
							</p>
						</li>
						<li>
							<h3 class="mcate-item-hd">
								<span>疾病调理</span>
							</h3>
							<p class="mcate-item-bd">
								<a href="#">糖尿病</a> <a href="#">高血压</a> <a href="#">通风</a> <a
									href="#">胃炎</a> <a href="#">痔疮</a> <a href="#">更年期</a> <a
									href="#">甲状腺</a>
							</p>
						</li>
						<li>
							<h3 class="mcate-item-hd">
								<span>脏腑调理</span>
							</h3>
							<p class="mcate-item-bd">
								<a href="#">感冒</a> <a href="#">补肾</a> <a href="#">阳痿早泄</a> <a
									href="#">补血</a> <a href="#">便秘</a> <a href="#">腹泻</a> <a
									href="#">活血化瘀</a>
							</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/daohang.js"></script>
	<div class="row11">
		<ul class="pathstlye1">
			<li><a id="zl_shouye" href="index.html">首页</a></li>
			<li>&gt;</li>
			<li><a id="zl_main" href="main.html">菜谱大全</a></li>
			<li>&gt;</li>
			<li><a id="zl_toolbar" class="curzt" href="#">#热菜#</a> <a
				id="zl_toolbar_1" class="curzt" href="#">#家常菜#</a> <a
				id="zl_toolbar_1" class="curzt" href="#">#私家菜#</a> <a
				id="zl_toolbar_1" class="curzt" href="#">#午餐#</a></li>
		</ul>
	</div>
	<c:forEach items="${list }" var="list">
		<div class="row12">
			<div class="row12_1">
				<img src="${list.photo }" />
			</div>
			<div class="row12_2">
				<div class="info1">
					<h2 class="title">
						<a id="tongji_title" title="${list.title }的做法" href="#">${list.title }</a>
					</h2>
					<div class="erweima_t" id="erweima_t"></div>
					<div class="ewmbox" id="ewmbox" style="display: none;">
						<div class="c">
							<strong>用手机查看这篇菜谱</strong>
							<p>
								手机扫描右侧二维码， <br>将这篇菜谱带进厨房，让您边做边看！ <br> <br>您也可以 <a
									target="_blank" href="#">下载舌尖·美味手机客户端 &gt;</a> <br>随时随地看菜谱!
							</p>
						</div>
						<img src="images/erweima.png" class="ewmimg">
					</div>
					<script>
						var title_length = $(".row12_2 .title a").html().length;
						if (title_length <= 8) {
						} else if (title_length > 8 && title_length <= 11) {
							$(".row12_2 .info1 .title").css({
								"font-size" : "24px"
							});
						} else if (title_length > 11) {
							$(".row12_2 .info1 .title").css({
								"font-size" : "18px"
							});
						}
						if (title_length > 16) {
							$(".row12_2 .info1 .title").css({
								"line-height" : "22px"
							});
						}
					</script>
					<style>
.row12_2 .info1 .title {
	max-width: 288px;
	height: 44px;
	padding: 28px 0px;
	line-height: 44px;
	transition: all ease 0.3s;
	-webkit-transition: all ease 0.3s;
}
</style>

					<span class="favbtns"> <a href="#" title="${list.title }的做法"
						class="addToFav_con" id="addToFav_con">收藏 <span id="f_num">(4272)</span>
					</a>
						<div id="bdshare" class="bdshare_b">
							<div class="bdshare_aa">
								<span>分享到：</span> <a class="bds_sqq" title="分享到QQ好友"> <img
									src="images/bd_qq.png" />
								</a> <a class="bds_qzone" title="分享到QQ空间"> <img
									src="images/bd_qzone.png" />
								</a> <a class="bds_tsina" title="分享到新浪微博"> <img
									src="images/ba_sina.png" />
								</a>
							</div>
						</div>
					</span>
				</div>
				<script>
					$("#erweima_t").hover(function() {
						$(this).addClass("erweima_t_hover");
						$("#ewmbox").show();
					}, function() {
						$(this).removeClass("erweima_t_hover");
						$("#ewmbox").hide();
					});
					$("#ewmbox").hover(function() {
						$(this).show();
						$("#erweima_t").addClass("erweima_t_hover");
					}, function() {
						$(this).hide();
						$("#erweima_t").removeClass("erweima_t_hover");
					});
				</script>
				<div class="info2">
					<ul class="clearfix">
						<li class="w127"><strong>工艺</strong><a id="tongji_gy"
							href="#" title="${list.title }" class="big">${list.gongyi }</a></li>
						<li class="w270"><strong>难度</strong>
							<div class="processing_w">
								<span class="icon icon_nd"></span><span
									class="processing processing_nd1"></span><a id="tongji_nd"
									href="#" title="${list.title }的难度" class="small">${list.make_diff }</a>
							</div></li>
						<li class="w270 br0"><strong>人数</strong>
							<div class="processing_w">
								<span class="icon icon_rs"></span><span
									class="processing processing_nd9"></span><a id="tongji_rsh"
									href="#" title="${list.title }的人数" class="small">${list.make_amount }</a>
							</div></li>
						<li class="w127 bb0"><strong>口味</strong><a id="tongji_kw"
							href="javascript:;" title="${list.title }的口味" class="big">${list.kouwei }</a></li>
						<li class="w270 bb0"><strong>准备时间</strong>
							<div class="processing_w">
								<span class="icon icon_zb"></span><span
									class="processing processing_nd7"></span><a id="tongji_zbsj"
									href="#" title="${list.title }的准备时间" class="small">${list.make_pretime }</a>
							</div></li>
						<li class="w270 bb0 br0"><strong>烹饪时间</strong>
							<div class="processing_w">
								<span class="icon icon_pr"></span><span
									class="processing processing_nd7"></span><a href="#"
									id="tongji_prsj" title="${list.title }的烹饪时间" class="small">&lt;${list.make_time  }</a>
							</div></li>
					</ul>
				</div>
				<div class="info3">
					<div class="user">
						<a target="_blank" id="tongji_author_img" href="#" class="img">
							<img src="getOnlineUserHead.action"> <span
							class="masker pngFix"></span>
						</a>
						<div class="info">
							<h4>
								<a id="tongji_author" target="_blank" href="#">${user.username }</a>
							</h4>
							<span>菜谱：204 / 关注：16 / 粉丝：3250</span> <strong>2015-12-29
								/ <em id="viewclicknum">23985</em>人看过
							</strong>
						</div>
					</div>
				</div>
			</div>

		</div>

	</c:forEach>
	<div class="clear"></div>
	<div class="row13" style="height: auto; margin-bottom: 40px;">
		<div class="metar">
			<p>
				<strong>“</strong>
				板栗烧鸡是我们这边每家中秋国庆必吃的一道菜，做法基本相似，只是加的调料不同，味道上还是有很大差别的，今天这款烧鸡里面放了点香料，味道很棒哦！
				<strong>”</strong>
			</p>
			<strong class="cpc_h2">用料</strong>
			<div class="metar_box">
				<div class="yl zl clearfix">
					<h3>
						<a href="#" title="${uploadMenu.title }的主料">主料</a>
					</h3>
					<ul class="clearfix">
						<li class="" style="border-bottom: 0px;"><a target="_blank"
							href="#" class="img"><img src="images/ji.jpg"></a>
							<div class="c">
								<h4>
									<a target="_blank" href="#">鸡</a><span>1只</span>
								</h4>
							</div></li>
						<li class="br0" style="border-bottom: 0px;"><a
							target="_blank" href="#" class="img"><img
								src="images/banli.jpg"></a>
							<div class="c">
								<h4>
									<a target="_blank" href="#">板栗</a><span>400克</span>
								</h4>
							</div></li>
					</ul>
				</div>
				<div class="yl fuliao clearfix">
					<h3>
						<a href="#" title="${uploadMenu.title }的辅料">辅料</a>
					</h3>
					<ul class="clearfix">
						<li class="">
							<h4>
								<a target="_blank" href="#">油</a>
							</h4> <span>2大勺</span>
						</li>
						<li class="br0">
							<h4>
								<a target="_blank" href="#">啤酒</a>
							</h4> <span>2罐</span>
						</li>
						<li class="">
							<h4>
								<a href="#">酱油</a>
							</h4> <span>1大勺</span>
						</li>
						<li class="br0">
							<h4>
								<a href="#">鸡精</a>
							</h4> <span>1小勺</span>
						</li>
						<li class="">
							<h4>
								<a target="_blank" href="#">盐</a>
							</h4> <span>适量</span>
						</li>
						<li class="br0">
							<h4>
								<a target="_blank" href="#">香料</a>
							</h4> <span>适量</span>
						</li>
						<li class="">
							<h4>
								<a target="_blank" href="#">蒜</a>
							</h4> <span>10颗</span>
						</li>
						<li class="br0">
							<h4>
								<a href="#">生姜</a>
							</h4> <span>20克</span>
						</li>
						<li class="" style="border-bottom: none;">
							<h4>
								<a target="_blank" href="#">红辣椒</a>
							</h4> <span>10个</span>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	<div id="footer">
		<div class="top">
			<div class="container2">
				<div class="row6">
					<div class="col">
						<a href="#" class="logo"> <img src="logo.png" alt="" /></a>
						<div class="text">
							<p1>版权所有，翻版不究!</p1>
						</div>
						<div class="text">
							<p>
								中国，最大的菜谱库 <strong>800,000 篇</strong> <br>每月，用户访问数量 <strong>20,000,000
									次</strong> <br>每年，菜谱被浏览量 <strong>36,000,000,000 次</strong> <br>
								现在，这些数字还在不断的增长着,欢迎您来一起使用舌尖美味美食网! <br>
							</p>
						</div>
					</div>
					<div class="pic">
						<a href="#"><img src="images/thesina.png" /> <p1>
							<center>
								点击进入 <br>舌尖美味官方微博
							</center>
							</p1> </a>
					</div>
					<div class="pic">
						<a href="#"><img src="images/Qzone.png" /> <p1>
							<center>
								点击进入 <br>舌尖美味QQ空间
							</center>
							</p1> </a>
					</div>
					<div class="pic">
						<a href="#"><img src="images/erweima.png" /> <p1>
							<center>
								扫二维码添加 <br>舌尖美味为微信好友
							</center>
							</p1> </a>
					</div>
					<div class="pic">
						<a href="#"><img src="images/theQQ.png" /> <p1>
							<center>
								扫二维码下载 <br>舌尖美味美食客户端
							</center>
							</p1> </a>
					</div>
				</div>
				<div class="row6">
					<p2> <br>
					友情链接</p2>
					<table>
						<tr>
							<td>美食</td>
							<td>体质测试</td>
							<td>伊特</td>
							<td>大粤网美食</td>
							<td>9酷音乐网</td>
							<td>123菜谱大全</td>
							<td>365音乐网</td>
							<td>图吧</td>
							<td>汽车论坛</td>
							<td>39健康饮食</td>
						</tr>
						<tr>
							<td>QQ下载</td>
							<td>家具网</td>
							<td>搜狐美食</td>
							<td>美食天下</td>
							<td>特色菜网</td>
							<td>poco美食网</td>
							<td>中华美食网</td>
							<td>合肥交通网</td>
							<td>苹果园</td>
							<td>红餐微杂志</td>
						</tr>
						<tr>
							<td>北京搜房网</td>
							<td>东莞赶集网</td>
							<td>厨师网</td>
							<td>更多友情链接</td>
						</tr>
					</table>
				</div>
				<div class="row6">
					<table id="table1">
						<tr>
							<td>公司简介</td>
							<td>企业文化</td>
							<td>公司动态</td>
							<td>免责申明</td>
							<td>联系我们</td>
							<td>招贤纳士</td>
							<td>商务合作</td>
							<td>网站地图</td>
							<td>友情链接</td>
							<td>移动APP</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="bottom">
			<div class="container2">
				<div class="row6">
					<div class="copyrights">
						京ICP证160105号/京公网安备11010802009999© Copyright <a href="#"
							title="Ling_jui">Ling_jui</a> 2016. All rights reserved.
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
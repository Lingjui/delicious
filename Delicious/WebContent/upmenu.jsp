<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>舌尖·美味</title>
<link rel="Shortcut Icon" href="logo_2.png">
<link href="css/style.css" rel="stylesheet" />
<link href="css/box.css" rel="stylesheet" />
<link href="css/upload.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/upload.js"></script>
<script type="text/javascript" src="js/j.m.js"></script>
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
							<a href="#" class="img"><img src="getOnlineUserHead.action"></a>
							<div class="n">
								<a href="zone.jsp" class="rr">${user.username }</a> <a
									target="_blank" href="zone.jsp" class="v"></a> <span class="re">新人</span>
							</div>
						</div>
						<ul class="clearfix">
							<li><a href="#" class="redbtn">发布菜谱</a> <a href="#"
								class="greybtn">发布话题</a></li>
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
					<li><a href="#" class="a1">美食菜单</a></li>
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
	<div class="main_w clearfix">
		<style>
.swiper-container {
	height: 140px;
	width: 890px;
	margin: 0px 0px 0px;
}

.swiper-wrapper {
	height: 100px;
	width: 890px;
}

.swiper-container-horizontal>.swiper-pagination {
	bottom: 10px;
	left: 0;
	width: 100%;
}

.swiper-pagination-bullet-active {
	opacity: 1;
	background: #ff5151;
}
</style>
		<form id="uploadform" action="upmenu" method="post"
			enctype="multipart/form-data">
			<input type="hidden" value="new" id="r_act" name="act"> <input
				type="hidden" value="1" name="stype" id="stype"> <input
				type="hidden" name="id" id="r_id" value="0">
			<div class="main">
				<h3 class="bbtitles">欢迎发布新菜谱，先介绍一下你的大作！</h3>
				<div class="item clearfix">
					<div class="help" id="helpbar">
						菜谱发布并审核通过后，将被舌尖·美味收录并展示。 <a target="_blank" href="#">查看新手帮助
							&gt;&gt; </a><span class="close" id="closehelp">不再显示</span>
					</div>
					<div class="uploadbox">
						<a target="_blank" href="#" class="showhelp" id="showhelp">查看帮助
							&gt;&gt;</a>

						<div class="uploaditem">
							<h5>标题</h5>
							<div class="row1_box">
								<div class="input_text_item">
									<input type="text" value=""
										name="menus.menuname" placeholder="请填写菜谱名称，10字以内"
										class="hastip">
									<div class="upload_tips"
										style="bottom: 54px; left: 0px; display: block;">
										1、菜谱名称保持10个汉字以内<br> 2、菜谱名称中不加特殊符号如：“，。【】” <span
											class="upload_tips_arrow"></span>
									</div>

									<input type="text" style="display: none;" title="from_site"
										value="" name="from_site" id="from_site">
								</div>
								<a
									style="display: inline-block; vertical-align: top; *display: inline; *zoom: 1; height: 44px; line-height: 44px; color: #ff3232; font-size: 14px; text-decoration: underline; padding-left: 10px;"
									href="#" target="_blank">如何让你的菜看起来很好吃 &gt;</a>
							</div>
						</div>
						<div class="uploaditem">
							<h5>功能</h5>
							<div class="input_text_item" style="margin-bottom: 25px">
							<input type="text" class="gongneng" value="" name="menus.menupro" placeholder="请填写美食功能，4字以内"
										class="hastip">
							</div>
							<h5>属性</h5>
							<div class="row1_box">
								<div class="selectitem" style="z-index: 1;">
									<dl>
										<dt style="border-bottom-width: 1px;">工艺</dt>
										<dd class="clearfix" style="display: none;">
											<span val="0">选择工艺</span> <span val="炒">炒</span> <span
												val="蒸">蒸</span> <span val="煮">煮</span> <span val="炖">炖</span>
											<span val="拌">拌</span> <span val="烧">烧</span> <span val="煎">煎</span>
											<span val="炸">炸</span> <span val="烘焙">烘焙</span> <span
												val="微波">微波</span> <span val="烤">烤</span> <span val="煲">煲</span>
											<span val="焖">焖</span> <span val="冻">冻</span> <span val="烙">烙</span>
											<span val="砂锅">砂锅</span> <span val="腌">腌</span> <span val="卤">卤</span>
											<span val="酱">酱</span> <span val="烩">烩</span> <span val="扒">扒</span>
											<span val="爆">爆</span> <span val="炝">炝</span> <span val="熘">熘</span>
											<span val="熏">熏</span> <span val="汆">汆</span> <span val="拔丝">拔丝</span>
											<span val="榨汁">榨汁</span> <span val="灼">灼</span> <span val="泡">泡</span>
											<span val="腊">腊</span> <span val="糖蘸">糖蘸</span> <span
												val="干锅">干锅</span> <span val="焗">焗</span> <span val="干煸">干煸</span>
											<span val="煨">煨</span> <span val="其他">其他</span>
										</dd>
									</dl>
									<input type="hidden" name="menus.menugongyi" value="0">
								</div>
								<div class="selectitem" style="z-index: 1;">
									<dl>
										<dt style="border-bottom-width: 1px;">口味</dt>
										<dd class="clearfix" style="display: none;">
											<span val="0">选择口味</span> <span val="家常味">家常味</span> <span
												val="香辣味">香辣味</span> <span val="咸鲜味">咸鲜味</span> <span
												val="甜味">甜味</span> <span val="酸甜味">酸甜味</span> <span
												val="酸辣味">酸辣味</span> <span val="麻辣味">麻辣味</span> <span
												val="酱香味">酱香味</span> <span val="奶香味">奶香味</span> <span
												val="蒜香味">蒜香味</span> <span val="鱼香味">鱼香味</span> <span
												val="葱香味">葱香味</span> <span val="果味">果味</span> <span
												val="五香味">五香味</span> <span val="咖喱味">咖喱味</span> <span
												val="椒麻味">椒麻味</span> <span val="茄汁味">茄汁味</span> <span
												val="酸味">酸味</span> <span val="苦香味">苦香味</span> <span
												val="姜汁味">姜汁味</span> <span val="怪味">怪味</span> <span
												val="芥末味">芥末味</span> <span val="红油味">红油味</span> <span
												val="豆瓣味">豆瓣味</span> <span val="麻酱味">麻酱味</span> <span
												val="黑椒味">黑椒味</span> <span val="糊辣味">糊辣味</span> <span
												val="其他">其他</span>
										</dd>
									</dl>
									<input type="hidden" name="menus.menukouwei" value="0">
								</div>
							</div>
						</div>
						<div class="uploaditem pb0">
							<h5>成品图 (328*440)</h5>
							<div class="file_box">
								<div class="fileitem" id="upload_big_img">
									<img src="" id="uploaded_show"> <a href="#" id="delimg"></a>
									<a class="uploadmenu"><input type="file" id="f1"
										name="file" onchange="showImg('f1','p1')"> <img id="p1"
										alt="" name="pic" height="400" width="300" border="0" /></a>
									<!-- <iframe id="newsphoto_iframe" src="images/upload_big_img.png" frameborder="0" height="400" width="300" scrolling="no"></iframe> -->
								</div>
								<div class="textareaitem">
									<textarea placeholder="说说这道菜背后的故事吧~ " name="menus.content"></textarea>
								</div>
							</div>
						</div>
					</div>
				</div>
				<script>
					$(function() {
						$(".addTipsBtn").click(function() {
							var _this = $(this);
							_this.next().toggle();
						});

						$(".tipsFormW .x")
								.click(
										function() {
											var _p = $(this).parents(
													".tipsFormW");
											var guid = _p.find("input.guid")
													.val();
											_p.find("input.text").val("");
											_p.find("input.tips_img").val("");
											_p.find("textarea").val("");
											var new_src = "/iframe/pic_step.php?tips=1&step="
													+ guid;
											_p.find("iframe").attr('src',
													new_src);
											_p.toggle();
										});
					});
				</script>

				<!-------------三---------->
				<div class="uploadsubmit_item" style="width: 460px;">
					<input type="submit" value="搞定，提交审核！"
						style="display: inline-block;margin-left: 130px;">
				</div>
			</div>
		</form>
		<div id="rulebox" style="display: none;">
			<p
				style="line-height: 28px; font-size: 14px; color: #333; text-align: center; padding: 40px 40px;">
				<strong
					style="color: #ff3232; font-weight: bold; font-size: 16px; font-family: Microsoft Yahei, 黑体;">作品已上传!
					<br> <a href="#">点击查看上传的菜谱</a>
				</strong>
			</p>
			<div
				style="height: 118px; width: 400px; margin: 0px auto; background: url(https://css.meishij.net/zt/images/aca/aca_dialog_erweima.gif) 0px 0px no-repeat;"></div>
		</div>
		<script language=javascript>
			function showImg(fileid, target) {//给2个参数，其他位置的参数名一致，值就进去了
				var preview = document.querySelector('#' + target);//获取img元素,显示图片位置，根据el表达式('#'+target)
				var file = document.querySelector('#' + fileid).files[0];//根据id拿到文件选择框里面的文件，
				var reader = new FileReader();//创建FileReader接口（把文件放到图片预览框里面）
				reader.onloadend = function() {
					preview.src = reader.result;
				}
				if (file) {
					reader.readAsDataURL(file);
				} else {
					preview.src = "";
				}
			}
		</script>
		<script type="text/javascript">
			setTimeout(function() {
				do_submit(3);
			}, 60000);
		</script>
		<script type="text/javascript">
			function keyDown(event) {
				var keycode = event.keyCode;
				var keyChar = String.fromCharCode(keycode);
				if (event.keyCode == 13 && event.srcElement.type != 'button'
						&& event.srcElement.type != 'submit'
						&& event.srcElement.type != 'reset'
						&& event.srcElement.type != ''
						&& event.srcElement.type != 'textarea') {
					return false;
				}
			}
			// document.onkeydown=keyDown(event);
			$(document).keydown(function(event) {
				keyDown(event);
			});
			var tempradio = null;
		</script>
		<div id="queue"></div>
		<style type="text/css">
#windown-close {
	display: none;
}
</style>

		<input type="hidden" id="session_id">
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
					友情链接 </p2>
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
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
		<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
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
				<div class="QQ">
					<img src="images/QQ.png">
					<a href='#'>
						<li>QQ登录</li>
					</a>
				</div>
				<div class="Sina">
					<img src="images/Sina.png">
					<a href='#'>
						<li>微博登录</li>
					</a>
				</div>
				<div class="load">
					<a href='load.jsp'>
						<li>登录</li>
					</a>
				</div>
				<div class="regin">
					<a href='#'>
						<li>注册</li>
					</a>
				</div>
			</div>
		</div>
		<div class="nav_menu">
			<div class="nav">
				<div class="list" id="navlist">
					<ul id="navfouce">
						<li>
							<a href="index.jsp" class="a1">首页</a>
							<div id="po"></div>
						</li>
						<li><a href="#" class="a2">菜谱大全</a></li>
						<li><a href="#" class="a2">饮食健康</a></li>
						<li>
							<a href="main.html" class="a1">美食菜单</a>
						</li>
						<li>
							<a href="#" class="a1">家居馆</a>
						</li>
						<li>
							<a href="#" class="a1">美食达人</a>
						</li>
						<li>
							<a href="#" class="a1">讨论组</a>
						</li>
						<li>
							<a href="#" class="a1">联系我们</a>
						</li>
					</ul>
				</div>
				<div class="box" id="navbox" style="height:0px;opacity:0;overflow:hidden;">
					<div class="cont" style="display:none;">
						<ul class="sublist clearfix">
							<li>
								<h3 class="mcate-item-hd"><span>家常菜谱</span></h3>
								<p class="mcate-item-bd"><a href="#">家常菜</a>
									<a href="#">凉菜</a>
									<a href="#">素食</a>
									<a href="#">晚餐</a>
									<a href="#">私家菜</a>
									<a href="#">热菜</a>
									<a href="#">海鲜</a>
									<a href="#">甜品点心</a>
									<a href="#">早餐</a>
									<a href="#">午餐</a>
									<a href="#">汤粥</a>
									<a href="#">糕点主食</a>
								</p>
							</li>
							<li>
								<h3 class="mcate-item-hd"><span>中华菜系</span></h3>
								<p class="mcate-item-bd"><a href="#">川菜</a>
									<a href="#">粤菜</a>
									<a href="#">东北菜</a>
									<a href="#">湘菜</a>
									<a href="#">鲁菜</a>
									<a href="#">浙菜</a>
									<a href="#">湖北菜 </a></p>
							</li>
							<li>
								<h3 class="mcate-item-hd"><span>各地小吃</span></h3>
								<p class="mcate-item-bd"><a href="#">四川小吃</a>
									<a href="#">广东小吃</a>
									<a href="#">北京小吃</a>
									<a href="#">陕西小吃</a>
								</p>
							</li>
							<li>
								<h3 class="mcate-item-hd"><span>烘焙</span></h3>
								<p class="mcate-item-bd"><a href="#">蛋糕面包</a>
									<a href="#">饼干配方</a>
									<a href="#">甜品点心</a>
								</p>
							</li>
							<li>
								<h3 class="mcate-item-hd"><span>食材百科</span></h3>
								<p class="mcate-item-bd"><a href="#">蔬菜</a>
									<a href="#">水果</a>
									<a href="#">谷类</a>
								</p>
							</li>
						</ul>
					</div>
					<div class="cont" style="display:none;">
						<ul class="sublist clearfix">
							<li>
								<h3 class="mcate-item-hd"><span>饮食健康</span></h3>
								<p class="mcate-item-bd"><a href="#">饮食小常识</a>
									<a href="#">美容瘦身</a>
									<a href="#">食品安全</a>
									<a href="#">养生妙方</a>
									<a href="#">饮食禁忌</a>
									<a href="#">中医保健</a>
									<a href="#">母婴健康饮食</a>
									<a href="#">饮食新闻</a> </p>
							</li>
							<li>
								<h3 class="mcate-item-hd"><span>功能性调理</span></h3>
								<p class="mcate-item-bd"><a href="#">清热去火</a>
									<a href="#">减肥</a>
									<a href="#">祛痰</a>
									<a href="#">乌发</a>
									<a href="#">滋阴补肾</a>
									<a href="#">健脾开胃</a>
									<a href="#">消化不良</a>
									<a href="#">清热解毒</a>
									<a href="#">补阳壮阳</a>
									<a href="#">增肥</a></p>
							</li>
							<li>
								<h3 class="mcate-item-hd"><span>人群膳食</span></h3>
								<p class="mcate-item-bd"><a href="#">孕妇</a>
									<a href="#">老人</a>
									<a href="#">产妇</a>
									<a href="#">哺乳期</a>
									<a href="#">青少年</a>
									<a href="#">幼儿</a>
									<a href="#">学龄期儿童</a></p>
							</li>
							<li>
								<h3 class="mcate-item-hd"><span>疾病调理</span></h3>
								<p class="mcate-item-bd"><a href="#">糖尿病</a>
									<a href="#">高血压</a>
									<a href="#">通风</a>
									<a href="#">胃炎</a>
									<a href="#">痔疮</a>
									<a href="#">更年期</a>
									<a href="#">甲状腺</a>
								</p>
							</li>
							<li>
								<h3 class="mcate-item-hd"><span>脏腑调理</span></h3>
								<p class="mcate-item-bd"><a href="#">感冒</a>
									<a href="#">补肾</a>
									<a href="#">阳痿早泄</a>
									<a href="#">补血</a>
									<a href="#">便秘</a>
									<a href="#">腹泻</a>
									<a href="#">活血化瘀</a></p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/daohang.js"></script>
		<div class="row7" style="height: 922px;">
			<h3 class="l_title">
				<span class="left_t"></span>注册舌尖·美味<span class="right_t"></span>
			</h3>
			<div class="load_icon">
				<div class="circle1">
					<span class="icon">
				</span>
				</div>
				<div class="circle2">
					<span class="icon2">
				</span>
				</div>
				<div class="circle3">
					<span class="icon3">
				</span>
				</div>
			</div>
			<h5 class="t_title">更多第三方登录方式</h5>
			<div id="or" style="margin-top: 10px;">
				<span class="icon_or"></span>
			</div>
			<div class="loadbox" style="display: none;">
				<div class="login">
					<div class="loginitem">
						<input type="text" class="text" placeholder="  请输入手机号/邮箱/昵称" name="username">
					</div>
					<div class="loginitem">
						<input type="password" class="password" name="password" placeholder="  请输入密码">
					</div>
					<div class="loginitem" style="height: 33px;font: 14px'微软雅黑';color: #666666;margin-bottom: 0px;">
						<label>
							<input type="checkbox" id="auto_login" value="auto" class="checkbox"> 下次自动登录
						</label>
						<a>忘记密码？</a>
					</div>
					<div class="loginitem" style="text-align: center;">
						<input type="submit" class="submit" value="登录">
					</div>
				</div>
			</div>
			<div class="ul_loadbox" style="display: block;">
				<div class="nl_tab">
					<a class="current"id="zc_phone">手机注册</a> |
					<a id="zc_email">邮箱注册</a>
				</div>
				<div class="nl_loginbox_www">
					<div class="nl_loginbox_ww" style="margin-left: 0px;">

						<div class="nl_loginbox_w" style="float:left;">

							<form class="register_form_pn">
								<div class="nl_loginitem">
									<input type="text" class="text" id="mobile" passcheck="0" placeholder="请输入手机号">
								</div>
								<div class="nl_loginitem">
									<input type="text" class="text" passcheck="0" id="mobile_code" placeholder="请输入验证码" style="width:150px;"><a href="javascript:void(0)" class="phone_yzmbtn sended" id="phone_yzmbtn">免费获取验证码</a>
								</div>
								<div class="login_tips false" style="display:none;"> </div>
								<div class="nl_loginitem">
									<input type="password" class="password" id="password_mobile" name="password" passcheck="0" placeholder="请输入密码">
								</div>
								<div class="nl_loginitem" style="height:33px;">
									<label>
										<input type="checkbox" id="mobile_check" class="checkbox" checked="1"> 我已阅读并且同意<a href="#">舌尖·美味用户使用协议</a></label>
								</div>
								<div class="nl_loginitem" style="text-align:center;">
									<input type="submit" class="submit" value="注册">
								</div>
							</form>
						</div>
						<div class="nl_loginbox_w" style="float:left;">

							<form class="register_form_email" id="nl_email_submit_btn_form" action="register">
								<div class="nl_loginitem">
									<input type="text" class="text forcheck email_forcheck" name="user.email" id="email" passcheck="0" placeholder="请输入邮箱" onblur="checkEm(this.value)">
								</div>
								<div class="nl_loginitem">
									<input type="password" class="password forcheck pw_forcheck" name="user.password" id="email_password" placeholder="请输入密码">
								</div>
								<div class="nl_loginitem" style="height:33px;">
									<label>
										<input type="checkbox" id="email_check" class="checkbox" checked="1"> 我已阅读并且同意<a href="">舌尖·美味用户使用协议</a></label>
								</div>
								<div class="nl_loginitem" style="text-align:center;">
									<input type="submit" class="submit register_submit" id="nl_email_submit_btn" value="注册">
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
			<h5 class="t_title" style="margin-top: 50px;"><a href="load.jsp">已有账号？马上登录！</a></h5>
			<script>
				$("#zc_phone").click(function() {
					var _this = $(this);
					$(".nl_loginbox_ww").animate({
						"margin-left": "0px"
					}, 300, function() {
						_this.siblings().removeClass("current");
						_this.addClass("current");
					});
				});
				$("#zc_email").click(function() {
					var _this = $(this);
					$(".nl_loginbox_ww").animate({
						"margin-left": "-320px"
					}, 300, function() {
						_this.siblings().removeClass("current");
						_this.addClass("current");
					});
				});
				function checkUN(un){
					
					$.post("check",{"username":un},function(data){
						alert(data);
					  });
				}
				function checkEm(em){
					
					$.post("checkemail",{"email":em},function(data){
						alert(data);
					  });
				}
			</script>
		</div>
		<div class="clear">

		</div>
		<div id="footer">
			<div class="top">
				<div class="container2">
					<div class="row6">
						<div class="col">
							<a href="#" class="logo">
								<img src="logo.png" alt="" /></a>
							<div class="text">
								<p1>版权所有，翻版不究!</p1>
							</div>
							<div class="text">
								<p>中国，最大的菜谱库 <strong>800,000 篇</strong>
									<br>每月，用户访问数量 <strong>20,000,000 次</strong>
									<br>每年，菜谱被浏览量 <strong>36,000,000,000 次</strong>
									<br> 现在，这些数字还在不断的增长着,欢迎您来一起使用舌尖美味美食网!
									<br>
								</p>
							</div>
						</div>
						<div class="pic">
							<a href="#"><img src="images/thesina.png" />
								<p1>
									<center>点击进入
										<br>舌尖美味官方微博</center>
								</p1>
							</a>
						</div>
						<div class="pic">
							<a href="#"><img src="images/Qzone.png" />
								<p1>
									<center>点击进入
										<br>舌尖美味QQ空间</center>
								</p1>
							</a>
						</div>
						<div class="pic">
							<a href="#"><img src="images/erweima.png" />
								<p1>
									<center>扫二维码添加
										<br>舌尖美味为微信好友</center>
								</p1>
							</a>
						</div>
						<div class="pic">
							<a href="#"><img src="images/theQQ.png" />
								<p1>
									<center>扫二维码下载
										<br>舌尖美味美食客户端</center>
								</p1>
							</a>
						</div>
					</div>
					<div class="row6">
						<p2>
							<br>友情链接</p2>
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
						<div class="copyrights">京ICP证160105号/京公网安备11010802009999© Copyright <a href="#" title="Ling_jui">Ling_jui</a> 2016. All rights reserved.</div>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>
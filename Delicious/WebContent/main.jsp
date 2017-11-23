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
			<form action="search" method="post">
				<input type="text" class="control" name="keyword" placeholder="  请输入菜谱/食材/菜单">
				<input type="submit" class="btn" value="搜 索" />
			</form>
			</div>
			
			<div class="userframe">
				<div class="userinfo_w" id="userinfo_w">
					<a href="#" class="avatar"><img src="getOnlineUserHead.action"></a>
					<a href="#" class="outer">${user.username }</a>
					<div class="top_userinfo_more">
						<div class="u">
							<a href="#" class="img"><img src="getOnlineUserHead.action"></a>
							<div class="n">
								<a href="getZone.action" class="rr">${user.username }</a> 
								<a target="_blank" href="zone.jsp" class="v"></a>
								<span class="re">新人</span>
							</div>
						</div>
						<ul class="clearfix">
							<li><a href="uploadmenu.jsp" class="redbtn">发布菜谱</a> 
							<a href="upmenu.jsp" class="greybtn">发布话题</a></li>
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
	<div class="main">
		<div class="row8">
			<strong class="bbtitles">1月，寒冬进补保暖</strong>
			<div class="ztlist_style1 clearfix" id="ztlist_style1_index">
				<div id="index_cd_leftarrow"></div>
				<div id="index_cd_leftarrow_mask"></div>
				<div id="index_cd_rightarrow"></div>
				<div id="index_cd_rightarrow_mask" style="display: none;"></div>
				<div class="ztlist_style1_item_w" id="ztlist_style1_item_w">
					<div class="ztlist_style1_item_ww" id="ztlist_style1_item_ww"
						style="margin-left: -988px;">

						<div class="ztlist_style1_item_w1">
							<div class="ztlist_style1_item">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e14.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">元旦团圆饭桌大盘点</a></strong>
												<p>团团圆圆，有餐桌才能好好吃饭</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e15.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">进补时节</a></strong>
												<p>不可错过的八大佳品</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item mr0">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e16.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">冬日山楂之恋</a></strong>
												<p>酸酸甜甜 人人爱~</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item mb0">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e17.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">冬季补气血
														7种好食材</a></strong>
												<p>从美食开始关爱自己，做一个精致女人</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item mb0">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e18.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">饺子的一万种打开方式</a></strong>
												<p>万万想不到，一枚饺子竟这般传奇！</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item mr0 mb0">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e19.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">辣妈带你玩烘焙</a></strong>
												<p>一台烤箱打开生活的新世界大门</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="ztlist_style1_item_w1">
							<div class="ztlist_style1_item">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e7.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">小寒</a></strong>
												<p>寒冷季节，用食物补益身体，温暖身心</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e2.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank"
													href="http://i.meishi.cc/huodong/zt.php?zt_id=9">冬日食话
														营养“菌”衡</a></strong>
												<p>冬日滋补哪家强？菌菇家族人人强！</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item mr0">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e8.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">微胖&amp;微胖Plus必读神贴</a></strong>
												<p>胖瘦只在一嘴之间，脂肪的边缘</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item mb0">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e3.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">菜谱征集活动</a></strong>
												<p>把你的圣诞节美食晒出来与大家分享吧！</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item mb0">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e4.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">坚果菜系
														冬日美味能量</a></strong>
												<p>相信我，你会像小松鼠一样爱上它们</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item mr0 mb0">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e5.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank"
													href="#://i.meishi.cc/discussion/topic.php?gid=9&tid=900686">吃货圣诞『狂吃』攻略</a></strong>
												<p>很正经的祝大家：麦莉 克里思默斯</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="ztlist_style1_item_w1">
							<div class="ztlist_style1_item">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e9.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">美味新食尚，健康好粮油</a></strong>
												<p>恒大兴安健康粮油免费申领中</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e10.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">2016健康从饮食开始</a></strong>
												<p>用一颗牛油果开启健康之年</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item mr0">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e11.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">元旦家庭聚会
														美味上演</a></strong>
												<p>家庭派对全攻略，最嗨跨年就这么过！</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item mb0">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e6.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">元旦跨年玩耍技</a></strong>
												<p>元旦在眼前，跨年就要这么玩（wán）</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item mb0">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e12.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">2015圣诞节</a></strong>
												<p>一起预谋一场圣诞大餐吧！</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="ztlist_style1_item mr0 mb0">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img
												src="images/e13.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">科学区分冒菜&amp;麻辣烫</a></strong>
												<p>分不清冒菜和麻辣烫的吃货都是伪吃货</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="ztlist_cur" id="ztlist_cur">
				<span class=""></span> <span class="current"></span> <span class=""></span>
			</div>
		</div>
				<div class="row4" style="height: 500px;">
		<c:forEach begin="0" end="2" items ="${menuList }" var="menuList">
			<div class="col-sm-4">
				<div class='container1' style="margin-left:25px;">
					<div class='column' style="float: left;">
						<div class='post-module'>
							<div class='thumbnail'>
								<img src='${menuList.imgName }'>
								
							</div>
							<div class='post-content'>
								<div class='category2'>${menuList.menupro }</div>
								<h1 class='title'>${menuList.menuname }</h1>
								<h2 class='sub_title'><i1 class="glyphicon glyphicon-fire"><img src="images/fire.png"></i1>&nbsp;${menuList.menugongyi }/${menuList.menukouwei }</h2>
								<p class='description'>${menuList.content }</p>
								<div class='post-meta'>
									<span class='timestamp'>
		            <i class='fa fa-clock-o' style="margin-left:-15px;"><img src="images/time.png"></i>
		            ${menuList.sharing }
		          </span>
									<span class='comments'>
		            <i class='fa fa-comments'style="margin-left:-10px;"><img src="images/message.png"></i>
		            <a href='#'>39 回复</a>
		          </span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>			
		<script type="text/javascript">
				$(window).load(function() {//页面的所有内容加载完毕才执行
					$('.post-module').hover(function() {//用jquery的hover事件
						$(this).find('.description').stop().animate({//用stop方法停止上次动画
							height: 'toggle',
							opacity: 'toggle'
						}, 300);
					});
				});
//				在300毫秒内切换段落的高度和透明度
			</script>
		</div>
		<div class="row9">
			<h1>
				<center>菜单是你的一桌饭</center>
				<span class="paixu_1"> <a href="#" target="_blank"
					style="color: #D31013;">最新</a> <a href="#" target="_blank">&nbsp;最热</a>
					<a href="#" target="_blank">&nbsp;官方菜单</a>
				</span>
			</h1>
		</div>
		<div class="row10">
			<div class="row10_1">
				<a class="title_me">我的菜单</a> <a class="title_right"><strong>${row }</strong>篇菜谱</a>
			</div>
			<div class="row10_2">
				<div class="title_1">
					<a class="tag"><img src="images/time.png">15分钟前</a>
					<div class="tagbox">
						<img src="getOnlineUserHead.action"> <a class="tag1">${user.username }</a>
					</div>
				</div>
				<div class="title_2">
				<c:forEach begin="0" end="4" items ="${menuList }" var="menuList">
					<img src="${menuList.imgName }" style=";height:160px;">
					<%-- <ul class="carge">
						<p>${menuList.menuname }</p>
					</ul> --%>
				</c:forEach>
					
				</div>
			</div>
		</div>
		<div class="row10">
			<div class="row10_1">
				<a class="title_me">我爱</a> <a class="title_right"><strong>10</strong>篇菜谱</a>
			</div>
			<div class="row10_2">
				<div class="title_1">
					<a class="tag"><img src="images/time.png">26分钟前</a>
					<div class="tagbox">
						<img src="images/touxiang_5.gif"> <a class="tag1">幸福背后</a>
					</div>
				</div>
				<div class="title_2">
					<img src="images/v6.jpg" style="margin-left: 8px;">
					<ul class="carge">
						<p>蓝莓山药</p>
					</ul>
					<img src="images/v7.jpg">
					<ul class="carge" style="left: 171px;">
						<p>香菇油菜</p>
					</ul>
					<img src="images/v8.jpg">
					<ul class="carge" style="left: 334px;">
						<p>地三鲜</p>
					</ul>
					<img src="images/v9.jpg">
					<ul class="carge" style="left: 497px;">
						<p>麻辣香锅</p>
					</ul>
					<img src="images/v10.jpg">
					<ul class="carge" style="left: 660px;">
						<p>五香花生米</p>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="row10">
			<div class="row10_1">
				<a class="title_me">我的菜单</a> <a class="title_right"><strong>10</strong>篇菜谱</a>
			</div>
			<div class="row10_2">
				<div class="title_1">
					<a class="tag"><img src="images/time.png">27分钟前</a>
					<div class="tagbox">
						<img src="images/touxiang_11.gif"> <a class="tag1">杰米西西</a>
					</div>
				</div>
				<div class="title_2">
					<img src="images/c1.jpg" style="margin-left: 8px;">
					<ul class="carge">
						<p>炸薯条</p>
					</ul>
					<img src="images/c2.jpg">
					<ul class="carge" style="left: 171px;">
						<p>双皮奶</p>
					</ul>
					<img src="images/c3.jpg">
					<ul class="carge" style="left: 334px;">
						<p>蛋包饭</p>
					</ul>
					<img src="images/c4.jpg">
					<ul class="carge" style="left: 497px;">
						<p>口水鸡</p>
					</ul>
					<img src="images/c5.jpg">
					<ul class="carge" style="left: 660px;">
						<p>麻辣鸡丝</p>
					</ul>
				</div>
			</div>
		</div>
		<div class="row10">
			<div class="row10_1">
				<a class="title_me">蒸</a> <a class="title_right"><strong>10</strong>篇菜谱</a>
			</div>
			<div class="row10_2">
				<div class="title_1">
					<a class="tag"><img src="images/time.png">10:49</a>
					<div class="tagbox">
						<img src="images/touxiang_14.gif"> <a class="tag1">放肆帅</a>
					</div>
				</div>
				<div class="title_2">
					<img src="images/c6.jpg" style="margin-left: 8px;">
					<ul class="carge">
						<p>茶卤鸡</p>
					</ul>
					<img src="images/c7.jpg">
					<ul class="carge" style="left: 171px;">
						<p>五彩碧玉"摆财"包</p>
					</ul>
					<img src="images/c8.jpg">
					<ul class="carge" style="left: 334px;">
						<p>#柏翠#盘龙玉柱蛋糕卷</p>
					</ul>
					<img src="images/c9.jpg">
					<ul class="carge" style="left: 497px;">
						<p>苏式红烧肉</p>
					</ul>
					<img src="images/c10.jpg">
					<ul class="carge" style="left: 660px;">
						<p>西红柿炖牛腩</p>
					</ul>
				</div>
			</div>
		</div>
		<div class="row10">
			<div class="row10_1">
				<a class="title_me">饼</a> <a class="title_right"><strong>10</strong>篇菜谱</a>
			</div>
			<div class="row10_2">
				<div class="title_1">
					<a class="tag"><img src="images/time.png">10:47</a>
					<div class="tagbox">
						<img src="images/touxiang_24.gif"> <a class="tag1">爱，依然</a>
					</div>
				</div>
				<div class="title_2">
					<img src="images/c11.jpg" style="margin-left: 8px;">
					<ul class="carge">
						<p>土豆培根煎饼</p>
					</ul>
					<img src="images/c12.jpg">
					<ul class="carge" style="left: 171px;">
						<p>鲜虾蛋卷</p>
					</ul>
					<img src="images/c13.jpg">
					<ul class="carge" style="left: 334px;">
						<p>肉松鸡蛋饼</p>
					</ul>
					<img src="images/c14.jpg">
					<ul class="carge" style="left: 497px;">
						<p>骨汤土豆泥</p>
					</ul>
					<img src="images/c15.jpg">
					<ul class="carge" style="left: 660px;">
						<p>胡萝卜鸡汤土豆泥</p>
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
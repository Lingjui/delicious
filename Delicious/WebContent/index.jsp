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
		<script>
			$(function() {
				$("#tabs a").mousemove(function(e) {
					$(this).tab('show');
				});
			});
		</script>
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
				<div class="QQ">
					<img src="images/QQ.png">
					<a href='http://i.meishi.cc/connect/index.php?site=qzone'>
						<li>QQ登录</li>
					</a>
				</div>
				<div class="Sina">
					<img src="images/Sina.png">
					<a href='http://i.meishi.cc/connect/index.php?site=sina'>
						<li>微博登录</li>
					</a>
				</div>
				<div class="load">
					<a href='load.jsp'>
						<li>登录</li>
					</a>
				</div>
				<div class="regin">
					<a href='zhuce.jsp'>
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
							<a href="#" class="a1">首页</a>
							<div id="po"></div>
						</li>
						<li><a href="#" class="a2">菜谱大全</a></li>
						<li><a href="#" class="a2">饮食健康</a></li>
						<li>
							<a href="#" class="a1">美食菜单</a>
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
							<a href="/ClassJob/index.html" class="a1">联系我们</a>
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
		<div class="index_zzw" id="index_zzw">
			<div class="index_zzw_main" id="index_zzw_main">
				<div class="zzw_item zzw_item_3" po="3" c="1">
					<h3 class="bbtitles bbtitles_zzw">今日午餐推荐：在喂饱肚子前先喂饱眼睛</h3>
					<ul class="clearfix">
						<li>
							<a target="_blank" href="#" title="糖醋排骨" class="img"><img alt="糖醋排骨" src="/deliciousFile/th1.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="descrip.html" title="糖醋排骨">糖醋排骨</a></h2>
								<strong>教你做出浓稠如胶，滑润似漆的“自来芡”</strong>
								<span><a href="#">补虚养身</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
						<li>
							<a target="_blank" href="#" title="麻婆豆腐" class="img"><img alt="麻婆豆腐" src="images/th2.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="descript.html" title="麻婆豆腐">麻婆豆腐</a></h2>
								<strong>一份麻辣豆腐汁助你轻松调出香辣好滋味</strong>
								<span><a href="#">抗血栓</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
						<li>
							<a target="_blank" href="#" title="三色蚝油菜花" class="img"><img alt="三色蚝油菜花" src="images/th3.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="#" title="三色蚝油菜花">三色蚝油菜花</a></h2>
								<strong>色香味俱全的营养素食，看一眼就食欲满满</strong>
								<span><a href="#">补脾养胃</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
					</ul>
				</div>
				<div class="zzw_item zzw_item_2" po="2" c="5">
					<h3 class="bbtitles bbtitles_zzw">今日下午茶推荐：祝你步步“糕”升</h3>
					<ul class="clearfix">
						<li>
							<a target="_blank" href="#" title="腊味萝卜糕" class="img"><img alt="腊味萝卜糕" src="images/th4.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="#" title="腊味萝卜糕">腊味萝卜糕</a></h2>
								<strong>吃萝卜的季节怎么能错过这道美味小点心</strong>
								<span><a href="#">防癌抗癌</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
						<li>
							<a target="_blank" href="#" title="东北打糕" class="img"><img alt="东北打糕" src="images/th5.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="#" title="东北打糕">东北打糕</a></h2>
								<strong>朝鲜族的特色小吃，喜庆日子里常常有它</strong>
								<span><a href="#">补血利水</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
						<li>
							<a target="_blank" href="#" title="香甜南瓜糕" class="img"><img alt="香甜南瓜糕" src="images/th6.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="#" title="香甜南瓜糕">香甜南瓜糕</a></h2>
								<strong>可爱到不忍下口的南瓜糕，深受孩子欢迎</strong>
								<span><a href="#">润肺益气</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
					</ul>
				</div>
				<div class="zzw_item zzw_item_4" po="4" c="2">
					<h3 class="bbtitles bbtitles_zzw">今日晚餐推荐：白领必学美味快手晚餐</h3>
					<ul class="clearfix">
						<li>
							<a target="_blank" href="" title="虾仁蒸蛋" class="img"><img alt="虾仁蒸蛋" src="images/th7.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="des.jsp" title="虾仁蒸蛋">虾仁蒸蛋</a></h2>
								<strong>饱满的虾仁，嫩滑的蛋羹，滋味鲜极了</strong>
								<span><a href="#">活血</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
						<li>
							<a target="_blank" href="#" title="剁椒带鱼" class="img"><img alt="剁椒带鱼" src="images/th8.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="#" title="剁椒带鱼">剁椒带鱼</a></h2>
								<strong>做鱼时加醋有这么多好处，你都知道吗？</strong>
								<span><a href="#">强心补肾</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
						<li>
							<a target="_blank" href="#" title="白灼菜心" class="img"><img alt="白灼菜心" src="images/th9.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="#" title="白灼菜心">白灼菜心</a></h2>
								<strong>用浓汤宝做碧绿脆嫩风味独特的经典粤菜</strong>
								<span><a href="#">抗衰老</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
					</ul>
				</div>
				<div class="zzw_item zzw_item_1" po="1" c="4">
					<h3 class="bbtitles bbtitles_zzw">今日夜宵推荐：只有方便面最懂懒人的需求</h3>
					<ul class="clearfix">
						<li>
							<a target="_blank" href="#" title="微波炉方便面" class="img"><img alt="微波炉方便面" src="images/th10.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="#" title="微波炉方便面">微波炉方便面</a></h2>
								<strong>用微波炉叮出来的方便面，连刷锅都免了</strong>
								<span><a href="#">补肾</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
						<li>
							<a target="_blank" href="#" title="尖椒酿肉" class="img"><img alt="尖椒酿肉" src="images/P11.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="#" title="尖椒酿肉">尖椒酿肉</a></h2>
								<strong>尖椒不但能给人带来好口感，还含有丰富的维生素</strong>
								<span><a href="#">温中散寒</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
						<li>
							<a target="_blank" href="#" title="劲脆炸鸡翅" class="img"><img alt="劲脆炸鸡翅" src="images/t11.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="#" title="劲脆炸鸡翅">劲脆炸鸡翅</a></h2>
								<strong>方便面的又一开脑洞之作，竟然能炸鸡翅</strong>
								<span><a href="#">温中益气</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
					</ul>
				</div>
				<div class="zzw_item zzw_item_5" po="5" c="3">
					<h3 class="bbtitles bbtitles_zzw">今日早餐推荐：文艺青年的清新派早餐</h3>
					<ul class="clearfix">
						<li>
							<a target="_blank" href="#" title="火腿三明治" class="img"><img alt="火腿三明治" src="images/th14.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="#" title="火腿三明治">火腿三明治</a></h2>
								<strong>三明治中的经典必备款，做法简便味道香</strong>
								<span><a href="#">补充蛋白</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
						<li>
							<a target="_blank" href="#" title="健康水果沙拉" class="img"><img alt="健康水果沙拉" src="images/th12.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="#" title="健康水果沙拉">健康水果沙拉</a></h2>
								<strong>像彩虹一样缤纷的沙拉，让心情也明媚起来</strong>
								<span><a href="#">美容</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
						<li>
							<a target="_blank" href="#" title="营养燕麦豆浆" class="img"><img alt="营养燕麦豆浆" src="images/th13.jpg"></a>
							<div class="c pngFix">
								<h2><a target="_blank" href="#" title="营养燕麦豆浆">营养燕麦豆浆</a></h2>
								<strong>营养丰富的早餐佳饮，膳食纤维促进肠蠕动</strong>
								<span><a href="#">润肠通便</a><em class="arrow pngFix"></em></span>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="maskleft" id="maskleft"></div>
			<div class="maskright" id="maskright"></div>
			<div class="prev_btn prev_btn_1 pngFix" id="zzw_prev_btn"></div>
			<div class="next_btn next_btn_1 pngFix" id="zzw_next_btn"></div>
		</div>
		<script src="js/index.js" type="text/javascript"></script>
		<div class="row">
			<h1><center>1月,寒冬进补保暖</center>
			<span class="paixu"><a href="#" target="_blank">更多菜单 ></a></span></h1>
		</div>
		<div class="row8">
			<div class="ztlist_style1 clearfix" id="ztlist_style1_index">
				<div id="index_cd_leftarrow"></div>
				<div id="index_cd_leftarrow_mask"></div>
				<div id="index_cd_rightarrow"></div>
				<div id="index_cd_rightarrow_mask" style="display: none;"></div>
				<div class="ztlist_style1_item_w" id="ztlist_style1_item_w">
					<div class="ztlist_style1_item_ww" id="ztlist_style1_item_ww" style="margin-left: -988px;">

						<div class="ztlist_style1_item_w1">
							<div class="ztlist_style1_item">
								<ul class="ztlist_style1_item_list clearfix">
									<li class="current clearfix">
										<div class="topzt">
											<a target="_blank" href="#" class="img"><img src="images/e14.jpg"><span class="fixer"></span></a>
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
											<a target="_blank" href="#" class="img"><img src="images/e15.jpg"><span class="fixer"></span></a>
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
											<a target="_blank" href="#" class="img"><img src="images/e16.jpg"><span class="fixer"></span></a>
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
											<a target="_blank" href="#" class="img"><img src="images/e17.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">冬季补气血 7种好食材</a></strong>
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
											<a target="_blank" href="#" class="img"><img src="images/e18.jpg"><span class="fixer"></span></a>
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
											<a target="_blank" href="#" class="img"><img src="images/e19.jpg"><span class="fixer"></span></a>
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
											<a target="_blank" href="#" class="img"><img src="images/e7.jpg"><span class="fixer"></span></a>
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
											<a target="_blank" href="#" class="img"><img src="images/e2.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="http://i.meishi.cc/huodong/zt.php?zt_id=9">冬日食话 营养“菌”衡</a></strong>
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
											<a target="_blank" href="#" class="img"><img src="images/e8.jpg"><span class="fixer"></span></a>
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
											<a target="_blank" href="#" class="img"><img src="images/e3.jpg"><span class="fixer"></span></a>
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
											<a target="_blank" href="#" class="img"><img src="images/e4.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">坚果菜系 冬日美味能量</a></strong>
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
											<a target="_blank" href="#" class="img"><img src="images/e5.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#://i.meishi.cc/discussion/topic.php?gid=9&tid=900686">吃货圣诞『狂吃』攻略</a></strong>
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
											<a target="_blank" href="#" class="img"><img src="images/e9.jpg"><span class="fixer"></span></a>
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
											<a target="_blank" href="#" class="img"><img src="images/e10.jpg"><span class="fixer"></span></a>
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
											<a target="_blank" href="#" class="img"><img src="images/e11.jpg"><span class="fixer"></span></a>
											<div class="c">
												<strong class="title"><a target="_blank" href="#">元旦家庭聚会 美味上演</a></strong>
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
											<a target="_blank" href="#" class="img"><img src="images/e6.jpg"><span class="fixer"></span></a>
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
											<a target="_blank" href="#" class="img"><img src="images/e12.jpg"><span class="fixer"></span></a>
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
											<a target="_blank" href="#" class="img"><img src="images/e13.jpg"><span class="fixer"></span></a>
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
				<span class=""></span>
				<span class="current"></span>
				<span class=""></span>
			</div>
		</div>
		<div class="row">
			<h1><center>1月,冬季多温补</center>
			<span class="paixu"><a href="#" target="_blank">更多菜单 ></a></span></h1>
		</div>
		<div class="row2">
			<div class="col-xs-12 col-sm-12">
				<ul id="tabs">
					<li class="active" id="act"><a href="#tw1" data-toggle="tab">水果</a></li>
					<li><a href="#tw2" data-toggle="tab">蔬菜</a></li>
					<li><a href="#tw3" data-toggle="tab">五谷</a></li>
					<li><a href="#tw4" data-toggle="tab">生鲜</a></li>
				</ul>
				<div class="tab-content">
					<div id='tw1' class="tab-pane fade in active">
						<div class="row3">
							<div class="col-sm-2">
								<img src="images/z1.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>梨</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/z2.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>山楂</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/z3.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>橙子</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/z4.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>苹果</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/z5.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>猕猴桃</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/z6.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>甘蔗</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/z7.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>柚子</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/z8.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>橘子</p>
								</div>
							</div>
						</div>
					</div>
					<div id='tw2' class="tab-pane fade">
						<div class="row3">
							<div class="col-sm-2">
								<img src="images/y1.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>冬笋</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/y2.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>芹菜</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/y3.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>红萝卜</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/y4.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>大白菜</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/y5.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>莴笋</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/y6.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>花菜</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/y7.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>藕</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/y8.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>红薯</p>
								</div>
							</div>
						</div>
					</div>
					<div id='tw3' class="tab-pane fade">
						<div class="row3">
							<div class="col-sm-2">
								<img src="images/x1.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>板栗</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/x2.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>黑豆</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/x3.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>核桃</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/x4.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>玉米渣</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/x5.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>燕麦</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/x6.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>糯米</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/x7.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>松子</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/x8.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>开心果（熟）</p>
								</div>
							</div>
						</div>
					</div>
					<div id='tw4' class="tab-pane fade">
						<div class="row3">
							<div class="col-sm-2">
								<img src="images/w1.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>猪小排</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/w2.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>虾</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/w3.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>羊肉</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/w4.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>带鱼</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/w5.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>牛肉</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/w6.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>鱿鱼</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/w7.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>腊肉</p>
								</div>
							</div>
							<div class="col-sm-2">
								<img src="images/w8.jpg" class="img-thumbnail" />
								<div class="carousel-caption">
									<span id="huikuai">	
										</span>
									<p>鸡</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<h1><center>菜单是你的一桌饭</center>
			<span class="paixu"><a href="#" target="_blank">更多菜单 ></a></span></h1>
		</div>
		<div class="row4">
			<div class="col-sm-4">
				<div class='container1'>
					<div class='column' style="float: left;">
						<div class='post-module'>
							<div class='thumbnail'>
								<img src='images/t1.jpg'>
							</div>
							<div class='post-content'>
								<div class='category2'>防治贫血</div>
								<h1 class='title'>京香鸭蛋</h1>
								<h2 class='sub_title'><i1 class="glyphicon glyphicon-fire"><img src="images/fire.png"></i1>&nbsp;炒/酱香味</h2>
								<p class='description'>炒鸭蛋的时候，加入适量的水可以使炒出的蛋块更嫩，加入几滴白酒可以使鸭蛋更蓬松，也可以去掉蛋腥味，一般一个鸭蛋一汤匙水就够了，依次累加。</p>
								<div class='post-meta'>
									<span class='timestamp'>
		            <i class='fa fa-clock-o'><img src="images/time.png"></i>
		            6 分钟前
		          </span>
									<span class='comments'>
		            <i class='fa fa-comments'><img src="images/message.png"></i>
		            <a href='#'>39 回复</a>
		          </span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class='container1'>
					<div class='column'>
						<div class='post-module'>
							<div class='thumbnail'>
								<img src='images/t2.jpg'>
							</div>
							<div class='post-content'>
								<div class='category2'>储存热能</div>
								<h1 class='title'>豆芽面筋泡</h1>
								<h2 class='sub_title'><i1 class="glyphicon glyphicon-fire"><img src="images/fire.png"></i1>&nbsp;煮/咸鲜味</h2>
								<p class='description'>“油面筋除了涮火锅吃，还可以用来做菜，里面塞入满满的肉馅，放入红烧汁中煮熟，想想都觉得诱人，厨房新手也可轻松搞定。”</p>
								<div class='post-meta'>
									<span class='timestamp'>
		            <i class='fa fa-clock-o'><img src="images/time.png"></i>
		            10分钟前
		          </span>
									<span class='comments'>
		            <i class='fa fa-comments'><img src="images/message.png"></i>
		            <a href='#'>229 回复</a>
		          </span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class='container1'>
					<div class='column' style="float: right;">

						<div class='post-module'>
							<div class='thumbnail'>
								<img src='images/t3.jpg'>
							</div>
							<div class='post-content'>
								<div class='category2'>温润养胃</div>
								<h1 class='title'>萝卜丝饼</h1>
								<h2 class='sub_title'><i1 class="glyphicon glyphicon-fire"><img src="images/fire.png"></i1>&nbsp;煎/葱香味</h2>
								<p class='description'>饼子的折叠方法很重要， 先要将包馅从顶端开始往下包， 包时要一下向左折，下一步就向右叠，这样才能将馅料完全包裹住；还要边包边拉一下，这样扯过的面皮会很薄，层数也会很多。</p>
								<div class='post-meta'>
									<span class='timestamp'>
		            <i class='fa fa-clock-o'><img src="images/time.png"></i>
		            16 分钟前
		          </span>
									<span class='comments'>
		            <i class='fa fa-comments'><img src="images/message.png"></i>
		            <a href='#'>161 回复</a>
		          </span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class='container1'>
					<div class='column' style="float: left;">
						<div class='post-module'>
							<div class='thumbnail'>
								<img src='images/t5.jpg'>
							</div>
							<div class='post-content'>
								<div class='category1'>家常川菜</div>
								<h1 class='title'>口水鸡</h1>
								<h2 class='sub_title'><i1 class="glyphicon glyphicon-fire"><img src="images/fire.png"></i1>&nbsp;拌/麻辣味</h2>
								<p class='description'>这东东确实是个很好吃的菜肴，开胃醒神，不能吃太辣，可以适当地减低点辣度，适合自己的才是最好的</p>
								<div class='post-meta'>
									<span class='timestamp'>
		            <i class='fa fa-clock-o'><img src="images/time.png"></i>
		            6 分钟前
		          </span>
									<span class='comments'>
		            <i class='fa fa-comments'><img src="images/message.png"></i>
		            <a href='#'>39 回复</a>
		          </span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class='container1'>
					<div class='column'>
						<div class='post-module'>
							<div class='thumbnail'>
								<img src='images/t6.jpg'>
							</div>
							<div class='post-content'>
								<div class='category1'>家常川菜</div>
								<h1 class='title'>椒麻牛肉</h1>
								<h2 class='sub_title'><i1 class="glyphicon glyphicon-fire"><img src="images/fire.png"></i1>&nbsp;拌/麻辣味</h2>
								<p class='description'>以往都是在川菜馆里才吃到的，一碟份量不大的凉拌牛肉，居然收个40-50元的，没伸几筷子就搞定了，总是吃不过瘾，还是咱自己做吧</p>
								<div class='post-meta'>
									<span class='timestamp'>
		            <i class='fa fa-clock-o'><img src="images/time.png"></i>
		            11分钟前
		          </span>
									<span class='comments'>
		            <i class='fa fa-comments'><img src="images/message.png"></i>
		            <a href='#'>70 回复</a>
		          </span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class='container1'>
					<div class='column' style="float: right;">
						<div class='post-module'>
							<div class='thumbnail'>
								<img src='images/t7.jpg'>
							</div>
							<div class='post-content'>
								<div class='category1'>家常川菜</div>
								<h1 class='title'>三蔬小炒肉丁</h1>
								<h2 class='sub_title'><i1 class="glyphicon glyphicon-fire"><img src="images/fire.png"></i1>&nbsp;炒/糖醋味</h2>
								<p class='description'>一个人的饭食其实也能营养丰富，有菜有肉有米饭内容真的是很丰富，谁说一个人吃饭就要对付了？这道菜我加糖醋汁，估计没人会说不好吃的~</p>
								<div class='post-meta'>
									<span class='timestamp'>
		            <i class='fa fa-clock-o'><img src="images/time.png"></i>
		            30分钟前
		          </span>
									<span class='comments'>
		            <i class='fa fa-comments'><img src="images/message.png"></i>
		            <a href='#'>132回复</a>
		          </span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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
		<div class="clear">

		</div>
		<div class="row">
			<h1><center>健康新闻</center>
			<!--_blank,_self,_parent,_top,framename,-->
			<span class="paixu"><a href="#" target="_blank">更多健康资讯 ></a></span></h1>
		</div>
		<div class="row5 clearfix">
			<div class="col-sm-6">
				<div class="div1 mb20">
					<h2><a target="_blank" href="#">食品安全</a><em class="arrow"></em></h2>
					<ul class="index_healthitem">
						<li class="">
							<a target="_blank" href="#" class="img"><img src="images/b3.jpg"></a>
							<h3><a target="_blank" href="#">你家餐桌有这些有毒食物吗？</a></h3></li>
						<li class="current">
							<a target="_blank" href="#" class="img"><img src="images/b1.jpg"></a>
							<h3><a target="_blank" href="#">苹果打蜡致癌？真不一定</a></h3></li>
						<li class="">
							<a target="_blank" href="#" class="img"><img src="images/b2.jpg"></a>
							<h3><a target="_blank" href="#">未煮熟的豆浆对人体有什么伤害？</a></h3></li>
					</ul>
				</div>
				<div class="div1 mb20 mr0">
					<h2><a target="_blank" href="#">文化典故</a><em class="arrow"></em></h2>
					<ul class="index_healthitem">
						<li class="current">
							<a target="_blank" href="#" class="img"><img src="images/h4.jpg"></a>
							<h3><a target="_blank" href="#">2015谷歌搜索排名前十美食</a></h3></li>
						<li>
							<a target="_blank" href="#" class="img"><img src="images/h5.jpg"></a>
							<h3><a target="_blank" href="#">好吃不过饺子 各国饺子大盘点</a></h3></li>
						<li>
							<a target="_blank" href="#" class="img"><img src="images/h6.jpg"></a>
							<h3><a target="_blank" href="#">“六个核桃”里到底有几个核桃?</a></h3></li>
					</ul>
				</div>
				<div class="div1 mb0">
					<h2><a target="_blank" href="#/">健康指南</a><em class="arrow"></em></h2>
					<ul class="index_healthitem">
						<li class="current">
							<a target="_blank" href="#" class="img"><img src="images/b4.jpg"></a>
							<h3><a target="_blank" href="#">“平民营养学”食谱走红</a></h3></li>
						<li class="">
							<a target="_blank" href="#" class="img"><img src="images/b5.jpg"></a>
							<h3><a target="_blank" href="#">健康晚餐三要素，早吃素吃少吃！</a></h3></li>
						<li class="">
							<a target="_blank" href="#" class="img"><img src="images/b6.jpg"></a>
							<h3><a target="_blank" href="#">这5种食物是天然的“安眠药”</a></h3></li>
					</ul>
				</div>
				<div class="div1 mr0 mb0">
					<h2><a target="_blank" href="#">新鲜资讯</a><em class="arrow"></em></h2>
					<ul class="index_healthitem">
						<li class="">
							<a target="_blank" href="#" class="img"><img src="images/h1.jpg"></a>
							<h3><a target="_blank" href="#">面包机横评</a></h3></li>
						<li>
							<a target="_blank" href="#" class="img"><img src="images/h2.jpg"></a>
							<h3><a target="_blank" href="#">大雪纷飞的日子里你最想吃什么</a></h3></li>
						<li class="current">
							<a target="_blank" href="#" class="img"><img src="images/h3.jpg"></a>
							<h3><a target="_blank" href="#">恒大兴安 “陌上金莲”引领高端泰</a></h3></li>
					</ul>
				</div>
			</div>
			<script>
				$(".index_healthitem li").hover(function() {
					$(this).siblings().removeClass("current");//去除所有同胞元素的current样式
					$(this).addClass("current"); // 设置被点击元素为current样式
				}, function() {});
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
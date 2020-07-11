<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>    

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Sots - Premium site template for travel agencies, hotels and restaurant listing.">
    <meta name="author" content="Ansonika">
    <title>Sots | 首页</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="${ctx }/static/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="${ctx }/static/img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${ctx }/static/img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${ctx }/static/img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${ctx }/static/img/apple-touch-icon-144x144-precomposed.png">

    <!-- BASE CSS -->
    <link href="${ctx }/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx }/static/css/style.css" rel="stylesheet">
	<link href="${ctx }/static/css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="${ctx }/static/css/custom.css" rel="stylesheet">
	
    <link href="${ctx }/static/js/modernizr_slider.js" rel="stylesheet">

</head>

<body>
		
	<div id="page">
		
	<header class="header menu_fixed">
		<div id="preloader"><div data-loader="circle-side"></div></div><!-- /Page Preload -->
		<div id="logo">
			<a href="${ctx }/Index">
				<img src="${ctx }/static/img/logo.png" width="150" height="36" data-retina="true" alt="" class="logo_normal">
				<img src="${ctx }/static/img/logo_sticky.png" width="150" height="36" data-retina="true" alt="" class="logo_sticky">
			</a>
		</div>
		<ul id="top_menu">
			<li>
				<c:choose>
					<c:when test="${empty loginUser.userName}">
						<a href="${ctx }/inlogin" class="cart-menu-btn" title="[未登录]点击登录"></a>
					</c:when>
					<c:otherwise>
						<a href="${ctx }/cart/getCart?hid=-1&pid=-1" class="cart-menu-btn" title="Cart"></a>
					</c:otherwise>
				</c:choose>
			</li>
			<li>
				<c:choose>
					<c:when test="${empty loginUser.userName}">
						<a href="${ctx }/inlogin" class="login" title="[未登录]点击登录">点击登录</a>
					</c:when>
					<c:otherwise>
						<a href="${ctx }/loginOut" class="login" title="[${loginUser.userName }]点击退出">退出</a>
					</c:otherwise>
				</c:choose>
			</li>
			<li>
				<c:choose>
					<c:when test="${empty loginUser.userName}">
						<a href="${ctx }/inlogin" class="wishlist_bt_top" title="[未登录]点击登录">点击登录</a>
					</c:when>
					<c:otherwise>
						<a href="${ctx }/wish/getWish" class="wishlist_bt_top" title="心愿单">心愿单</a>
					</c:otherwise>
				</c:choose>
			</li>
		</ul>
		<!-- /top_menu -->
		<a href="#menu" class="btn_mobile">
			<div class="hamburger hamburger--spin" id="hamburger">
				<div class="hamburger-box">
					<div class="hamburger-inner"></div>
				</div>
			</div>
		</a>
		<nav id="menu" class="main-menu">
			<ul>
				<li>
					<span><a href="${ctx }/Index">首页</a></span>
				</li>
				<li>
					<span><a href="${ctx }/getProduct?op=0&yid=1">景点</a></span>
				</li>
				<li>
					<span><a href="${ctx }/getProduct?op=0&yid=2">旅馆</a></span>
				</li>
				<li>
					<span><a href="${ctx }/getProduct?op=0&yid=3">餐厅</a></span>
				</li>
				<li><span><a href="${ctx }/blog/getBlog">博客</a></span>
					<%-- <ul>
						<li><a href="${ctx }/404.jsp">404 Error page</a></li>
					</ul> --%>
				</li>
				<li><span><a href="${ctx }/About">关于</a></span>
				</li>
				<li><span><a href="#">其他</a></span>
					<ul>
						<%-- <li><a href="${ctx }/About">About</a></li> --%>
						<li><a href="${ctx }/Faq">旅游手册</a></li>
						<li><a href="${ctx }/wish/getWish">心愿单</a></li>
						<li><a href="${ctx }/Contacts">联系我们</a></li>
						<li><a href="${ctx }/inlogin">登陆</a></li>
						<li><a href="${ctx }/Register">注册</a></li>
					</ul>
				</li>
				
			</ul>
		</nav>

	</header>
	<!-- /header -->
	
<main>
		<section class="slider">
			<div id="slider" class="flexslider">
				<ul class="slides">
					<li>
						<img src="${ctx }/static/img/flex_slides/slide_1.jpg" alt="">
						<div class="meta">
							<h3>三亚，一个永远不会改变的城市</h3>
							<div class="info">
								<p><strong>200</strong> 酒店 - <strong>150</strong> 餐厅</p>
							</div>
							<a href="#0" class="btn_1">阅读更多</a>
						</div>
					</li>
					<li>
						<img src="${ctx }/static/img/flex_slides/slide_2.jpg" alt="">
						<div class="meta">
							<h3>椰梦长廊，最具吸引力的目的地</h3>
							<div class="info">
								<p><strong>40</strong> 酒店 - <strong>21</strong> 餐厅</p>
							</div>
							<a href="#0" class="btn_1">阅读更多</a>
						</div>
					</li>
					<li>
						<img src="${ctx }/static/img/flex_slides/slide_3.jpg" alt="">
						<div class="meta">
							<h3>亚龙湾，传统与文化</h3>
							<div class="info">
								<p><strong>35</strong> 酒店 - <strong>23</strong> 餐厅</p>
							</div>
							<a href="#0" class="btn_1">阅读更多</a>
					</li>
					<li>
						<img src="${ctx }/static/img/flex_slides/slide_4.jpg" alt="">
						<div class="meta">
							<h3>大东海，独特的海滩和地平线</h3>
							<div class="info">
								<p><strong>41</strong> 酒店 - <strong>30</strong> 餐厅</p>
							</div>
							<a href="#0" class="btn_1">阅读更多</a>
						</div>
					</li>
					<li>
						<img src="${ctx }/static/img/flex_slides/slide_5.jpg" alt="">
						<div class="meta">
							<h3>呀诺达热带雨林, 一个美丽迷人的自然公园</h3>
							<div class="info">
								<p><strong>43</strong> 酒店 - <strong>30</strong> 餐厅</p>
							</div>
							<a href="#0" class="btn_1">阅读更多</a>
						</div>
					</li>
				</ul>
				<div id="icon_drag_mobile"></div>
			</div>
			<div id="carousel_slider_wp">
				<div id="carousel_slider" class="flexslider">
					<ul class="slides">
						<li>
							<img src="${ctx }/static/img/flex_slides/slide_1_thumb.jpg" alt="">
							<div class="caption">
								<h3> 三亚<span>海南</span></h3>
								<small>等你哦<strong id="weather" class="weather"></strong></small>
							</div>
						</li>
						<li>
							<img src="${ctx }/static/img/flex_slides/slide_2_thumb.jpg" alt="">
							<div class="caption">
								<h3>椰梦长廊 <span>植物园林</span></h3>
								<small>70元/人<strong id="weather_2" class="weather"></strong></small>
							</div>
						</li>
						<li>
							<img src="${ctx }/static/img/flex_slides/slide_3_thumb.jpg" alt="">
							<div class="caption">
								<h3>亚龙湾 <span>热带滨海</span></h3>
								<small>95元/人<strong id="weather_3" class="weather"></strong></small>
							</div>
						</li>
						<li>
							<img src="${ctx }/static/img/flex_slides/slide_4_thumb.jpg" alt="">
							<div class="caption">
								<h3>大东海 <span>南天一柱</span></h3>
								<small>80元/人<strong id="weather_4" class="weather"></strong></small>
							</div>
						</li>
						<li>
							<img src="${ctx }/static/img/flex_slides/slide_5_thumb.jpg" alt="">
							<div class="caption">
								<h3>呀诺达热带雨林 <span>雨林观光</span></h3>
								<small>150元/人 <strong id="weather_5" class="weather"></strong></small>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</section>
		
		<div class="container-fluid margin_80_0">
			<div class="main_title_2">
				<span><em></em></span>
				<h2>我们的热门景点</h2>
				<p>不光是景区，酒店也是三亚的一大风景名胜</p>
			</div>
			<div id="reccomended" class="owl-carousel owl-theme">
				<c:forEach items="${list }" var="i" ><!-- begin="0" end="5" -->
				<div class="item">
					<div class="box_grid">
						<figure>
							<c:choose>
								<c:when test="${empty loginUser.userName}">
									<a href="${ctx }/inlogin" class="wish_bt" title="[未登录]点击登录"></a> 
								</c:when>
								<c:otherwise>
									<a href="#" class="wish_bt" id="${res.pid}">
								</a>
								</c:otherwise>
							</c:choose>
							<a href="${ctx }/Detail?pid=${i.pid}&yid=${i.yid}&proCode=${i.proCode}"><img src="${ctx }/${i.proPhoto }" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>了解更多</span></div></a>
							<small>${i.proAddress }</small>
						</figure>
						<div class="wrapper">
							<h3><a href="${ctx }/Detail?pid=${i.pid}&yid=${i.yid}&proCode=${i.proCode}">${i.proName }</a></h3>
							<p>${i.proDescrible }</p>
							<span class="price"> <strong>￥${i.proPrice }</strong> 元 /每人</span>
						</div>
						<ul>
							<li><i class="icon_clock_alt"></i>${i.proNumViews }浏览数</li>
							<li><div class="score"><span>${i.proType }<em>打 ${i.proDiscount }折</em></span><strong>hi</strong></div></li>
						</ul>
					</div>
				</div>
				</c:forEach>
			</div>
			>
				<!-- /item -->
			
			<!-- </div> -->
			<!-- /carousel -->
			<div class="container">
				<p class="btn_home_align"><a href="${ctx }/getProduct?op=0&yid=1" class="btn_1 rounded">查看所有</a></p>
			</div>
			<!-- /container -->
			<hr class="large">
		</div>
		<!-- /container -->
		
		<div class="container-fluid margin_30_95 pl-lg-5 pr-lg-5">
			<section class="add_bottom_45">
				<div class="main_title_3">
					<span><em></em></span>
					<h2>住宿和酒店</h2>
					<p>各种舒适的酒店屹立在三亚的每个角落</p>
				</div>
				<div class="row">
					
					<!-- /grid_item -->
					<c:forEach items="${list2}" var="i" begin="0" end="3">
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="${ctx }/Detail?pid=${i.pid}&yid=${i.yid}&proCode=${i.proCode}" class="grid_item">
							<figure>
								<div class="score"><strong>7.9</strong></div>
								<img src="${i.proPhoto }" class="img-fluid" alt="">				
								<div class="info">
									<div class="cat_star"><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i></div>
									
									<h3>${i.proName}</h3>
								</div>
							</figure>
						</a>
					</div>
					</c:forEach>
				
				<!-- /row -->
				<a href="${ctx }/getProduct?op=0&yid=2"><strong>查看全部  <i class="arrow_carrot-right"></i></strong></a>
			</section>
			<!-- /section -->
			
			<section>
				<div class="main_title_3">
					<span><em></em></span>
					<h2>酒店餐厅和热门小吃</h2>
					<p>三亚的风味小吃类型多样口味独特</p>
				</div>
				<div class="row">
					<c:forEach items="${list3}" var="i" begin="0" end="3">
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="${ctx }/Detail?pid=${i.pid}&yid=${i.yid}&proCode=${i.proCode}" class="grid_item">
							<figure>
								<div class="score"><strong>7.9</strong></div>
								<img src="${i.proPhoto }" class="img-fluid" alt="">				
								<div class="info">
									<div class="cat_star"><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i></div>
									
									<h3>${i.proName}</h3>
								</div>
							</figure>
						</a>
					</div>
					</c:forEach>
				</div>
				<!-- /row -->
				<a href="${ctx }/getProduct?op=0&yid=3"><strong>查看全部  <i class="arrow_carrot-right"></i></strong></a>
			</section>
			<!-- /section -->
		</div>
		<!-- /container -->

		<div class="bg_color_1">
			<div class="container margin_80_55">
				<div class="main_title_2">
					<span><em></em></span>
				
					<h3>新闻和事件</h3>
					
					<p>三亚的个种有趣事件和美丽风景都记录起来</p>
				</div>
				<div class="row">
				<c:forEach items="${blist }" var="x" begin="0" end="3">
					<div class="col-lg-6">
						<a class="box_news" href="${ctx }/blog/getBlogPost?blogId=${x.blogId}">
							<figure><img src="${x.blogCommentPhoto }" alt="">
								<figcaption><strong>28</strong>Dec</figcaption>
							</figure>
							<ul>
								<li>${x.user.userName }</li>
								<li><f:formatDate value="${x.createTime }" pattern="yyyy-MM-dd"/></li>
							</ul>
							<h4>${x.blogTitle }</h4>
							<p>${x.blogComment }</p>
						</a>
					</div>
					</c:forEach>
					<!-- /box_news -->
					
				</div>
				<!-- /row -->
				<p class="btn_home_align"><a href="${ctx }/blog/getBlog" class="btn_1 rounded">查看所有新闻</a></p>
			</div>
			<!-- /container -->
		</div>
		<!-- /bg_color_1 -->

		<div class="call_section">
			<div class="container clearfix">
				<div class="col-lg-5 col-md-6 float-right wow" data-wow-offset="250">
					<div class="block-reveal">
						<div class="block-vertical"></div>
						<div class="box_1">
							<h3>祝您旅途愉快</h3>
							<p><samp>&nbsp;&nbsp;&nbsp;&nbsp;</samp>三亚是具有热带海滨风景特色的国际旅游城市 ，又被称为“东方夏威夷”。2016年6月14日，中国科学院对外发布《中国宜居城市研究报告》，三亚宜居指数在全国40个城市中位居第三。2016年9月，三亚入选“中国地级市民生发展100强”。</p>
							<a href="#0" class="btn_1 rounded">阅读更多</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/call_section-->
	</main>
	<!-- /main -->

	<footer>
		<div class="container margin_60_35">
			<div class="row">
				<div class="col-lg-5 col-md-12 p-r-5">
					<p><img src="${ctx }/static/img/logo.png" width="150" height="36" data-retina="true" alt=""></p>
					<p>关于旅行，每个喜欢旅行的人都有自己的看法。或许是出去走走看看，去感受异国异地的风情文化；
					或许是在不顺心的时候去旅行放松自己，感受不一样的人生，也会对人生产生更多的感悟。所以，旅行的意义究竟是什么，我们一起来探求一下。</p>
					<div class="follow_us">
						<ul>
							<li>跟着我们</li>
							<li><a href="#0"><i class="ti-facebook"></i></a></li>
							<li><a href="#0"><i class="ti-twitter-alt"></i></a></li>
							<li><a href="#0"><i class="ti-google"></i></a></li>
							<li><a href="#0"><i class="ti-pinterest"></i></a></li>
							<li><a href="#0"><i class="ti-instagram"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 ml-lg-auto">
					<h5>有用的链接</h5>
					<ul class="links">
						<li><a href="${ctx }/about.jsp">关于</a></li>
						<li><a href="login.jsp">登录</a></li>
						<li><a href="${ctx }/register.jsp">注册</a></li>
						<li><a href="${ctx }/blog/getBlog">趣闻 &amp; 事件</a></li>
						<li><a href="${ctx }/contacts.jsp">联系</a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-6">
					<h5>与我们取得联系</h5>
					<ul class="contacts">
						<li><a href="tel://61280932400"><i class="ti-mobile"></i> + 61 23 8093 3400</a></li>
						<li><a href="mailto:SanYa@Sots.com"><i class="ti-email"></i> SanYa@Sots.com</a></li>
					</ul>
				</div>
			</div>
			<!--/row-->
			<hr>
		</div>
	</footer>
	<!--/footer-->
	</div>
	<!-- page -->
	
	<!-- Sign In Popup -->
	<div id="sign-in-dialog" class="zoom-anim-dialog mfp-hide">
		<div class="small-dialog-header">
			<h3>注册</h3>
		</div>
		<form>
			<div class="sign-in-wrapper">
				<!-- <a href="#0" class="social_bt facebook">Login with Facebook</a>
				<a href="#0" class="social_bt google">Login with Google</a>
				<div class="divider"><span>或者</span></div> -->
				<div class="form-group">
					<label>邮件</label>
					<input type="email" class="form-control" name="email" id="email">
					<i class="icon_mail_alt"></i>
				</div>
				<div class="form-group">
					<label>密码</label>
					<input type="password" class="form-control" name="password" id="password" value="">
					<i class="icon_lock_alt"></i>
				</div>
				<div class="clearfix add_bottom_15">
					<div class="checkboxes float-left">
						<label class="container_check">了解更多
						  <input type="checkbox">
						  <span class="checkmark"></span>
						</label>
					</div>
					<div class="float-right mt-1"><a id="forgot" href="javascript:void(0);">忘记密码?</a></div>
				</div>
				<div class="text-center"><input type="submit" value="Log In" class="btn_1 full-width"></div>
				<div class="text-center">
					没有账户? <a href="${ctx }/register.jsp">注册</a>
				</div>
				<div id="forgot_pw">
					<div class="form-group">
						<label>请在下面确认登录电子邮件</label>
						<input type="email" class="form-control" name="email_forgot" id="email_forgot">
						<i class="icon_mail_alt"></i>
					</div>
					<p>您将收到一封电子邮件，其中包含允许您将密码重置为新的首选密码的链接.</p>
					<div class="text-center"><input type="submit" value="Reset Password" class="btn_1"></div>
				</div>
			</div>
		</form>
		<!--form -->
	</div>
	<!-- /Sign In Popup -->
	
	<div id="toTop"></div><!-- Back to top button -->
	
	<!-- COMMON SCRIPTS -->
    <script src="${ctx }/static/js/jquery-2.2.4.min.js"></script>
    <script src="${ctx }/static/js/common_scripts.js"></script>
    <script src="${ctx }/static/js/main.js"></script>
	<script src="${ctx }/static/assets/validate.js"></script>
	
	<!-- FlexSlider -->
	<script defer src="${ctx }/static/js/jquery.flexslider.js"></script>
	<script>
		$(window).load(function() {
			'use strict';
			$('#carousel_slider').flexslider({
				animation: "slide",
				controlNav: false,
				animationLoop: false,
				slideshow: false,
				itemWidth: 280,
				itemMargin: 25,
				asNavFor: '#slider'
			});
			$('#carousel_slider ul.slides li').on('mouseover', function() {
				$(this).trigger('click');
			});
			$('#slider').flexslider({
				animation: "fade",
				controlNav: false,
				animationLoop: false,
				slideshow: false,
				sync: "#carousel_slider",
				start: function(slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	 <script defer src="${ctx }/static/js/weather_home.js"></script>
	
	<!-- 添加商品到心愿表 -->
	<!-- 添加商品到心愿表 -->
	<script >
		$('.wish_bt').on('click', function (c) {
			var pid=$(this).attr('id');
			$.post("${ctx }/wish/addWish",{"pid":pid},function(data){
				if(data.result > 0){
					
				}else{
					
				}	
			});
		}); 
	</script>
	
</body>
</html>
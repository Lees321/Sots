﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>    

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Sots - Premium site template for travel agencies, hotels and restaurant listing.">
    <meta name="author" content="Ansonika">
    <title>Sots | Premium site template for travel agencies, hotels and restaurant listing.</title>

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
	
	<!-- pageInfo -->
	<link href="${ctx }/static/css/page.css" rel="stylesheet">
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
		
		<section class="hero_in restaurants">
			<div class="wrapper">
				<div class="container">
					<h1 class="fadeInUp"><span></span>
						<c:choose>
							<c:when test="${yid == 1}">风景区</c:when>
							<c:when test="${yid == 2}">酒店区</c:when>
							<c:otherwise>餐厅区</c:otherwise>
						</c:choose>
						
						<!-- Paris Eat &amp; Drink grid -->
					</h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->
		
		<div class="filters_listing sticky_horizontal">
			<div class="container">
				<ul class="clearfix">
					<li>
						<div class="switch-field">
							<input type="radio" id="all" name="listing_filter" value="all" checked data-filter="*" class="selected">
							<label for="all"><a href="${ctx }/getProduct?op=0&yid=${yid}">All</a></label>
							<input type="radio" id="popular" name="listing_filter" value="popular" data-filter=".popular">
							<label for="popular"><a href="${ctx }/getProduct?op=0&yid=${yid}&proType=Popular">Popular</a></label>
							<input type="radio" id="latest" name="listing_filter" value="latest" data-filter=".latest">
							<label for="latest"><a href="${ctx }/getProduct?op=0&yid=${yid}&proType=Latest">Latest</a></label>
						</div>
					</li>
					<li>
						<div class="layout_view">
							<a href="#" class="active"><i class="icon-th"></i></a>
							<a href="${ctx }/getProduct?op=1&yid=${yid}"><i class="icon-th-list"></i></a>
						</div>
					</li>
					<li>
						<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
					</li>
				</ul>
			</div>
			<!-- /container -->
		</div>
		<!-- /filters -->
		
		<div class="collapse" id="collapseMap">
			<div id="map" class="map"></div>
		</div>
		<!-- End Map -->

		<div class="container margin_60_35">
			<div class="col-lg-12">
			<form action="getProduct" >
				<div class="row no-gutters custom-search-input-2 inner">
					<div class="col-lg-4">
						<div class="form-group">
							<input class="form-control" type="text" placeholder="请输入商品名称"  name="proName">
							<input type="hidden"  name="op" value="${op }">
							<input type="hidden"  name="yid" value="${yid }">
							<i class="icon_search"></i>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="form-group">
							<input class="form-control" type="text" placeholder="Where" name="proAddress">
							<i class="icon_pin_alt"></i>
						</div>
					</div>
					<div class="col-lg-3">
						<select class="wide" name="proType">
							<option value="">选择</option>
							<c:forEach items="${typepro }" var="pro">
								<option value="${pro.proType }">${pro.proType }</option>
							</c:forEach>
							<!-- <option>All Categories</option>	
							<option>Restaurants</option>
							<option>Bars</option>
							<option>Coffee Bars</option> -->
						</select>
					</div>
					<div class="col-lg-2">
						<input type="submit" class="btn_search" value="Search">
					</div>
				</div>
				</form>
				<!-- /row -->
			</div>
			<!-- /custom-search-input-2 --><!-- restaurant-detail.jsp  ${ctx }/wish?pid=${res.pid} -->
			
			<div class="row">
				<c:forEach items="${pageInfo.list }" var="res">
					<div class="col-xl-4 col-lg-6 col-md-6">
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
								
								<!-- onclick="addWish()" -->
								<a href="${ctx }/Detail?pid=${res.pid}&yid=${res.yid}&proCode=${res.proCode}"><img src="${ctx }/${res.proPhoto }" class="img-fluid" alt="" width="800" height="533"/><div class="read_more"><span>了解更多</span></div></a>
								<small>${res.proAddress }</small>
							</figure>
							<div class="wrapper">
								<h3><a href="${ctx }/Detail?pid=${res.pid}&yid=${res.yid}&proCode=${res.proCode}">${res.proName }</a></h3>
								<p>${res.proDescrible }</p>
								<span class="price"><strong>￥${res.proValuation }</strong></span>
							</div>
							<ul>
								<li><i class="ti-eye"></i> ${res.proNumViews }浏览数</li>
								<li><div class="score"><span>${res.proType }<em>打 ${res.proDiscount }折</em></span><strong>hi<%-- ${res.points } --%></strong></div></li>
							</ul>
						</div>
					</div>
				</c:forEach>
				<!-- /box_grid -->
			</div>
			
			<!--分页-->
			<nav style="text-align: center;">
	           <ul class="pagination modal-1">
				  	<li>
		                <a href="${ctx }/getProduct?op=0&yid=${yid}&currpage=${pageInfo.pageNum-1}" class="prev">
		                   &laquo;
		                </a>
					</li>
		            <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
		               	<c:if test="${page_Num == pageInfo.pageNum }">
		                	<li><a href="#" class="active">${ page_Num}</a></li>
		                </c:if>
		                <c:if test="${page_Num != pageInfo.pageNum }">
		                    <li>
		                    	<a href="${ctx }/getProduct?op=0&yid=${yid}&currpage=${ page_Num}">${ page_Num}</a>
		                    </li>
		                </c:if>
		            </c:forEach>
		            <li>
		                <a href="${ctx }/getProduct?op=0&yid=${yid}&currpage=${pageInfo.pageNum+1}" class="next">
		                	&raquo;
		                </a>
		            </li>
				</ul>
		</nav>
      	<!--分页-->
			
		</div>
		<!-- /container -->
		
		<div class="bg_color_1">
			<div class="container margin_60_35">
				<div class="row">
					<div class="col-md-4">
						<a href="#0" class="boxed_list">
							<i class="pe-7s-help2"></i>
							<h4>Need Help? Contact us</h4>
							<p>Cum appareat maiestatis interpretaris et, et sit.</p>
						</a>
					</div>
					<div class="col-md-4">
						<a href="#0" class="boxed_list">
							<i class="pe-7s-wallet"></i>
							<h4>Payments</h4>
							<p>Qui ea nemore eruditi, magna prima possit eu mei.</p>
						</a>
					</div>
					<div class="col-md-4">
						<a href="#0" class="boxed_list">
							<i class="pe-7s-note2"></i>
							<h4>Cancel Policy</h4>
							<p>Hinc vituperata sed ut, pro laudem nonumes ex.</p>
						</a>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /bg_color_1 -->
		
	</main>
	<!--/main-->
	
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
	<!-- /Sign In Popup -->
	
	<div id="toTop"></div><!-- Back to top button -->
	
	<!-- COMMON SCRIPTS -->
    <script src="${ctx }/static/js/jquery-2.2.4.min.js"></script>
    <script src="${ctx }/static/js/common_scripts.js"></script>
    <script src="${ctx }/static/js/main.js"></script>
	<script src="${ctx }/static/assets/validate.js"></script>
	
	<!-- Map -->
	 </script>
	<script src="${ctx }/static/js/markerclusterer.js"></script>
	<script src="${ctx }/static/js/map_restaurants.js"></script>
	<script src="${ctx }/static/js/infobox.js"></script>
	
	<!-- Masonry Filtering -->
	<script src="${ctx }/static/js/isotope.min.js"></script>
	<script>
	$(window).load(function(){
	  var $container = $('.isotope-wrapper');
	  $container.isotope({ itemSelector: '.isotope-item', layoutMode: 'masonry' });
	});

	$('.filters_listing').on( 'click', 'input', 'change', function(){
	  var selector = $(this).attr('data-filter');
	  $('.isotope-wrapper').isotope({ filter: selector });
	});
	</script>
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
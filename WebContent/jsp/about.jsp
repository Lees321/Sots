<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>Sots | 团队</title>

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
    
    <!-- Layui -->
    <link rel="stylesheet" href="${ctx }/static/assets/css/layui.css">
	
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
		
		<section class="hero_in general">
			<div class="wrapper">
				<div class="container">
					<h1 class="fadeInUp"><span></span>了解我们</h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->

		<div class="bg_color_1">
			<div class="container margin_80_55">
				<div class="main_title_2">
					<span><em></em></span>
					<h2>联系我们</h2>
					<p>期待收到您的建议或者加入我们的消息，使我们变得更好。</p>
				</div>
				<div class="row justify-content-between">
					<div class="col-lg-6 wow" data-wow-offset="150">
						<figure class="block-reveal">
							<div class="block-horizzontal"></div>
							<img src="${ctx }/static/img/about_1.jpg" class="img-fluid" alt="">
						</figure>
					</div>
					<div class="col-lg-5">
						<div id="message-contact"></div>
						<form action="" class="layui-form" id="contactform" autocomplete="off">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>用户名</label>
										<input class="form-control" type="text" id="userName" name="userName">
										<div id="user_prompt" style="color:red"></div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>地址</label>
										<input class="form-control" type="text" id="userAddress" name="userAddress">
										<div id="ads_prompt" style="color:red"></div>
									</div>
								</div>
							</div>
							<!-- /row -->
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>邮箱</label>
										<input class="form-control" type="email" id="userEmail" name="userEmail">
										<div id="email_prompt" style="color:red"></div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>电话</label>
										<input class="form-control" type="text" id="userPhone" name="userPhone">
										<div id="phone_prompt" style="color:red"></div>
									</div>
								</div>
							</div>
							<!-- /row -->
							<div class="form-group">
								<label>更改建议</label>
								<textarea class="form-control" id="suggestion" name="suggestion" style="height:150px;"></textarea>
							</div>
							<p class="add_top_30"><input type="submit" value="Submit" class="btn_1 rounded"  lay-filter="save" lay-submit></p>
						</form>
					</div>
				</div>
				<!--/row-->
			</div>
			<!--/container-->
		</div>
		<!--/bg_color_1-->

		<div class="container margin_80_55">
			<div class="main_title_2">
				<span><em></em></span>
				<h2>我们的工作室</h2>
				<p>我们拥有良好的工作环境，以及便利的交通位置。</p>
			</div>
			<div id="carousel" class="owl-carousel owl-theme">
				<div class="item">
					<a href="#0">
						<div class="title">
							<h4>领导办公室</h4>
						</div><img src="${ctx }/static/img/team/team1.jpg" alt="">
					</a>
				</div>
				<div class="item">
					<a href="#0">
						<div class="title">
							<h4>员工办公室</h4>
						</div><img src="${ctx }/static/img/team/team2.jpg" alt="">
					</a>
				</div>
				<div class="item">
					<a href="#0">
						<div class="title">
							<h4>公司大楼</h4>
						</div><img src="${ctx }/static/img/team/team3.jpg" alt="">
					</a>
				</div>
				<div class="item">
					<a href="#0">
						<div class="title">
							<h4>公司食堂</h4>
						</div><img src="${ctx }/static/img/team/team4.jpg" alt="">
					</a>
				</div>
				<div class="item">
					<a href="#0">
						<div class="title">
							<h4>公司宿舍</h4>
						</div><img src="${ctx }/static/img/team/team5.jpg" alt="">
					</a>
				</div>
			</div>
			<!-- /carousel -->
		</div>
		<!--/container-->
	</main>
	<!--/main-->
	
	<footer>
		<div class="container margin_60_35">
			<div class="row">
				<div class="col-lg-5 col-md-12 p-r-5">
					<p>&nbsp;</p>
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
						<li><a href="jsp/about.jsp">关于</a></li>
						<li><a href="login.jsp">登录</a></li>
						<li><a href="jsp/register.jsp">注册</a></li>
						<li><a href="jsp/blog.jsp">趣闻 &amp; 事件</a></li>
						<li><a href="jsp/contacts.jsp">联系</a></li>
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
	
	<div id="toTop"></div><!-- Back to top button -->
	
	<!-- COMMON SCRIPTS -->
    <script src="${ctx }/static/js/jquery-2.2.4.min.js"></script>
    <script src="${ctx }/static/js/common_scripts.js"></script>
    <script src="${ctx }/static/js/main.js"></script>
	<script src="${ctx }/static/assets/validate.js"></script>
	
	<!-- Layui -->
	<script src="${ctx }/static/assets/layui.all.js"></script>
	
	<script type="text/javascript">
		layui.use('form', function(){
			var $ = layui.jquery
			,form = layui.form; 
			// 实现增加的操作
			form.on('submit(save)',function(data){
				//alert(JSON.stringify(data.field));
				$.post("${ctx }/addMessage",data.field,
						function(res){
					if(res.code > 0){
						layer.msg("发送成功",{icon:6});
					}else{
						layer.msg("发送失败",{icon:3});
					}
					window.setTimeout(function(){
						var index = parent.layer.getFrameIndex(window.name);
					    parent.layer.close(index);
					    parent.location.reload();
					},1000);
				});
			});
		
	});
	</script>
	<!-- 正则验证 -->
	<script type="text/javascript">
        $(document).ready(function(){
        	$("#userName").blur(checkname);
        	$("#userAddress").blur(checkaddress);
        	$("#userPhone").blur(checkphone);
        	$("#userEmail").blur(checkemail);
        	
        	$("form").submit(function(){
				var flag=true;
				if(!checkname()) {flag = false;};
				if(!checkphone()) {flag=false;};
				if(!checkaddress()) {flag=false;};
				if(!checkemail()) {flag=false;};
				confirm(flag);
				return flag;
			});
	        //用户名验证1
	         function checkname(){
                 var user = $("#userName").val();
                 var reg = /^([\u4e00-\u9fa5]{2,6}|[a-zA-Z\\.\\s]{1,20})$/;
                 if (!reg.test(user)) {
                     $("#user_prompt").text("用户名不正确");
                     return false;
                 }else{
                	 $("#user_prompt").text("");
                     return true;
                 }
             };
              $("#userName").focus(function(){
            	 var user = $("#userName").val();
                 var reg = /^([\u4e00-\u9fa5]{2,6}|[a-zA-Z\\.\\s]{1,20})$/;
                 if (!reg.test(user)) {
                     $("#user_prompt").text("用户名由汉字，英文字母和数字组成的4-16位字符");
                     return false;
                 }else{
                	 $("#user_prompt").text("");
                     return true;
                 }
             }); 
             //电话号码验证2
	         function checkphone(){
                 var user = $("#userPhone").val();
                 var reg = /^((13[0-9])|(14[5,7,9])|(15[^4])|(16[6])|(17[0,1,2,3,5,6,7,8])|(18[0-9])|(19[8,9]))\d{8}$/;
                 if (!reg.test(user)) {
                     $("#phone_prompt").text("电话号码不正确");
                     return false;
                 }else{
                	 $("#phone_prompt").text("");
                     return true;
                 }
             };
              $("#userPhone").focus(function(){
            	 var user = $("#userPhone").val();
                 var reg = /^((13[0-9])|(14[5,7,9])|(15[^4])|(16[6])|(17[0,1,2,3,5,6,7,8])|(18[0-9])|(19[8,9]))\d{8}$/;
                 if (!reg.test(user)) {
                     $("#phone_prompt").text("请输入正确的电话号码");
                     return false;
                 }else{
                	 $("#phone_prompt").text("");
                     return true;
                 }
             });
             //邮箱验证3
	         function checkemail(){
                 var user = $("#userEmail").val();
                 var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;     //^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/
                 if (!reg.test(user)) {
                     $("#email_prompt").text("邮箱名不正确");
                     return false;
                 }else{
                	 $("#email_prompt").text("");
                     return true;
                 }
             };
              $("#userEmail").focus(function(){
            	 var user = $("#userEmail").val();
                 var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
                 if (!reg.test(user)) {
                     $("#email_prompt").text("请输入正确的邮箱名");
                     return false;
                 }else{
                	 $("#email_prompt").text("");
                     return true;
                 }
             }); 
              //验证地址4
              function checkaddress(){
                  var user = $("#userAddress").val();
                  var reg = /^([\u4e00-\u9fa5]{2,6}|[a-zA-Z\\.\\s]{1,20})$/;
                  if (!reg.test(user)) {
                      $("#ads_prompt").text("地址格式不正确");
                      return false;
                  }else{
                 	 $("#ads_prompt").text("");
                      return true;
                  }
              };
               $("#userAddress").focus(function(){
             	 var user = $("#userAddress").val();
                  var reg = /^([\u4e00-\u9fa5]{2,6}|[a-zA-Z\\.\\s]{1,20})$/;
                  if (!reg.test(user)) {
                      $("#ads_prompt").text("请输入正确的地址格式");
                      return false;
                  }else{
                 	 $("#ads_prompt").text("");
                      return true;
                  }
              }); 
        });
        </script>
        
</body>
</html>
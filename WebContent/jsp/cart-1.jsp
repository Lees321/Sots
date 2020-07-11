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
	
	  <!-- Cart -->
	<link href="${ctx }/static/css/cartStyle.css" rel="stylesheet">
	
</head>

<body>
	
	<div id="page" class="theia-exception">
		
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
		<div class="hero_in cart_section">
			<div class="wrapper">
				<div class="container">
					<div class="bs-wizard clearfix">
						<div class="bs-wizard-step active">
							<div class="text-center bs-wizard-stepnum">Your cart</div>
							<div class="progress">
								<div class="progress-bar"></div>
							</div>
							<a href="#0" class="bs-wizard-dot"></a>
						</div>

						<div class="bs-wizard-step disabled">
							<div class="text-center bs-wizard-stepnum">Payment</div>
							<div class="progress">
								<div class="progress-bar"></div>
							</div>
							<a href="#0" class="bs-wizard-dot"></a>
						</div>

						<div class="bs-wizard-step disabled">
							<div class="text-center bs-wizard-stepnum">Finish!</div>
							<div class="progress">
								<div class="progress-bar"></div>
							</div>
							<a href="#0" class="bs-wizard-dot"></a>
						</div>
					</div>
					<!-- End bs-wizard -->
				</div>
			</div>
		</div>
		<!--/hero_in-->
		
		<div class="bg_color_1">
			<div class="container margin_60_35">
				<div class="row">
					<div class="col-lg-8">
						<div class="box_cart">
						<table class="table table-striped cart-list">
							<thead>
								<tr>
									<th>
										<input type="checkbox" class="allSelect" id="allSelect">
            							<label for="allSelect">全选</label>
            							<span>proName</span>
									</th>
									<th>
										Price
									</th>
									<th>
										num
									</th>
									<th>
										小计
									</th>
									<th>
										Actions
									</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${proHC.hotType }" var="h">
									<tr>
										<td>
											<input type="checkbox" class="check">
											<div class="thumb_cart">
												<img src="img/1_carousel.jpg" alt="Image">
											</div>
											<span class="item_cart">${proHC.product.proName }--${h.zhotelType }<!-- Persius delenit has cu --></span>
											<%-- <input type="checkbox" class="check" style="visibility: hidden;"><span class="item_cart">${h.zhotelType }</span> --%>
										</td>
										<td>
											<span name="price">${h.zhotelPrice }</span>
										</td>
										<td class="cartProductChangeNumberDiv">
											<input type="button" value="-" class="minus"/>
											<span class="num">${proHC.cnum }</span>
											<input type="button" value="+" class="plus"/>
										</td>
										<td>
											<div>&yen;<span class="subPrice" id="subPrice1">${h.zhotelPrice*proHC.cnum }</span></div>
										</td>
										<td class="options" style="width:5%; text-align:center;">
											<a href="${ctx }/cart/delCart?cid=${proHC.cid}"><i class="icon-trash"></i></a>
										</td>
									</tr>
								</c:forEach>
								<c:forEach items="${proC }" var="p">
									<c:forEach items="${p.products }" var="i">
									<tr>
										<td>
											<input type="checkbox" class="check">
											<div class="thumb_cart">
												<img src="img/1_carousel.jpg" alt="Image">
											</div>
											<span class="item_cart">${i.proName }</span>
										</td>
											<td>
											<span name="price">${i.proPrice }</span>
										</td>
										<td class="cartProductChangeNumberDiv">
											<input type="button" value="-" class="minus"/>
											<span class="num">${p.cnum }</span>
											<input type="button" value="+" class="plus"/>
										</td>
										<td>
											<div>&yen;<span class="subPrice" id="subPrice1">${i.proPrice*p.cnum }</span></div>
										</td>
										<td class="options" style="width:5%; text-align:center;">
											<a href="${ctx }/cart/delCart?cid=${p.cid}"><i class="icon-trash"></i></a>
										</td>			
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="bottom">
				          	<div class="left">
				             	<!-- <a href="#">删除选中的商品</a> -->
				          	</div>
				          	<div class="right">
				             	<div class="allPrice">
				                	<div><span class="str">已选择<span class="fontColor1">0</span>件商品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总价：
				                	</span><span class="fontColor2">&yen;<span class="allPrice1" id="finalPrice">0.00</span></span></div>
				             		<div class="balance">去结算</div>
				             	</div>
				          	</div>
				       </div>
					</div>
					</div>
					<!-- /col -->
					
					<aside class="col-lg-4" id="sidebar">
						<div class="box_detail">
							<div id="total_cart">
								Total <span class="allPrice1 float-right" id="finalPrice">0.00</span>
							</div>
							<ul class="cart_details">
								<li>日期：<span>${dates }</span></li>
								<%-- <li>
									<div class="form-group">
										<input class="form-control" type="text" name="dates" value="${dates }" placeholder="When..">
										<i class="icon_calendar"></i>
									</div>
								</li> --%>
								<!-- <li>从 <span>02-11-18</span></li>
								<li>到 <span>04-11-18</span></li> -->
								<li>总人数 <span>${adultsNum }</span></li>
							</ul>
							<a href="#" class="btn_1 full-width purchase">Checkout</a>
							<div class="text-center"><small>No money charged in this step</small></div>
						</div>
					</aside>
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
		<!--form -->
	</div>
	<!-- /Sign In Popup -->
	
	<div id="toTop"></div><!-- Back to top button -->
	
	<!-- COMMON SCRIPTS -->
    <script src="${ctx }/static/js/jquery-2.2.4.min.js"></script>
    <script src="${ctx }/static/js/common_scripts.js"></script>
    <script src="${ctx }/static/js/main.js"></script>
	<script src="${ctx }/static/assets/validate.js"></script>
	
	<!-- 购物车 -->
	<script>
       $(".plus").on("click",function(){
            var num=$(this).prev().html();//获取商品初始数量1
            $(this).prev().html(Number(num)+1);//此时已将数字直接写入标签内，是动作
            var buynum=parseInt($(this).prev().text());   //得到+1之后的商品数量，即购买数量
            var price=parseFloat($(this).parent().prev().children().text());     //获取商品单价
            $(this).parent().next().children().children().html((buynum*Number(price)).toFixed(2));
    //      console.log(smallPrice);
            allPrice();
            checkNum();
        });
    
        $(".minus").on("click",function(){
            var num=$(this).next().html();           //获取此时商品数量
            if(num>0){
            $(this).next().html(Number(num)-1);//此时已将数字直接写入标签内，是动作
            var buynum=$(this).next().html();   //得到-1之后的商品数量，即购买数量
            var price=$(this).parent().prev().children().text();     //获取商品单价
            $(this).parent().next().children().children().html((buynum*Number(price)).toFixed(2));
            }else{
                alert("已经没得了！");
            }
            allPrice();
            checkNum();
        });
        
        //全选
        $(".allSelect").click(function(){
    //      console.log(this);
            if(this.checked==true){
                $(".check").prop("checked",true);
            }else{
                $(".check").prop("checked",false);
            }
            allPrice();
            checkNum();
        });
        
        //单选
        $(".check").click(function(){
            var check=$(".check").length;
            var checked=$(".check:checked").length;
            if(check==checked){
                $(".allSelect").prop("checked",true);
            }else{
                $(".allSelect").prop("checked",false);
            }
            allPrice();
            checkNum();
        });
    
    
        function checkNum(){
            var num=0;
            $(".check").each(function(){
                if(this.checked==true){
                    var b=$($(this).parent().next().next().children()[1]).html();
                    num+=Number(b);
                }
            });
            $(".fontColor1").html(num);
        }
    
    
        function allPrice(){
            var sum=0;
            $(".check").each(function(){
                if(this.checked==true){
                   var a=$($(this).parent().next().next().next().children().children()[0]).html();    //单类商品数量
                   //console.log($($(this).parent().next().next().next().next().next().children().children()[0]).html());
                   sum+=Number(a);
                }
            });
            $(".allPrice1").html(sum);
        }
    
    </script>
  
</body>
</html>
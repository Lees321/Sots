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
    
    <!-- SPECIFIC CSS -->
    <link href="${ctx }/static/css/blog.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="${ctx }/static/css/custom.css" rel="stylesheet">
	
</head>

<body>
	
	<div id="page">
		
	<header class="header menu_fixed">
		<div id="preloader"><div data-loader="circle-side"></div></div><!-- /Preload -->
		<div id="logo">
			<a href="index.jsp">
				<img src="${ctx }/static/img/logo.png" width="150" height="36" data-retina="true" alt="" class="logo_normal">
				<img src="${ctx }/static/img/logo_sticky.png" width="150" height="36" data-retina="true" alt="" class="logo_sticky">
			</a>
		</div>
		<ul id="top_menu">
			<li><a href="cart-1.jsp" class="cart-menu-btn" title="Cart"><strong>4</strong></a></li>
			<li><a href="#sign-in-dialog" id="sign-in" class="login" title="Sign In">Sign In</a></li>
			<li><a href="wishlist.jsp" class="wishlist_bt_top" title="Your wishlist">Your wishlist</a></li>
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
				<li><span><a href="#0">Home</a></span>
					<ul>
						<li><a href="index.jsp">Home version 1</a></li>
						<li><a href="index-2.jsp">Home version 2</a></li>
						<li><a href="index-3.jsp">Home version 3</a></li>
						<li><a href="index-4.jsp">Home version 4</a></li>
						<li><a href="index-5.jsp">Home version 5</a></li>
						<li><a href="index-6.jsp">With Cookie bar (EU law)</a></li>
                        <li><a href="index-7.jsp">Home version 7</a></li>
					</ul>
				</li>
				<li><span><a href="#0">Tours</a></span>
					<ul>
						<li><a href="tours-grid-isotope.jsp">Tours grid isotope</a></li>
						<li><a href="tours-grid-sidebar.jsp">Tours grid sidebar</a></li>
						<li><a href="tours-grid-sidebar-2.jsp">Tours grid sidebar 2</a></li>
						<li><a href="tours-grid.jsp">Tours grid simple</a></li>
						<li><a href="tours-list-isotope.jsp">Tours list isotope</a></li>
						<li><a href="tours-list-sidebar.jsp">Tours list sidebar</a></li>
						<li><a href="tours-list-sidebar-2.jsp">Tours list sidebar 2</a></li>
						<li><a href="tours-list.jsp">Tours list simple</a></li>
						<li><a href="tour-detail.jsp">Tour detail</a></li>
					</ul>
				</li>
				<li><span><a href="#0">Hotels</a></span>
					<ul>
						<li><a href="hotels-grid-isotope.jsp">Hotel grid isotope</a></li>
						<li><a href="hotels-grid-sidebar.jsp">Hotel grid sidebar</a></li>
						<li><a href="hotels-grid-sidebar-2.jsp">Hotel grid sidebar 2</a></li>
						<li><a href="hotels-grid.jsp">Hotel grid simple</a></li>
						<li><a href="hotels-list-isotope.jsp">Hotel list isotope</a></li>
						<li><a href="hotels-list-sidebar.jsp">Hotel list sidebar</a></li>
						<li><a href="hotels-list-sidebar-2.jsp">Hotel list sidebar 2</a></li>
						<li><a href="hotels-list.jsp">Hotel list simple</a></li>
						<li><a href="hotel-detail.jsp">Hotel detail</a></li>
					</ul>
				</li>
				<li><span><a href="#0">Eat &amp; Drink</a></span>
					<ul>
						<li><a href="restaurants-grid-isotope.jsp">Restaurant grid isotope</a></li>
						<li><a href="restaurants-grid-sidebar.jsp">Restaurant grid sidebar</a></li>
						<li><a href="restaurants-grid-sidebar-2.jsp">Restaurant grid sidebar 2</a></li>
						<li><a href="restaurants-grid.jsp">Restaurant grid simple</a></li>
						<li><a href="restaurants-list-isotope.jsp">Restaurant list isotope</a></li>
						<li><a href="restaurants-list-sidebar.jsp">Restaurant list sidebar</a></li>
						<li><a href="restaurants-list-sidebar-2.jsp">Restaurant list sidebar 2</a></li>
						<li><a href="restaurants-list.jsp">Restaurant list simple</a></li>
						<li><a href="restaurant-detail.jsp">Restaurant detail</a></li>
					</ul>
				</li>
				<li><span><a href="#0">Pages</a></span>
					<ul>
						<li><a href="about.jsp">About</a></li>
						<li><a href="media-gallery.jsp">Media gallery</a></li>
						<li><a href="help.jsp">Help Section</a></li>
						<li><a href="faq.jsp">Faq Section</a></li>
						<li><a href="wishlist.jsp">Wishlist page</a></li>
						<li><a href="contacts.jsp">Contacts</a></li>
						<li><a href="login.jsp">Login</a></li>
						<li><a href="register.jsp">Register</a></li>
						<li><a href="blog.jsp">Blog</a></li>
					</ul>
				</li>
				<li><span><a href="#0">Extra</a></span>
					<ul>
                    	<li><a href="menu-options.jsp">Menu Position Options</a></li>
                    	<li><a href="tour-detail-singlemonth-datepicker.jsp">Single month Datepicker</a></li>
						<li><a href="404.jsp">404 Error page</a></li>
						<li><a href="cart-1.jsp">Cart page 1</a></li>
						<li><a href="cart-2.jsp">Cart page 2</a></li>
						<li><a href="cart-3.jsp">Cart page 3</a></li>
						<li><a href="pricing-tables.jsp">Responsive pricing tables</a></li>
						<li><a href="coming_soon/index.jsp">Coming soon</a></li>
						<li><a href="invoice.jsp">Invoice</a></li>
						<li><a href="icon-pack-1.jsp">Icon pack 1</a></li>
						<li><a href="icon-pack-2.jsp">Icon pack 2</a></li>
						<li><a href="icon-pack-3.jsp">Icon pack 3</a></li>
						<li><a href="icon-pack-4.jsp">Icon pack 4</a></li>
                        <li><a href="hamburgers.jsp">Animated Hamburgers</a></li>
					</ul>
				</li>
				<li><span><a href="#0">Buy template</a></span></li>
			</ul>
		</nav>

	</header>
	<!-- /header -->
	
	<main>
		<section class="hero_in general">
			<div class="wrapper">
				<div class="container">
					<h1 class="fadeInUp"><span></span>Sots blog</h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->

		<div class="container margin_60_35">
			<div class="row">
				<div class="col-lg-9">
					<article class="blog wow fadeIn">
						<div class="row no-gutters">
							<div class="col-lg-7">
								<figure>
									<a href="blog-post.jsp"><img src="${ctx }/static/img/blog-1.jpg" alt="">
										<div class="preview"><span>Read more</span></div>
									</a>
								</figure>
							</div>
							<div class="col-lg-5">
								<div class="post_info">
									<small>20 Nov. 2017</small>
									<h3><a href="blog-post.jsp">Nec nihil menandri appellantur ut</a></h3>
									<p>Quodsi sanctus pro eu, ne audire scripserit quo. Vel an enim offendit salutandi, in eos quod omnes epicurei, ex veri qualisque scriptorem mei.</p>
									<ul>
										<li>
											<div class="thumb"><img src="${ctx }/static/img/thumb_blog.jpg" alt=""></div> Jessica Hoops
										</li>
										<li><i class="icon_comment_alt"></i> 20</li>
									</ul>
								</div>
							</div>
						</div>
					</article>
					<!-- /article -->

					<article class="blog wow fadeIn">
						<div class="row no-gutters">
							<div class="col-lg-7">
								<figure>
									<a href="blog-post.jsp"><img src="${ctx }/static/img/blog-2.jpg" alt="">
										<div class="preview"><span>Read more</span></div>
									</a>
								</figure>
							</div>
							<div class="col-lg-5">
								<div class="post_info">
									<small>20 Nov. 2017</small>
									<h3><a href="blog-post.jsp">Nec nihil menandri appellantur ut</a></h3>
									<p>Quodsi sanctus pro eu, ne audire scripserit quo. Vel an enim offendit salutandi, in eos quod omnes epicurei, ex veri qualisque scriptorem mei.</p>
									<ul>
										<li>
											<div class="thumb"><img src="${ctx }/static/img/thumb_blog.jpg" alt=""></div> Jessica Hoops
										</li>
										<li><i class="icon_comment_alt"></i> 20</li>
									</ul>
								</div>
							</div>
						</div>
					</article>
					<!-- /article -->

					<article class="blog wow fadeIn">
						<div class="row no-gutters">
							<div class="col-lg-7">
								<figure>
									<a href="blog-post.jsp"><img src="${ctx }/static/img/blog-3.jpg" alt="">
										<div class="preview"><span>Read more</span></div>
									</a>
								</figure>
							</div>
							<div class="col-lg-5">
								<div class="post_info">
									<small>20 Nov. 2017</small>
									<h3><a href="blog-post.jsp">Nec nihil menandri appellantur ut</a></h3>
									<p>Quodsi sanctus pro eu, ne audire scripserit quo. Vel an enim offendit salutandi, in eos quod omnes epicurei, ex veri qualisque scriptorem mei.</p>
									<ul>
										<li>
											<div class="thumb"><img src="${ctx }/static/img/thumb_blog.jpg" alt=""></div> Jessica Hoops
										</li>
										<li><i class="icon_comment_alt"></i> 20</li>
									</ul>
								</div>
							</div>
						</div>
					</article>
					<!-- /article -->

					<article class="blog wow fadeIn">
						<div class="row no-gutters">
							<div class="col-lg-7">
								<figure>
									<a href="blog-post.jsp"><img src="${ctx }/static/img/blog-4.jpg" alt="">
										<div class="preview"><span>Read more</span></div>
									</a>
								</figure>
							</div>
							<div class="col-lg-5">
								<div class="post_info">
									<small>20 Nov. 2017</small>
									<h3><a href="blog-post.jsp">Nec nihil menandri appellantur ut</a></h3>
									<p>Quodsi sanctus pro eu, ne audire scripserit quo. Vel an enim offendit salutandi, in eos quod omnes epicurei, ex veri qualisque scriptorem mei.</p>
									<ul>
										<li>
											<div class="thumb"><img src="${ctx }/static/img/thumb_blog.jpg" alt=""></div> Jessica Hoops
										</li>
										<li><i class="icon_comment_alt"></i> 20</li>
									</ul>
								</div>
							</div>
						</div>
					</article>
					<!-- /article -->

					<nav aria-label="...">
						<ul class="pagination pagination-sm">
							<li class="page-item disabled">
								<a class="page-link" href="#" tabindex="-1">Previous</a>
							</li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item">
								<a class="page-link" href="#">Next</a>
							</li>
						</ul>
					</nav>
					<!-- /pagination -->
				</div>
				<!-- /col -->

				<aside class="col-lg-3">
					<div class="widget">
						<form>
							<div class="form-group">
								<input type="text" name="search" id="search" class="form-control" placeholder="Search...">
							</div>
							<button type="submit" id="submit" class="btn_1 rounded"> Search</button>
						</form>
					</div>
					<!-- /widget -->
					<div class="widget">
						<div class="widget-title">
							<h4>Recent Posts</h4>
						</div>
						<ul class="comments-list">
							<li>
								<div class="alignleft">
									<a href="#0"><img src="${ctx }/static/img/blog-5.jpg" alt=""></a>
								</div>
								<small>11.08.2016</small>
								<h3><a href="#" title="">Verear qualisque ex minimum...</a></h3>
							</li>
							<li>
								<div class="alignleft">
									<a href="#0"><img src="${ctx }/static/img/blog-6.jpg" alt=""></a>
								</div>
								<small>11.08.2016</small>
								<h3><a href="#" title="">Verear qualisque ex minimum...</a></h3>
							</li>
							<li>
								<div class="alignleft">
									<a href="#0"><img src="${ctx }/static/img/blog-4.jpg" alt=""></a>
								</div>
								<small>11.08.2016</small>
								<h3><a href="#" title="">Verear qualisque ex minimum...</a></h3>
							</li>
						</ul>
					</div>
					<!-- /widget -->
					<div class="widget">
						<div class="widget-title">
							<h4>Blog Categories</h4>
						</div>
						<ul class="cats">
							<li><a href="#">Admissions <span>(12)</span></a></li>
							<li><a href="#">News <span>(21)</span></a></li>
							<li><a href="#">Events <span>(44)</span></a></li>
							<li><a href="#">Focus in the lab <span>(31)</span></a></li>
						</ul>
					</div>
					<!-- /widget -->
					<div class="widget">
						<div class="widget-title">
							<h4>Popular Tags</h4>
						</div>
						<div class="tags">
							<a href="#">Information tecnology</a>
							<a href="#">Students</a>
							<a href="#">Community</a>
							<a href="#">Carreers</a>
							<a href="#">Literature</a>
							<a href="#">Seminars</a>
						</div>
					</div>
					<!-- /widget -->
				</aside>
				<!-- /aside -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</main>
	<!--/main-->
	
	<footer>
		<div class="container margin_60_35">
			<div class="row">
				<div class="col-lg-5 col-md-12 p-r-5">
					<p><img src="${ctx }/static/img/logo.png" width="150" height="36" data-retina="true" alt=""></p>
					<p>Mea nibh meis philosophia eu. Duis legimus efficiantur ea sea. Id placerat tacimates definitionem sea, prima quidam vim no. Duo nobis persecuti cu. Nihil facilisi indoctum an vix, ut delectus expetendis vis.</p>
					<div class="follow_us">
						<ul>
							<li>Follow us</li>
							<li><a href="#0"><i class="ti-facebook"></i></a></li>
							<li><a href="#0"><i class="ti-twitter-alt"></i></a></li>
							<li><a href="#0"><i class="ti-google"></i></a></li>
							<li><a href="#0"><i class="ti-pinterest"></i></a></li>
							<li><a href="#0"><i class="ti-instagram"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 ml-lg-auto">
					<h5>Useful links</h5>
					<ul class="links">
						<li><a href="about.jsp">About</a></li>
						<li><a href="login.jsp">Login</a></li>
						<li><a href="register.jsp">Register</a></li>
						<li><a href="blog.jsp">News &amp; Events</a></li>
						<li><a href="contacts.jsp">Contacts</a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-6">
					<h5>Contact with Us</h5>
					<ul class="contacts">
						<li><a href="tel://61280932400"><i class="ti-mobile"></i> + 61 23 8093 3400</a></li>
						<li><a href="mailto:info@Sots.com"><i class="ti-email"></i> info@Sots.com</a></li>
					</ul>
					<div id="newsletter">
					<h6>Newsletter</h6>
					<div id="message-newsletter"></div>
					<form method="post" action="${ctx }/static/assets/newsletter.php" name="newsletter_form" id="newsletter_form">
						<div class="form-group">
							<input type="email" name="email_newsletter" id="email_newsletter" class="form-control" placeholder="Your email">
							<input type="submit" value="Submit" id="submit-newsletter">
						</div>
					</form>
					</div>
				</div>
			</div>
			<!--/row-->
			<hr>
			<div class="row">
				<div class="col-lg-6">
					<ul id="footer-selector">
						<li>
							<div class="styled-select" id="lang-selector">
								<select>
									<option value="English" selected>English</option>
									<option value="French">French</option>
									<option value="Spanish">Spanish</option>
									<option value="Russian">Russian</option>
								</select>
							</div>
						</li>
						<li>
							<div class="styled-select" id="currency-selector">
								<select>
									<option value="US Dollars" selected>US Dollars</option>
									<option value="Euro">Euro</option>
								</select>
							</div>
						</li>
						<li><img src="${ctx }/static/img/cards_all.svg" alt=""></li>
					</ul>
				</div>
				<div class="col-lg-6">
					<ul id="additional_links">
						<li><a href="#0">Terms and conditions</a></li>
						<li><a href="#0">Privacy</a></li>
						<li><span>© 2018 Sots</span></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!--/footer-->
	</div>
	<!-- page -->
	
	<!-- Sign In Popup -->
	<div id="sign-in-dialog" class="zoom-anim-dialog mfp-hide">
		<div class="small-dialog-header">
			<h3>Sign In</h3>
		</div>
		<form>
			<div class="sign-in-wrapper">
				<a href="#0" class="social_bt facebook">Login with Facebook</a>
				<a href="#0" class="social_bt google">Login with Google</a>
				<div class="divider"><span>Or</span></div>
				<div class="form-group">
					<label>Email</label>
					<input type="email" class="form-control" name="email" id="email">
					<i class="icon_mail_alt"></i>
				</div>
				<div class="form-group">
					<label>Password</label>
					<input type="password" class="form-control" name="password" id="password" value="">
					<i class="icon_lock_alt"></i>
				</div>
				<div class="clearfix add_bottom_15">
					<div class="checkboxes float-left">
						<label class="container_check">Remember me
						  <input type="checkbox">
						  <span class="checkmark"></span>
						</label>
					</div>
					<div class="float-right mt-1"><a id="forgot" href="javascript:void(0);">Forgot Password?</a></div>
				</div>
				<div class="text-center"><input type="submit" value="Log In" class="btn_1 full-width"></div>
				<div class="text-center">
					Don’t have an account? <a href="register.jsp">Sign up</a>
				</div>
				<div id="forgot_pw">
					<div class="form-group">
						<label>Please confirm login email below</label>
						<input type="email" class="form-control" name="email_forgot" id="email_forgot">
						<i class="icon_mail_alt"></i>
					</div>
					<p>You will receive an email containing a link allowing you to reset your password to a new preferred one.</p>
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
	
	

</body>
</html>
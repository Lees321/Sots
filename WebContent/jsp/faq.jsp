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
    <title>Sots | 帮助</title>

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
			<li><a href="${ctx }/cart/getCart?hid=-1&pid=-1" class="cart-menu-btn" title="Cart"><strong>4</strong></a></li>
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
			<li><a href="${ctx }/wish/getWish" class="wishlist_bt_top" title="心愿单">心愿单</a></li>
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
					<h1 class="fadeInUp"><span></span>旅游手册</h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->

		<div class="container margin_60_35">
			<div class="row">
				<aside class="col-lg-3" id="sidebar">
						<div class="box_style_cat" id="faq_box">
							<ul id="cat_nav">
								<li><a href="#payment" class="active"><i class="icon_document_alt"></i>常见问题</a></li>
								<li><a href="#tips"><i class="icon_document_alt"></i>成团与拼团</a></li>
								<li><a href="#reccomendations"><i class="icon_document_alt"></i>隐私保护</a></li>
								<li><a href="#terms"><i class="icon_document_alt"></i>免责声明</a></li>
							</ul>
						</div>
						<!--/sticky -->
				</aside>
				<!--/aside -->
				
				<div class="col-lg-9" id="faq">
					<h4 class="nomargin_top">常见问题</h4>
					<div role="tablist" class="add_bottom_45 accordion_2" id="payment">
						<div class="card">
							<div class="card-header" role="tab">
								<h5 class="mb-0">
									<a data-toggle="collapse" href="#collapseOne_payment" aria-expanded="true"><i class="indicator ti-minus"></i>旅游指南</a>
								</h5>
							</div>

							<div id="collapseOne_payment" class="collapse show" role="tabpanel" data-parent="#payment">
								<div class="card-body">
									<p>自助旅行吃、住、行、游、购、娱，全由自己搞定，操作起来比较繁琐，特别是旅游旺季，购买机票、车票以及住宿可能会遇到麻烦。但困难也是挑战，只要找到窍门，问题也容易解决。
										比如避开旅游热点地区，选择一些风光秀美、旅游的“冷点”地区旅游。但有一点，就是要提前订房订票。如果是结伴同行，一定要推举一位精明能干的领头人，负责解决吃、住、行等问题，千万不能各行其是，否则会一团糟。也可采取半自助方式，即通过旅行社解决往返车票和机票，到达旅游点后游客自己解决吃、住、游等其他问题。</p>
									<p>自助旅游虽然有一点麻烦，但自由自在，特别是在一些风光迷人或文化厚实的地方，可以有足够时间去体会和留连。
										但自助旅游旅行时间加长，常常因为不熟悉当地情况而导致等待、搭错车等情况发生，再如常会有预算外支出，机票、酒店房价等也不能拿到更大的折扣。</p>
									<p>随团旅游随团旅行最大的好处是省钱省心(特别是全包团)，不用自己操心，你只需要养好精神一路吃喝玩乐便可。随团旅游费用一般比自助旅游要节省得多，因其在机票、酒店、用车及吃饭、门票等方面均属集体消费，而且当地有熟悉情况的地接社接待，费用几乎可压至最低。另外，旅行社设计的游览行程一般较为科学合理，选择景点也以最具有代表性部分或精华部分为基础，适当增减次要景点，基本上能满足大多游客的要求。</p>
								</div>
							</div>
						</div>
						<!-- /card -->
						<div class="card">
							<div class="card-header" role="tab">
								<h5 class="mb-0">
									<a class="collapsed" data-toggle="collapse" href="#collapseTwo_payment" aria-expanded="false">
										<i class="indicator ti-plus"></i>如何选择旅行社
									</a>
								</h5>
							</div>
							<div id="collapseTwo_payment" class="collapse" role="tabpanel" data-parent="#payment">
								<div class="card-body">
									<p><strong>一、看广告：</strong>面对眼花缭乱的旅游广告，五花八门的旅行社，如何缩小选择范围，如何选择满意的?</p>
									<p>首先，要看广告上有无刊登旅行社的许可证号。按规定，旅行社许可证号是旅游广告必不可少的，少了它，广告中的旅行社就很可能是无证非法经营的“野马”社。参加这种旅行社的团队，旅客权益很难得到保障。其次，要根据自己的经济能力和爱好选择旅游线路。有些广告在介绍线路时不免有溢美之词，这就要考考各人的眼力了。</p>
									<p><strong>二、了解旅行社的经营范围：</strong></p>
									<p>根据《旅行社管理条例》中的规定，国际旅行社的经营范围包括入境旅游业务、国内旅游业务;国内旅行社的经营范围仅限于国内旅游业务。旅客 报名时，可以要求旅行社出示旅游部门颁发的《旅行社业务经营许可证》和工商部门颁发的营业执照。如报名点与旅行社总部在一起时，可要求其提供原件;如报名点远离旅行社总部，应要求其提供旅行社总部的办公地址和联系电话，以备核实之用。对出国游旅行社的收客点，一定要有旅游部门批准的证书。凡是遇到报名点提供不出任何依据证明营业场所合法性的情况，参游人员一定要到该营业场所提供的旅行社去核实真伪。这也是游客自我保护的一种必要手段。</p>
									<p><strong>三、学会选择自己信任的品牌：</strong></p>
									<p>每一个旅行社都有自己的名称和品牌，就像我们选择家用电器一样，要求功能全、质量好、信誉高、售后服务到位。正规的旅行社或者说有较高知名度的旅行社，都千方百计地树立自己在市场中的形象，有些旅行社通过改制优化了企业的内部机制，还有的旅行社通过了ISO质量认证。从今年开始，旅行社要逐步推行资格等级评定。要看一个旅行社的品牌，一般来说，如果这个旅行社采取挂靠或简单承包的方式经营，两张桌子一部传真机，它的信誉不会太好。</p>
									<p><strong>四、不能用报价高低来决定取舍：</strong></p>
									<p>要看一个旅行社的报价是否合理，你不妨搞点调查研究。一般来说，旅行社的报价包括两种：一种是全包价，即包括交通、住宿、餐饮、门票等;另一种是小包价，即只包一部分费用或在某一段行程中的费用。因此，旅客在报名时不能一味强调谁的价格便宜就跟谁走，一定要问清收费价格中包括 哪些部分，还有哪些需要自理，不同价格你享受的服务和质量是不一样的。有一些不正规的旅行社或者叫“野马”旅行社，为了争抢客源，拼命压低报价，这时你要格外注意，他一定是在你后面设好了圈套等着你去钻。</p>
									<p>在旅游消费已经成为大众消费的今天，旅游者在出行时选择旅行社和挑选旅游产品就显得尤为重要。特别是旅游产品，不能只看表面价格。同一条旅游线路虽然广告上说的一样，但是餐费标准的高低、航班班次的不同、住宿酒店位置和等级的差异、导游的素质以及所包的门票种类不同等因素，都会制约着旅游的成本，都会对价格产生影响。旅游产品的真正价值是通过食、住、行、游、购、娱等因素来综合评价的。</p>
									<p><br></p>
								</div>
							</div>
						</div>
						<!-- /card -->
					</div>
					<!-- /accordion payment -->
					
					<h4 class="nomargin_top">成团与拼团</h4>
					<div role="tablist" class="add_bottom_45 accordion_2" id="tips">
						<div class="card">
							<div class="card-header" role="tab">
								<h5 class="mb-0">
									<a data-toggle="collapse" href="#collapseOne_tips" aria-expanded="true"><i class="indicator ti-plus"></i>独立成团</a>
								</h5>
							</div>

							<div id="collapseOne_tips" class="collapse" role="tabpanel" data-parent="#tips">
								<div class="card-body">
									<p>为了适应不断增加的个性化旅游的需求，三亚中青旅专门辟出栏目，为单位团体及有经济实力之人士推出独立包团服务，希望能通过这种旅游形式，提升旅游质量，并通过我们的高质量的服务，让游客能全身心的投入旅游中去，不为旅游中的烦锁之事分心，充分的享受旅途中的美丽风景和民风民俗。</p>
									<p><strong>1、什么叫独立包团?</strong></p>
									<p>独立包团也叫单独包团或单独成团，就是几个亲朋好友，或一个家庭或一个单位的人自己单独组团前往一个或几个旅游目的地旅游。</p>
									<p><strong>2、独立包团的好处?</strong></p>
									<p>（1）无论人数多少都可以包团，甚至一人也可包团;</p>
									<p>（2）可自由选择出团时间，特别是一些特殊线路，一般旅游行很难发散客团，都要求包团才能出行;</p>
									<p>（3）相比参加线路比较固定、质量也相对来说较难满意、自由比较受限制的散客团来说，可以提高旅游质量、增加旅游乐趣，增进亲朋好友之间的了解、享受天伦之乐;</p>
									<p>（4）可比较自由的选择合适的线路，甚至自行设计旅游线路，或者将本网提供的线路按自己的要求作一些更改;</p>
									<p>（5）更安全、更可靠。由于全团人员均来自已的亲朋好友或同单位员工，所以不用担心传染病、偷盗、岐视等现象的发生。</p>
									<p><strong>3、怎样独立包团?</strong></p>
									<p>（1）可自己设计线路或者在本网上选择一条或几条线路，然后制定自己旅游的标准(如住宿、车辆、餐饮、景点、行程等)，要求旅行社按这个行程进行报价，如果能接受这个报价，就要求旅行社订房、订餐、订车并与旅行社签定旅游合同、支付定金等;当然，您也可以要求旅行社为您制定相关线路及标准、价格等;</p>
									<p>（2）本网会根据云南的一些独特的旅游景区、景点、编制一些特别的线路供您选择。</p>
									<p><strong>4、网上包团注意事项：</strong></p>
									<p>（1）独立包团，人数越多，价格越低;反之，价格较高，因为人数较少成本越大。所以您在决定包团时，先要明确自己的人数。有了明确的人数，才能有准确的价格;</p>
									<p>（2）与包团质量及价格有关系的，除了人数之外，就是您所要求的用车、住宿、餐饮等条件，要求越高，价格越高，您要根据自己的财力来决定您的包团标准。</p>
									<p><br></p>
								</div>
							</div>
						</div>
						<!-- /card -->
						<div class="card">
							<div class="card-header" role="tab">
								<h5 class="mb-0">
									<a class="collapsed" data-toggle="collapse" href="#collapseTwo_tips" aria-expanded="false">
										<i class="indicator ti-plus"></i>散客拼团
									</a>
								</h5>
							</div>
							<div id="collapseTwo_tips" class="collapse" role="tabpanel" data-parent="#tips">
								<div class="card-body">
									<p>散客拼团也有称散客并团，是一种常规的、经济的旅游方式。是一种大多数旅游者所采用的旅行方式。它是由各个地方的散客在各旅行社部门分散报名后，再进行统一的安排旅游房、餐、车、门、导等，组成一个较大的旅行团队进行旅游。</p>
									<p><strong>1、散客拼团的好处</strong></p>
									<p>（1）对于常规的景点，一般来说是每天都出团，所以游客不必担心出团时间，也不必为旅游而调整自己的假期。</p>
									<p>（2）散客拼团的价格较低，因为这种价格是按较大的团队来核定的，并且一般是比较稳定的，即便是成团人数未能达到预期的数量，也会以同样的价格和时间出团，即亏本也出团。</p>
									<p>（3）可以结识众多各行各业的旅伴，使旅途增添无穷的乐趣。</p>
									<p><strong>2、散客拼团的弊端</strong></p>
									<p>（1） 行程较为固定(死板)，由于这种成团形式决定了散客拼团线路的特点，每天都以同样的行程和时间表走完行程，以符合大多数游客的需求。一般来说，行程是无法随意改变、景点的停留时间也较为固定。</p>
									<p>（2）旅游外的时间占用较多。与独立成团相比，散客拼团的团队，为了降低价格，一般要进更多的购物点，以及其它不必要地点停留的时间耽搁，造成旅游的实际时间减少。</p>
									<p><br></p>
								</div>
							</div>
						</div>
						<!-- /card -->
					</div>
					<!-- /accordion suggestions -->
					
					<h4 class="nomargin_top">隐私保护</h4>
					<div role="tablist" class="add_bottom_45 accordion_2" id="reccomendations">
						<div class="card">
							<div class="card-header" role="tab">
								<h5 class="mb-0">
									<a data-toggle="collapse" href="#collapseOne_reccomendations" aria-expanded="true"><i class="indicator ti-plus"></i>隐私确认与同意</a>
								</h5>
							</div>

							<div id="collapseOne_reccomendations" class="collapse" role="tabpanel" data-parent="#reccomendations">
								<div class="card-body">
								    <p>尊重用户个人隐私是Sots的一项基本政策。Sots旅游网是将有资质的酒店、机票代理机构、旅行社等提供的旅游服务信息汇集于Sots旅游网供您查阅，同时帮助您通过Sots旅游网与上述酒店、机票代理机构、旅行社等联系并预订相关旅游服务项目。您在使用Sots的产品与/或服务前仔细阅读并确认您已经充分理解本隐私政策所写明的内容，并与Sots达成协议且接受所有的服务条款。</p>
								    <p>Sots十分注重保护您的个人信息及隐私安全，Sots理解您通过网络向Sots提供信息是建立在对Sots信任的基础上，Sots重视这种信任，也深知隐私对您的重要性，并尽最大努力全力保护您的隐私。如果您对Sots的隐私政策有任何的疑问或建议，请联系：SanYa@Sots.com。</p>
								</div>
							</div>
						</div>
						<!-- /card -->
						<div class="card">
							<div class="card-header" role="tab">
								<h5 class="mb-0">
									<a class="collapsed" data-toggle="collapse" href="#collapseTwo_reccomendations" aria-expanded="false">
										<i class="indicator ti-plus"></i>收集信息
									</a>
								</h5>
							</div>
							<div id="collapseTwo_reccomendations" class="collapse" role="tabpanel" data-parent="#reccomendations">
								<div class="card-body">
								    <p>（1）为了更好地为您提供服务，Sots将遵循“合理、相关、必要”原则，且以您同意为前提收集信息，不会收集法律法规禁止收集的信息。考虑到Sots会员服务的重要性，您同意，Sots将会收集您在Sots网上输入的或者以其他方式提供给Sots的所有信息：</p>
								    <ul>
								        <li>a、在您注册为Sots会员时，需提供姓名、性别、生日、手机号、邮箱等信息。</li>
								        <li>b、在您后续更新个人信息时，需符合及时、详尽、准确的要求。</li>
								        <li>c、在您预订机票或火车票时，需提供乘客姓名、性别、生日、证件号以及联系人姓名、手机号、邮箱及配送地址等信息。</li>
								        <li>d、在您预订酒店、景点门票时，需提供入住人姓名、联系人姓名、手机号、邮件等信息。</li>
								        <li>e、在您购买产品进行支付结算时，需提供银行卡卡号、银行预留手机号、或者信用卡卡号、持卡人姓名、到期日期等信息。</li>
								        <li>f、Sots也可能根据您的旅行计划、风格和喜好，包括膳食要求、出行/入离时间、座位选择、票务选择、保险选择以及Sots提供其他服务（如旅游、用车、门票、攻略等），需要您配合提供的其他个人信息。</li>
								    </ul>
								    <p>（2）您可以通过Sots为其他人预订，您需要提交该旅客的个人信息，向Sots提供该旅客的个人信息之前，您确保您已经取得其他旅客本人的同意，并确保其已知晓并接受本隐私政策。</p>
								    <p>（3）Sots将在您使用Sots服务过程中，自动收集个人信息：</p>
								    <ul>
								        <li>①日志信息，指您使用Sots的服务时，系统可能通过cookies、web beacon或其他方式自动采集的信息，包括：
								        <ul>
								            <li>a、设备信息或软件信息，具体例如您的IP地址和移动设备所用的版本和设备识别码（IDFA/IMEI）、以及通过网页浏览器、移动设备用于接入Sots服务的配置信息。</li>
								            <li>b、在使用Sots服务时搜索或浏览的信息，具体例如您使用的网页或APP搜索词语、访问页面，以及您在使用Sots服务时浏览或提供的其他信息。</li>
								            <li>c、您通过Sots的服务分享的内容所包含的信息，例如拍摄或上传的共享照片或评论，以及日期、时间等。</li>
								        </ul>
								        </li>
								        <li>②位置信息，指您开启设备定位功能并使用Sots基于位置提供的相关服务时，收集的有关您的位置信息，例如通过GPS或WLAN等方式收集您的地理位置信息，或您提供账户信息中包含的您所在地区信息，您或其他人上传的显示您当前或曾经所处地理位置的共享信息等。您可以通过关闭定位功能，停止对您的地理位置信息的收集。</li>
								    </ul>
								    <p>（4）Sots会从关联公司、业务合作伙伴来源获得您的相关信息。例如当您通过Sots关联公司、业务合作伙伴网站及其移动应用软件等预订时，您向其提供的预订信息可能会转交给Sots，以便Sots处理您的订单，确保您顺利预订。又如，Sots允许您使用社交媒体帐号关联Sots的帐号进行登录，在您同意的情况下（您授权给该社交平台），您的相关个人信息会通过社交平台分享给Sots。</p>
								</div>
							</div>
						</div>
						<!-- /card -->
						<div class="card">
							<div class="card-header" role="tab">
								<h5 class="mb-0">
									<a class="collapsed" data-toggle="collapse" href="#collapseThree_reccomendations" aria-expanded="false">
										<i class="indicator ti-plus"></i>个人敏感信息
									</a>
								</h5>
							</div>
							<div id="collapseThree_reccomendations" class="collapse" role="tabpanel" data-parent="#reccomendations">
								<div class="card-body">
									<p>某些特殊的个人信息可能被认为是个人敏感信息，例如您的种族、宗教、个人健康和医疗信息等，这些个人敏感信息将受到严格保护。在此提醒您，您在使用Sots为您提供的产品及服务中所上传或发布的内容和信息可能会泄露您的个人敏感信息。因此，您需要在使用Sots为您提供的产品或服务前谨慎考虑。您同意这些个人敏感信息将按照《Sots隐私政策》阐明的目的和方式来进行处理。 因此，您需要在使用Sots为您提供的产品或服务前谨慎考虑。您同意这些个人敏感信息将按照《Sots隐私政策》阐明的目的和方式来进行处理。</p>
								</div>
							</div>
						</div>
						<!-- /card -->
						<div class="card">
							<div class="card-header" role="tab">
								<h5 class="mb-0">
									<a class="collapsed" data-toggle="collapse" href="#collapseThree_reccomendations" aria-expanded="false">
										<i class="indicator ti-plus"></i>信息事件的处理
									</a>
								</h5>
							</div>
							<div id="collapseThree_reccomendations" class="collapse" role="tabpanel" data-parent="#reccomendations">
								<div class="card-body">
									<p>在不幸发生个人信息安全事件后，Sots将按照法律法规的要求向您告知：安全事件的基本情况和可能的影响、Sots已采取或将要采取的处置措施、您可自主防范和降低风险的建议、对您的补救措施等。事件相关情况Sots将以邮件、信函、电话、推送通知等方式告知您，难以逐一告知个人信息主体时，Sots会采取合理、有效的方式发布公告。同时，Sots还将按照监管部门要求，上报个人信息安全事件的处置情况。</p>
								</div>
							</div>
						</div>
						<!-- /card -->
					</div>
					<!-- /accordion Reccomendations -->
					
					<h4 class="nomargin_top">免责声明</h4>
					<div role="tablist" class="add_bottom_45 accordion_2" id="terms">
						<div class="card">
							<div class="card-header" role="tab">
								<h5 class="mb-0">
									<a data-toggle="collapse" href="#collapseOne_terms" aria-expanded="true"><i class="indicator ti-plus"></i>免责条例</a>
								</h5>
							</div>

							<div id="collapseOne_terms" class="collapse" role="tabpanel" data-parent="#terms">
								<div class="card-body">
									<p>1、任何人因使用本网站而可能遭致的意外及其造成的损失（包括因下载本网站可能链接的第三方网站内容而感染电脑病毒），我们对此概不负责，亦不承担任何法律责任。</p>		 
									<p>2、本网站禁止制作、复制、发布、传播等具有反动、色情、暴力、淫秽等内容的信息，一经发现，立即删除。若您因此触犯法律，我们对此不承担任何法律责任。 </p>
									<p>3、本网站会员自行上传或通过网络收集的资源，我们仅提供一个展示、交流的平台，不对其内容的准确性、真实性、正当性、合法性负责，也不承担任何法律责任。</p>
									<p>4、任何单位或个人认为通过本网站网页内容可能涉嫌侵犯其著作权，应该及时向我们提出书面权利通知，并提供身份证明、权属证明及详细侵权情况证明。我们收到上述法律文件后，将会依法尽快处理。</p>
								</div>
							</div>
						</div>
						<!-- /card -->
					</div>
					<!-- /accordion Terms -->
					
				</div>
				<!-- /col -->
			</div>
			<!-- /row -->
		</div>
		<!--/container-->
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
	<!--/footer-->
	</div>
	<!-- page -->
	
	<div id="toTop"></div><!-- Back to top button -->
	
	<!-- COMMON SCRIPTS -->
    <script src="${ctx }/static/js/jquery-2.2.4.min.js"></script>
    <script src="${ctx }/static/js/common_scripts.js"></script>
    <script src="${ctx }/static/js/main.js"></script>
	<script src="${ctx }/static/assets/validate.js"></script>
	
</body>
</html>
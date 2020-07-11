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
    <title>Sots | 注册.</title>

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

<body id="register_bg">
	
	<nav id="menu" class="fake_menu"></nav>
	
	<div id="preloader">
		<div data-loader="circle-side"></div>
	</div>
	<!-- End Preload -->
	
	<div id="login">
		<aside>
			<figure>
				<a href="${ctx }/Index"><img src="${ctx }/static/img/logo_sticky.png" width="155" height="36" data-retina="true" alt="" class="logo_sticky"></a>
			</figure>
			<form autocomplete="off" class="layui-form" action="">
				<div class="form-group">
					<label>用户名</label>
					<input class="form-control" id="userName" type="text" name="userName">
					<div id="user_prompt" style="color:red">由英文字母、数字组成的4-16位字符，以字母开头</div>
					<i class="ti-user"></i>
				</div>
				<div class="form-group">
					<label>电话号码</label>
					<input class="form-control" type="text" name="userPhone" id="userPhone">
					<div id="phone_prompt" style="color:red"></div>
					<i class="ti-user"></i>
				</div>
				<div class="form-group">
					<label>邮箱</label>
					<input class="form-control" type="email" name="userEmail" id="userEmail">
					<div id="email_prompt" style="color:red"></div>
					<i class="icon_mail_alt"></i>
				</div>
				<div class="form-group">
					<label>密码</label>
					<input class="form-control" type="password" id="userPassword" name="userPassword">
					<div id="pwd_prompt" style="color:red"></div>
					<i class="icon_lock_alt"></i>
				</div>
				<div class="form-group">
					<label>确认密码</label>
					<input class="form-control" type="password" id="sureuserPassword" name="sureuserPassword">
					<div id="srpwd_prompt" style="color:red"></div>
					<i class="icon_lock_alt"></i>
				</div>
				<div class="form-group">
					<label >验证码</label>
					<input type="text" class="form-control" name="code" value="" id="reregname"/>
					<br/>
					<div id="re_right">
				        <a href="javascript:changeImg();"><img id="codeImg" src=""/>看不清</a>
			        </div>
					<span class="spin"></span>
					<i class="icon_lock_alt"></i>
				</div>
				<div class="form-group">
					<label>上传头像：</label>
				    <button type="button" class="layui-btn layui-btn-danger" id="userPhoto"><i class="layui-icon"></i>上传图片</button>
				</div>
				<div id="pass-info" class="clearfix"></div>
				<button type="button" class="btn_1 rounded full-width add_top_30" lay-filter="save" lay-submit>注册!</button>
				<div class="text-center add_top_10">您已经有账户了吗? <strong><a href="${ctx }/login.jsp">登录</a></strong></div>
			</form>
			<div class="copy">© 2020 Sots</div>
		</aside>
	</div>
	<!-- /login -->
	
	<!-- COMMON SCRIPTS -->
    <script src="${ctx }/static/js/jquery-2.2.4.min.js"></script>
    <script src="${ctx }/static/js/common_scripts.js"></script>
    <script src="${ctx }/static/js/main.js"></script>
	<script src="${ctx }/static/assets/validate.js"></script>
	
	<!-- SPECIFIC SCRIPTS -->
	<script src="${ctx }/static/js/pw_strenght.js"></script>
	
	<!-- Layui -->
	<script src="${ctx }/static/assets/layui.all.js"></script> 
	<script>
		layui.use('upload', function(){
			
			var $ = layui.jquery
			,upload = layui.upload
			,form = layui.form; 
			//设定文件大小限制
			upload.render({
		    elem: '#userPhoto'// 获得上传文件的文件名
		    ,url: '${ctx }/upload'
//		    ,size: 60 //限制文件大小，单位 KB
		    ,done: function(res){
		    	if(res.code > 0){
		    		layer.msg('上传成功',{icon: 6});
		    	}else{
		    		layer.msg('上传失败',{icon: 3});
		    	}
		    }
		  });
		
		// 实现增加的操作
		form.on('submit(save)',function(data){
			/* alert(JSON.stringify(data.field)); */
			$.post("${ctx }/addUser",data.field,
					function(res){
				if(res.code > 0){
					layer.msg("注册成功",{icon:6});
					window.location.href='${ctx}/login.jsp';
				}else{
					layer.msg("注册失败",{icon:3});
				}
				/* window.setTimeout(function(){
					var index = parent.layer.getFrameIndex(window.name);
				    parent.layer.close(index);
				    parent.location.reload();
				},1000); */
			});
			false;
		});
		
	});
	</script>
	
	<!-- code -->
	<script type="text/javascript">
		//定义更换验证码方法
		$(function(){
			changeImg();
		 });
		
	    // 定义一个当src发生改变时就到后台去获得一个随机的验证码
		function changeImg() {
		// 获得验证码图片元素 使用JavaScript获得
		var img = document.getElementById("codeImg");
		// 当src的路径发生改变，都会到后台去请求一次
		// new Date().getTime() 避免浏览器不去后台请求数据，因为有缓存
		img.src="${ctx }/CodeImg?"+new Date().getTime();
		}
	    
	</script>
	
	<!-- 验证 -->
	<script type="text/javascript">
        $(document).ready(function(){
        	$("#userName").blur(checkname);
        	$("#userPassword").blur(checkpassword);
        	$("#sureuserPassword").blur(checksureupassword);
        	$("#userPhone").blur(checkphone);
        	$("#userEmail").blur(checkemail);
        	
        	$("form").submit(function(){
				var flag=true;
				if(!checkname()) {flag = false;};
				if(!checkpassword()) {flag=false;};
				if(!checksureupassword()) {flag=false;};
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
           	 //密码验证2
	         function checkpassword(){
                 var user = $("#userPassword").val();
                 //var reg =  /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*? ]).*$/;
                 var reg =  /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z\\W]{6,18}$/;
                 if (!reg.test(user)) {
                     $("#pwd_prompt").text("密码格式输入不正确");
                     return false;
                 }else{
                	 $("#pwd_prompt").text("");
                     return true;
                 }
             };
              $("#userPassword").focus(function(){
            	 var user = $("#userPassword").val();
            	 var reg =  /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z\\W]{6,18}$/;
            	 //var reg =  /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*? ]).*$/;
                 if (!reg.test(user)) {
                     $("#pwd_prompt").text("密码在6~18之间，必须包括数字和字母");
                     return false;
                 }else{
                	 $("#pwd_prompt").text("");
                     return true;
                 }
             }); 
             //确认密码验证3
	         function checksureupassword(){
	        	 var pwd = $("#userPassword").val();
                 var surepwd = $("#sureuserPassword").val();
                 if (pwd != surepwd) {
                	 $("#srpwd_prompt").text("两次输入的密码不一致");
                	 return false;
				} else{
					$("#srpwd_prompt").text("");
               	 	return true;
				}
             };
             //电话号码验证4
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
             //邮箱验证5
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
        });
        </script>
  
</body>
</html>
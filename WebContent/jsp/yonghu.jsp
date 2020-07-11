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

</head>

<body id="login_bg">
	
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
			  <form action="${ctx }/updateword" method="post">
				<div class="form-group">
					<label>用户名</label><span></span>
					<input type="text" class="form-control" onblur="checkname()" id="name" name="userName" value="${user.userName }">
					<i class="ti-user"></i>
					<div id="user_prompt" style="color:red"></div>    
				</div>
					<div class="form-group">
			<label >新密码</label>
			
			<input type="text"  class="form-control" onblur="checkpassword()" name="userPassword"  id="password"/>
			
				<div id="pwd_prompt" style="color:red"></div>    	
			<span class="spin"></span>
			<i class="icon_lock_alt"></i>
		    </div>
					<div class="form-group">
			<label >确认新密码</label>
			
			<input type="text" class="form-control" onblur="checksureupassword()" name="reuserPassword"  id="repassword"/>
			
					
			<span class="spin"></span>
			<i class="icon_lock_alt"></i>
		    </div>
			<div id="srpwd_prompt" style="color:red"></div>	
			<div id="pwd_prompt" style="color:red"></div>
				<input type="text" id="myid" onclick="cz()" class="btn_1 rounded full-width" value="提交" readonly="readonly">
			
			</form>
			
		</aside>
	</div>
	<!-- /login -->
		
	<!-- COMMON SCRIPTS -->
    <script src="${ctx }/static/js/jquery-2.2.4.min.js"></script>
    <script src="${ctx }/static/js/common_scripts.js"></script>
    <script src="${ctx }/static/js/main.js"></script>
	<script src="${ctx }/static/assets/validate.js"></script>
	<script type="text/javascript">
	   //用户名验证1
    function checkname(){
        var user = $("#name").val();
        var reg = /^([\u4e00-\u9fa5]{2,6}|[a-zA-Z\\.\\s]{1,20})$/;
        if (!reg.test(user)) {
            $("#user_prompt").text("用户名不正确");
            return false;
        }else{
       	 $("#user_prompt").text("");
            return true;
        }
    };
     $("#name").focus(function(){
   	 var user = $("#name").val();
        var reg = /^([\u4e00-\u9fa5]{2,6}|[a-zA-Z\\.\\s]{1,20})$/;
        if (!reg.test(user)) {
            $("#user_prompt").text("用户名由汉字，英文字母和数字组成的4-16位字符");
            return false;
        }else{
       	 $("#user_prompt").text("");
            return true;
        }
    }); 
	
	   function checkpassword(){
           var user = $("#password").val();
           var reg =  /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*? ]).*$/;
           if (!reg.test(user)) {
               $("#pwd_prompt").text("密码格式输入不正确");
               
           }else{
          	 $("#pwd_prompt").text("");
               
           }
       };
        $("#password").focus(function(){
      	 var user = $("#password").val();
      	 var reg =  /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*? ]).*$/;
           if (!reg.test(user)) {
               $("#pwd_prompt").text("最少6位，包括至少1个大写字母，1个小写字母，1个数字，1个特殊字符");
               
           }else{
          	 $("#pwd_prompt").text("");
             
           }
       }); 
        
	 function checksureupassword(){
    	 var pwd = $("#password").val();
         var surepwd = $("#repassword").val();
         if (pwd != surepwd || surepwd==null ) {
        	 $("#srpwd_prompt").text("两次输入的密码不一致");
        	 return false;
		} else{
			$("#srpwd_prompt").text("");
       	 	return true;
		}
     };
     function cz(){
    	 var userName=$("#name").val();
    	 var pwd = $("#password").val();
         var surepwd = $("#repassword").val();
         if (userName == "" || pwd=="" || surepwd==""|| pwd!=surepwd) {
        	 $("#srpwd_prompt").text("请完善信息！！");
        	 return false;
		} else{
			$("#srpwd_prompt").text("");
			$("#myid").attr("type","submit"); 
       	 	return true;
		}
     };
	</script>
  
</body>
</html>
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
			  <form id="mm">
				<div class="form-group">
					<label>请输入你绑定的QQ：</label>
					<input type="text" class="form-control" class="user" id="userName" value="${user.userEmail }" onblur="checkemail()" name="userName">
					<div id="email_prompt" style="color:red"></div>  
					<i class="ti-user"></i>
				</div>
				
				<!-- <div class="form-group">
			<label >验证码</label>
			
			<input type="text" class="form-control" name="code" value="" id="reregname"/>
			<br/>
					<div id="re_right">
				        <input type="submit" value="">
			        </div>
			<span class="spin"></span>
			<i class="icon_lock_alt"></i>
		    </div> -->
				
				
				<input type="button" onclick="login()" value="获取验证码" class="btn_1 rounded full-width"></input>
			
					<div class="form-group">
			<label >请输入验证码</label>
			<input type="hidden" class="form-control"  name="code1" value="${yanz}" id="reregname"/>
			<input type="text" class="form-control"  name="code" value="" id="reregname"/>
			<div id="hh" style="color:red"></div> 
			<br/>
					
			<span class="spin"></span>
			<i class="icon_lock_alt"></i>
		    </div>
		    <input type="hidden" name="hhh"  value="${user.userEmail }" class="btn_1 rounded full-width" ></input>
		   <a id="myid" href=""><input type="button"   onclick="check()" class="btn_1 rounded full-width" value="下一步"></input></a>
			
				<div id="email_prompt" style="color:red"></div>  
			</form>
			
		</aside>
	</div>
	<!-- /login -->
		
	<!-- COMMON SCRIPTS -->
    <script src="${ctx }/static/js/jquery-2.2.4.min.js"></script>
    <script src="${ctx }/static/js/common_scripts.js"></script>
    <script src="${ctx }/static/js/main.js"></script>
	<script src="${ctx }/static/assets/validate.js"></script>
	<script src="${ctx }/static/js/jquery-3.4.1.js"></script>
	<script type="text/javascript">

	
    	function login() {
    		var userName = $("input[name=userName]").val();
    		var hhh = $("input[name=hhh]").val();
    		/* var userName1 = $("input[name=hhh]").val(); */
	           var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;  
	           if (!reg.test(userName)) {
	               $("#email_prompt").text("QQ邮箱格式不正确");
	               
	           }
	         
	           else{
	        	   $("#email_prompt").text("");
	        	     $.ajax({
	        	            //几个参数需要注意一下
	        	                type: "GET",//方法类型
	        	                dataType: "json",//预期服务器返回的数据类型
	        	                url: "${ctx}/send1" ,//url
	        	                data: $('form').serialize(),
	        	                success: function (data) {
	        	                    console.log(result);//打印服务端返回的数据(调试用)
	        	                    if (result>0) {
	        	                        alert("SUCCESS");
	        	                    }
	        	                    ;
	        	                },
	        	                error : function() {
	        	                   
	        	                    window.location.reload();  
	        	                }
	        	               
	        	            });
	        	      
	           }
	          
        }
    	
        function check(){
        	var userName = $("input[name=userName]").val();
        	var hhh = $("input[name=hhh]").val();
        	var code = $("input[name=code]").val();
        	var code1 = $("input[name=code1]").val();
        	alert(code1);
            if (userName=="") {
                $("#email_prompt").text("请完善信息！");
               
            }
            else if (code1!=code || code=="") {
                $("#hh").text("验证码不正确！");
               
            }
            else {
           	 $("#email_prompt").text("");
           	$("#myid").attr("href","yonghu.jsp");
           	session.removeAttribute("user.userEmail")
            }
        }
        
	</script>
  
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zh-CN">
 	<!--主页-->
 	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>欢迎注册</title>
		
		<!-- Bootstrap -->
		<link href="<c:url value="/jsps/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
		<link href="<c:url value="/jsps/bootstrap/css/carousel.css"/>" rel="stylesheet">
		
		<link rel="stylesheet" href="<c:url value="/jsps/css/main.css"/>"/>
		
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	
	<body>
		<jsp:include page="/jsps/head.jsp"/>
		
		<div class="container" style="margin:50px auto 400px;">
	    	<form class="form-signin" method="post" action='<c:url value="/UserServlet"/>'>
	    		<input type="hidden" name="method" value="register">
	    		
	      		<h1 class="form-signin-heading">欢迎注册</h1>
	        	<label></label>
	        	<label for="inputName" class="sr-only">用户名（学号）</label>
	        	<input name="userName" type="text" id="inputName" class="form-control" placeholder="用户名" required autofocus>
	        	<label></label>
	        	<label for="inputPassword" class="sr-only">密码</label>
	        	<input name="password" type="password" id="inputPassword" class="form-control" placeholder="密码" required>
	        	<label></label>
	        	<label for="inputPasswordAgain" class="sr-only">再输入一遍密码</label>
	        	<input name="passwordAgain" type="password" id="inputPasswordAgain" class="form-control" placeholder="再输入一遍密码" required>
	        	<label></label>
	        	<label for="inputEmail" class="sr-only">邮箱</label>
	        	<input name="email" type="email" id="inputEmail" class="form-control" placeholder="邮箱" required>
	        	<label></label>
	        	<!-- 
	        	<div class="checkbox">
	          		<label>
	           			<input type="checkbox" value="remember-me"> 记住密码
	          		</label>
	        	</div> -->
	        	
				
	      		<div class="btn-group btn-block text-right" role="group">
	      			<button class="btn  btn-lg btn-primary" type="submit">注册</button>
	      			<a class="btn  btn-lg btn-primary" href='<c:url value="/jspslogin.jsp"/>'>登录</a>
	      		</div>
	      	</form>
	    </div> <!-- /container -->

		<jsp:include page="/jsps/foot.jsp"/>
	</body>
  	<!-- jQuery -->
	<script src="<c:url value="/jsps/bootstrap/js/jquery.min.js"/>"></script>
	<!-- bootstrap的js -->
	<script src="<c:url value="/jsps/bootstrap/js/bootstrap.min.js"/>"></script>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zh-CN">
 	<!--主页-->
 	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>大学</title>
		
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
		<jsp:include page="/jsps/content.jsp"/>
		<jsp:include page="/jsps/foot.jsp"/>
	</body>
	
	
	<!-- jQuery -->
	<script src="<c:url value="/jsps/bootstrap/js/jquery.min.js"/>"></script>
	<!-- bootstrap的js -->
	<script src="<c:url value="/jsps/bootstrap/js/bootstrap.min.js"/>"></script>
</html>
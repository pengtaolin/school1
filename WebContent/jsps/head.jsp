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
		<!--头部-->
		<a id="top"></a> 
		<div>
			<div class="marketing">
				<img class="img-responsive" src="<c:url value="/jsps/img/school.jpg"/>" width="100%"/>
			</div>
			
		</div>
		<!-- 固定导航栏 -->
		<nav class="navbar navbar-inverse navbar-static-top my_margin">
		  <div class="container">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		        <span class="sr-only">切换导航</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#">大学</a>
		    </div>
		    <div id="navbar" class="navbar-collapse collapse">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="<c:url value="/jsps/main.jsp"/>">首页</a></li>
		        <c:forEach items="${applicationScope.columns }" var="column">
			        <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${column.columnName }</a>
			          <ul class="dropdown-menu">
			          	<c:forEach items="${column.childColumn }" var="child">
			            	<li><a href='<c:url value="/ColumnServlet?method=find&id=${child.columnId}"/>'>${child.columnName }</a></li>
			            </c:forEach>
			          </ul>
			        </li>
			    </c:forEach>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="<c:url value="/jsps/login.jsp"/>">登录</a></li>
		        <li><a href="<c:url value="/jsps/message.jsp"/>">留言板</a></li>
		      </ul>
		    </div><!--/.nav-collapse -->
		  </div>
		</nav>
	</body>
  	<!-- jQuery -->
	<script src="<c:url value="/jsps/bootstrap/js/jquery.min.js"/>"></script>
	<!-- bootstrap的js -->
	<script src="<c:url value="/jsps/bootstrap/js/bootstrap.min.js"/>"></script>
</html>    

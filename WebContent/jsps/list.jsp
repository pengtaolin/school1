<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="zh-CN">
 	<!--主页-->
 	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>${column.parentColumn.columnName }</title>
		
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
		
		<!--中间框架-->
		<div class="container marketing my_margin_top">
			<!--文章内容-->
			<div class="row">
				<!-- /.col-lg-3 -->
				<div class="col-lg-3">
					<div class="list-group">
						<!-- 父节点 -->
					    <a class="list-group-item active">${column.parentColumn.columnName }</a>
						<!-- 同伴节点 -->
						<c:forEach items="${column.parentColumn.childColumn }" var="childColumn">
							<a href='<c:url value="/ColumnServlet?method=find&id=${childColumn.columnId }"/>' class="list-group-item">${childColumn.columnName }</a>
						</c:forEach>
						
					</div>
				</div>
				<!-- /.col-lg-9 -->
				<div class="col-lg-9">
					<!--路径导航条-->
					<ol class="breadcrumb">
						<li><a href='<c:url value="/ColumnServlet?method=findAll"/>'>首页</a></li>
					  	<li><a>${column.parentColumn.columnName }</a></li>
					  	<li><a href='<c:url value="/ColumnServlet?method=find&id=${column.columnId }"/>'>${column.columnName }</a></li>
					  	<li class="active">列表</li>
					</ol>
					<div class="panel panel-primary">
						<div class="panel-heading">
							列表
						</div>	
			  			<div class="panel-body">
			  				<div class="list-group">
			  					<c:forEach items="${articleList }" var="article" varStatus="art">
			  						<c:choose>
			  							<c:when test="${art.index%2 eq 0 }">
			  								<a title="${article.articleTitle }" href='<c:url value="/ArticleServlet?method=find&columnId=${article.column.columnId }&articleId=${article.articleId }"/>' class="list-group-item list-group-item-success">
					  							<span class="badge"><fmt:formatDate pattern="yyyy-MM-dd" value="${article.articleTime }"/></span>
					  							${article.articleTitle}
					  						</a>
			  							</c:when>
			  							<c:otherwise>
			  								<a title="${article.articleTitle }" href='<c:url value="/ArticleServlet?method=find&columnId=${article.column.columnId }&articleId=${article.articleId }"/>' class="list-group-item list-group-item-info">
												<span class="badge"><fmt:formatDate pattern="yyyy-MM-dd" value="${article.articleTime }"/></span>
												${article.articleTitle}
											</a>
			  							</c:otherwise>
			  						</c:choose>
			  					</c:forEach>
							</div>
						</div>
						<div class="panel-footer">
							<!--分页-->
			  				<ul class="pager pagination text-center">
							  	<li>
									<a href="#">&laquo;第一页</a>
								</li>
								<li>
									<a href="#">11</a>
								</li>
								<li>
									<a href="#">12</a>
								</li>
								<li class="active">
									<a href="#">13</a>
								</li>
								<li>
									<a href="#">14</a>
								</li>
								<li>
									<a href="#">15</a>
								</li>
								<li class="disabled">
									<a href="#">最后一页&raquo;</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>		
		<jsp:include page="/jsps/foot.jsp"/>
	</body>
  	<!-- jQuery -->
	<script src="<c:url value="/jsps/bootstrap/js/jquery.min.js"/>"></script>
	<!-- bootstrap的js -->
	<script src="<c:url value="/jsps/bootstrap/js/bootstrap.min.js"/>"></script>
</html>




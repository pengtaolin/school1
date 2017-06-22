<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
 	<!--主页-->
 	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>${article.column.columnName }</title>
		
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
					    <a class="list-group-item active">${article.column.parentColumn.columnName }</a>
						<!-- 同伴节点 -->
						<c:forEach items="${article.column.parentColumn.childColumn }" var="childColumn">
							<a href='<c:url value="/ColumnServlet?method=find&id=${childColumn.columnId }"/>' class="list-group-item">${childColumn.columnName }</a>
						</c:forEach>
					</div>
				</div>
				<!-- /.col-lg-9 -->
				<div class="col-lg-9">
					<!--路径导航条-->
					<ol class="breadcrumb">
						<li><a href='<c:url value="/ColumnServlet?method=findAll"/>'>首页</a></li>
					  	<li><a>${article.column.parentColumn.columnName }</a></li>
					  	<li><a href='<c:url value="/ColumnServlet?method=find&id=${article.column.columnId }"/>'>${article.column.columnName }</a></li>
					  	<li><a>${article.articleTitle }</a></li>
					  	<li class="active">正文</li>
					</ol>
					<div class="panel panel-primary">
						<div class="panel-heading">
							正文
						</div>	
			  			<div class="panel-body">
			  				<!--${article.articleContent }-->
			  				
			  				<div class="text-center">
			  					<h2><strong>${article.articleTitle }</strong></h2>
			  					<h6><strong>作者：${article.articleAuthor }&emsp;&emsp;日期：<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${article.articleTime }"/>&emsp;&emsp;来源：本站原创&emsp;&emsp;点击数：${article.articleNumber }次</strong></h6>
			  				</div>
			  				
			  				<div class="my_margin_top">
								${article.articleContent }
			  				</div>
			  				<!-- 正文内容 
			  				<div class="text-center">
			  					<h2><strong>赣南师范大学位于江西南部</strong></h2>
			  					<h6><strong>作者：大大 日期：2017-5-3 11:05:00　来源：本站原创  点击数：87次</strong></h6>
			  				</div>
			  				
							<p>赣南师范大学位于江西南部、京九线上享有“南国宋城、客家摇篮、红色故都、生态家园、稀土王国、
							世界钨都、脐橙之乡”等美誉的赣州市，是一所校园环境优美、文化底蕴深厚、学科门类齐全、办学特色鲜明、
							综合实力较强、发展前景良好的省属本科高校。</p>
		　　					<p>学校创办于1958年6月，时为赣南师范专科学校。1984年获准改为赣南师范学院，
							为省属本科师范院校。2003年成为硕士学位授予权单位。2016年3月，经教育部批准更名为赣南师范大学。
							办学58年来，学校坚持立足红土地办学、用苏区精神育人、为苏区振兴服务、做苏区精神传人，
							为国家培养输送了10万余名合格毕业生，赢得了“下得去、用得上、留得住、干得好”的美誉，
							涌现了一大批全国优秀教师、全国劳动模范、全国“五一”劳动奖章获得者、全国优秀县委书记等优秀人才。</p>
		　　					<p>学校设有文学院、新闻与传播学院、政治与法律学院、马克思主义学院、历史文化与旅游学院、
							外国语学院、教育科学学院、数学与计算机科学学院、物理与电子信息学院、化学化工学院、脐橙学院（生命与环境科学学院）、
							地理与规划学院、商学院、音乐学院、美术学院、体育学院、继续教育学院、高等职业教育学院、
							国际教育学院等19个教学学院，面向全国29个省（市、区）招生，全日制在校生19300余人，其中研究生1000余人。</p>
							<p>学校设有文学院、新闻与传播学院、政治与法律学院、马克思主义学院、历史文化与旅游学院、
							外国语学院、教育科学学院、数学与计算机科学学院、物理与电子信息学院、化学化工学院、脐橙学院（生命与环境科学学院）、
							地理与规划学院、商学院、音乐学院、美术学院、体育学院、继续教育学院、高等职业教育学院、
							国际教育学院等19个教学学院，面向全国29个省（市、区）招生，全日制在校生19300余人，其中研究生1000余人。</p>
							
							<img src="<c:url value="/jsps/img/m12.jpg"/>"/>
							<img src="<c:url value="/jsps/img/m12.jpg"/>"/>
							<img src="<c:url value="/jsps/img/m12.jpg"/>"/>-->
			  			</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /container -->
		<jsp:include page="/jsps/foot.jsp"/>
	</body>
  	<!-- jQuery -->
	<script src="<c:url value='/jsps/bootstrap/js/jquery.min.js'/>"></script>
	<!-- bootstrap的js -->
	<script src="<c:url value='/jsps/bootstrap/js/bootstrap.min.js'/>"></script>
</html>


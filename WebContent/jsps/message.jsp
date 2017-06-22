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
		<title>留言板</title>
		
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
		
		<div class="container marketing my_margin_top">
			<div class="panel panel-primary">
				<div class="panel-heading">
					留言板
				</div>	
				<div class="panel-body">
					<ul class="media-list">
					    <li class="media">
					        <a class="pull-left" href="#">
					            <img class="media-object img" src="<c:url value="/jsps/img/m0.jpg"/>" alt="...">
					        </a>
					        <div class="media-body">
					            <h4 class="media-heading">hello</h4>
					            <div>Font Awesome 中包含的所有图标都是矢量的，也就可以任意缩放，
					            	避免了一个图标做多种尺寸的麻烦。
					            	SS对字体可以设置的样式也同样能够运用到这些图标上了。
					            </div>
					        </div>
					    </li>
					    <li class="media">
					    	<a class="pull-left" href="#">
					            <img class="media-object img" src="<c:url value="/jsps/img/m0.jpg"/>" alt="...">
					        </a>
					        <div class="media-body">
					            <h4 class="media-heading">hello</h4>
					            <div>Font Awesome 中包含的所有图标都是矢量的，也就可以任意缩放，
					            	避免了一个图标做多种尺寸的麻烦。
					            	SS对字体可以设置的样式也同样能够运用到这些图标上了。
					            </div>
					        </div>
					    </li>
					    <li class="media">
					    	<a class="pull-left" href="#">
					            <img class="media-object img" src="<c:url value="/jsps/img/m0.jpg"/>" alt="...">
					        </a>
					        <div class="media-body">
					            <h4 class="media-heading">hello</h4>
					            <div>Font Awesome 中包含的所有图标都是矢量的，也就可以任意缩放，
					            	避免了一个图标做多种尺寸的麻烦。
					            	SS对字体可以设置的样式也同样能够运用到这些图标上了。
					            </div>
					        </div>
					    </li>
					</ul>
				</div>
			
				<!--提交区域-->
				<div class="panel-footer">
					<div class="media">
				    	<form method="post" action="message.jsp">
					    	<a class="pull-left" href="#">
					            <img class="media-object img" src="<c:url value="/jsps/img/m0.jpg"/>" alt="...">
					        </a>
					        <div class="media-body">
					           	<div class="my_margin_left">
					           		<h4>标题：</h4><input type="text" name="title"/>
					           	 	<h4>内容：</h4>
					            	<textarea name="content1" cols="100" rows="8" style="width: 100%">
									</textarea>
									<br />
									<input type="submit" name="button" value="提交内容" /> (提交快捷键: Ctrl + Enter)
					            </div>
					        </div>
						</form>
				    </div>
				</div>	
			</div>	
		</div>
		<!-- /container -->
		<jsp:include page="/jsps/foot.jsp"/>
	</body>
  	<!-- jQuery -->
	<script src="<c:url value="/jsps/bootstrap/js/jquery.min.js"/>"></script>
	<!-- bootstrap的js -->
	<script src="<c:url value="/jsps/bootstrap/js/bootstrap.min.js"/>"></script>


	<script charset="utf-8" src="<c:url value='/editor/kindeditor.js'/>"></script>
	<script charset="utf-8" src="<c:url value='/editor/lang/zh-CN.js'/>"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content1"]', {
				//cssPath : '../plugins/code/prettify.css',
				//uploadJson : '../jsp/upload_json.jsp',
				//fileManagerJson : '../jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
</html>
		
		
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 图片新闻 -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
		<li data-target="#myCarousel" data-slide-to="3"></li>
	</ol>
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<img class="first-slide" src="<c:url value="/jsps/img/m10.jpg"/>" alt="First slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>图片1</h1>
					<p>风景好好</p>
					<p>
						<a class="btn btn-lg btn-primary" href="#" role="button">注册</a>
					</p>
				</div>
			</div>
		</div>
		<div class="item">
			<img class="second-slide" src="<c:url value="/jsps/img/m3.jpg"/>" alt="Second slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>图片2</h1>
					<p>风景好好</p>
					<p>
						<a class="btn btn-lg btn-primary" href="#" role="button">注册</a>
					</p>
				</div>
			</div>
		</div>
		<div class="item">
			<img class="third-slide" src="<c:url value="/jsps/img/m3.jpg"/>" alt="Third slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>图片3</h1>
					<p>风景好好</p>
					<p>
						<a class="btn btn-lg btn-primary" href="#" role="button">注册</a>
					</p>
				</div>
			</div>
		</div>
		<div class="item">
			<img class="four-slide" src="<c:url value="/jsps/img/m13.jpg"/>" alt="Four slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>图片4</h1>
					<p>风景好好</p>
					<p>
						<a class="btn btn-lg btn-primary" href="#" role="button">注册</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">上一个</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">下一个</span>
	</a>
</div>
<!-- /.carousel -->


<!--中间框架-->
<div class="container marketing">
	<!--新闻公告-->
	<div class="row">
		<!-- /.col-lg-7 左边切换栏 -->
		<div class="col-lg-7">
			<ul class="nav nav-tabs" role="tablist">
				<c:forEach items="${applicationScope.mainLeft }" var="leftColumn" varStatus="left">
					<li role="presentation" <c:if test="${left.first }">class="active"</c:if>>
						<a href="#${leftColumn.columnId }" aria-controls="${leftColumn.columnId }" role="tab" data-toggle="tab">${leftColumn.columnName }</a>
					</li>
				</c:forEach>
			</ul>
			
			<!--切换栏 -->
			<div class="tab-content">
				<c:forEach items="${applicationScope.mainLeft }" var="leftColumn" varStatus="left">
					<div role="tabpanel" class="tab-pane <c:if test="${left.first }">active</c:if>" id="${leftColumn.columnId }">
						<div class="list-group">
						    <c:forEach items="${leftColumn.articles }" var="article" varStatus="art">
						    	<c:choose>
		  							<c:when test="${art.index%2 eq 0 }">
		  								<a title="${article.articleTitle }" href="<c:url value='/ArticleServlet?method=find&columnId=${leftColumn.columnId }&articleId=${article.articleId }'/>" class="list-group-item list-group-item-success">
		  									<span class="badge"><fmt:formatDate pattern="yyyy-MM-dd" value="${article.articleTime }"/></span>
								    		${article.articleTitle }
									    </a>
		  							</c:when>
		  							<c:otherwise>
		  								<a title="${article.articleTitle }" href="<c:url value='/ArticleServlet?method=find&columnId=${leftColumn.columnId }&articleId=${article.articleId }'/>" class="list-group-item list-group-item-info">
		  									<span class="badge"><fmt:formatDate pattern="yyyy-MM-dd" value="${article.articleTime }"/></span>
											${article.articleTitle }
										</a>
		  							</c:otherwise>
		  						</c:choose>
						    </c:forEach>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		
		
		<!-- /.col-lg-5右边切换栏 -->
		<div class="col-lg-5">
		  	<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<c:forEach items="${applicationScope.mainRight }" var="rightColumn" varStatus="right">
					<li role="presentation" <c:if test="${right.first }">class="active"</c:if>>
						<a href="#${rightColumn.columnId }" aria-controls="${rightColumn.columnId }" role="tab" data-toggle="tab">${rightColumn.columnName }</a>
					</li>
				</c:forEach>
			</ul>
			
			<!-- Tab panes -->
			<div class="tab-content">
				<c:forEach items="${applicationScope.mainRight }" var="rightColumn" varStatus="right">
					<div role="tabpanel" class="tab-pane <c:if test="${right.first }">active</c:if>" id="${rightColumn.columnId }">
						<div class="list-group">
						    <c:forEach items="${rightColumn.articles }" var="article" varStatus="art">
						    	<c:choose>
		  							<c:when test="${art.index%2 eq 0 }">
		  								<a title="${article.articleTitle }" href="<c:url value='/ArticleServlet?method=find&columnId=${rightColumn.columnId }&articleId=${article.articleId }'/>" class="list-group-item list-group-item-success">
		  									<span class="badge"><fmt:formatDate pattern="yyyy-MM-dd" value="${article.articleTime }"/></span>
								    		${article.articleTitle }
									    </a>
		  							</c:when>
		  							<c:otherwise>
		  								<a title="${article.articleTitle }" href="<c:url value='/ArticleServlet?method=find&columnId=${rightColumn.columnId }&articleId=${article.articleId }'/>" class="list-group-item list-group-item-info">
		  									<span class="badge"><fmt:formatDate pattern="yyyy-MM-dd" value="${article.articleTime }"/></span>
											${article.articleTitle }
										</a>
		  							</c:otherwise>
		  						</c:choose>
						    </c:forEach>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	
	<div class="row clearfix">
		<div class="col-md-4 column">
			<h2>
					标题
			</h2>
			<p>
				赣南师范大学位于江西南部、京九线上享有“南国宋城、客家摇篮、
				红色故都、生态家园、稀土王国、世界钨都、脐橙之乡”等美誉的赣州市，
				是一所校园环境优美、文化底蕴深厚、学科门类齐全、办学特色鲜明、综合实力较强、
				发展前景良好的省属本科高校。
			</p>
			<p>
				<a class="btn" href="#">详细内容 »</a>
			</p>
		</div>
		<div class="col-md-4 column">
			<h2>
					标题
			</h2>
			<p>
				赣南师范大学位于江西南部、京九线上享有“南国宋城、客家摇篮、
				红色故都、生态家园、稀土王国、世界钨都、脐橙之乡”等美誉的赣州市，
				是一所校园环境优美、文化底蕴深厚、学科门类齐全、办学特色鲜明、综合实力较强、
				发展前景良好的省属本科高校。
			</p>
			<p>
				<a class="btn" href="#">详细内容 »</a>
			</p>
		</div>
		<div class="col-md-4 column">
			<h2>
					标题
			</h2>
			<p>
				赣南师范大学位于江西南部、京九线上享有“南国宋城、客家摇篮、
				红色故都、生态家园、稀土王国、世界钨都、脐橙之乡”等美誉的赣州市，
				是一所校园环境优美、文化底蕴深厚、学科门类齐全、办学特色鲜明、综合实力较强、
				发展前景良好的省属本科高校。
			</p>
			<p>
				<a class="btn" href="#">详细内容 »</a>
			</p>
		</div>
		<div class="col-md-4 column">
			<h2>
					标题
			</h2>
			<p>
				赣南师范大学位于江西南部、京九线上享有“南国宋城、客家摇篮、
				红色故都、生态家园、稀土王国、世界钨都、脐橙之乡”等美誉的赣州市，
				是一所校园环境优美、文化底蕴深厚、学科门类齐全、办学特色鲜明、综合实力较强、
				发展前景良好的省属本科高校。
			</p>
			<p>
				<a class="btn" href="#">详细内容 »</a>
			</p>
		</div>
		<div class="col-md-4 column">
			<h2>
					标题
			</h2>
			<p>
				赣南师范大学位于江西南部、京九线上享有“南国宋城、客家摇篮、
				红色故都、生态家园、稀土王国、世界钨都、脐橙之乡”等美誉的赣州市，
				是一所校园环境优美、文化底蕴深厚、学科门类齐全、办学特色鲜明、综合实力较强、
				发展前景良好的省属本科高校。
			</p>
			<p>
				<a class="btn" href="#">详细内容 »</a>
			</p>
		</div>
		<div class="col-md-4 column">
			<h2>
					标题
			</h2>
			<p>
				赣南师范大学位于江西南部、京九线上享有“南国宋城、客家摇篮、
				红色故都、生态家园、稀土王国、世界钨都、脐橙之乡”等美誉的赣州市，
				是一所校园环境优美、文化底蕴深厚、学科门类齐全、办学特色鲜明、综合实力较强、
				发展前景良好的省属本科高校。
			</p>
			<p>
				<a class="btn" href="#">详细内容 »</a>
			</p>
		</div>
	</div>
	
	
	<div class="row my_margin_top">
	    <div class="col-sm-6 col-md-3">
	         <div class="thumbnail">
	            <img src="<c:url value="/jsps/img/m12.jpg"/>" 
	             alt="通用的占位符缩略图">
	            <div class="caption">
	                <h3>缩略图标签</h3>
	                <p>一些示例文本。一些示例文本。</p>
	                <p>
	                    <a href="#" class="btn btn-primary" role="button">
	                        按钮
	                    </a> 
	                    <a href="#" class="btn btn-default" role="button">
	                        按钮
	                    </a>
	                </p>
	            </div>
	         </div>
	    </div>
	    <div class="col-sm-6 col-md-3">
	        <div class="thumbnail">
	            <img src="<c:url value="/jsps/img/m22.jpg"/>" 
	            alt="通用的占位符缩略图">
	            <div class="caption">
	                <h3>缩略图标签</h3>
	                <p>一些示例文本。一些示例文本。</p>
	                <p>
	                    <a href="#" class="btn btn-primary" role="button">
	                        按钮
	                    </a> 
	                    <a href="#" class="btn btn-default" role="button">
	                        按钮
	                    </a>
	                </p>
	            </div>
	        </div>
	    </div>
	    <div class="col-sm-6 col-md-3">
	        <div class="thumbnail">
	            <img src="<c:url value="/jsps/img/m22.jpg"/>" 
	            alt="通用的占位符缩略图">
	            <div class="caption">
	                <h3>缩略图标签</h3>
	                <p>一些示例文本。一些示例文本。</p>
	                <p>
	                    <a href="#" class="btn btn-primary" role="button">
	                        按钮
	                    </a> 
	                    <a href="#" class="btn btn-default" role="button">
	                        按钮
	                    </a>
	                </p>
	            </div>
	        </div>
	    </div>
	    <div class="col-sm-6 col-md-3">
	        <div class="thumbnail">
	            <img src="<c:url value="/jsps/img/m22.jpg"/>" 
	            alt="通用的占位符缩略图">
	            <div class="caption">
	                <h3>缩略图标签</h3>
	                <p>一些示例文本。一些示例文本。</p>
	                <p>
	                    <a href="#" class="btn btn-primary" role="button">
	                        按钮
	                    </a> 
	                    <a href="#" class="btn btn-default" role="button">
	                        按钮
	                    </a>
	                </p>
	            </div>
	        </div>
	    </div>
	</div>
	<hr class="featurette-divider">
	
</div>
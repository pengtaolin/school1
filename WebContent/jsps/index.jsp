<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
 	<!--主页-->
 	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>学府</title>
		
		<!-- Bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="bootstrap/css/carousel.css" rel="stylesheet">
		
		<link rel="stylesheet" href="css/main.css" />
		
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<a id="top"></a> 
		<!--头部-->
		<div>
			<div class="marketing">
				<img class="img-responsive" src="img/school.jpg" width="100%"/>
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
		      <a class="navbar-brand" href="#">学府</a>
		    </div>
		    <div id="navbar" class="navbar-collapse collapse">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="#">主页</a></li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">学校概况</a>
		          <ul class="dropdown-menu">
		            <li><a href="#">学校概况</a></li>
		            <li><a href="#">资质认证</a></li>
		            <li><a href="#">学校结构</a></li>
		            <li><a href="#">校园风光</a></li>
		            <li><a href="#">校园活动</a></li>
		            <li><a href="#">教学设备</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">教务管理</a>
		          <ul class="dropdown-menu">
		            <li><a href="#">班级组成</a></li>
		            <li><a href="#">教务公开</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">学校招生</a>
		          <ul class="dropdown-menu">
		            <li><a href="#">招生信息</a></li>
		            <li><a href="#">科目介绍</a></li>
		            <li><a href="#">学费列表</a></li>
		            <li><a href="#">在线报名</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">学校新闻</a>
		          <ul class="dropdown-menu">
		            <li><a href="#">校园快讯</a></li>
		            <li><a href="#">校园公告</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">教师风采</a>
		          <ul class="dropdown-menu">
		            <li><a href="#">团队介绍</a></li>
		            <li><a href="#">教师风采</a></li>
		            <li><a href="#">教育科研</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">学生天地</a>
		          <ul class="dropdown-menu">
		            <li><a href="#">学生档案</a></li>
		            <li><a href="#">校园生活</a></li>
		            <li><a href="#">心理咨询</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">校友联谊</a>
		          <ul class="dropdown-menu">
		            <li><a href="#">知名校友</a></li>
		            <li><a href="#">联谊章程</a></li>
		            <li><a href="#">我要加入</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">人员招聘</a>
		          <ul class="dropdown-menu">
		            <li><a href="#">职位介绍</a></li>
		            <li><a href="#">我来应聘</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">联系学校</a>
		          <ul class="dropdown-menu">
		            <li><a href="#">联系地址</a></li>
		            <li><a href="#">学校地图</a></li>
		          </ul>
		        </li>
		        
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="">登录</a></li>
		        <li><a href="">留言板</a></li>
		      </ul>
		    </div><!--/.nav-collapse -->
		  </div>
		</nav>
		
		

		
		<!-- 旋转木马 -->
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
					<img class="first-slide" src="img/m10.jpg" alt="First slide">
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
					<img class="second-slide" src="img/m3.jpg" alt="Second slide">
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
					<img class="third-slide" src="img/m14.jpg" alt="Third slide">
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
					<img class="four-slide" src="img/m13.jpg" alt="Four slide">
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
				<!-- /.col-lg-8 -->
				<div class="col-lg-7">
					<div>
					  	<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active">
								<a href="#item1" aria-controls="item1" role="tab" data-toggle="tab">校园快讯</a>
							</li>
							<li role="presentation">
								<a href="#item2" aria-controls="item2" role="tab" data-toggle="tab">教务公开</a>
							</li>
							<li role="presentation">
								<a href="#item3" aria-controls="item3" role="tab" data-toggle="tab">校园风光</a>
							</li>
							<li role="presentation">
								<a href="#item4" aria-controls="item4" role="tab" data-toggle="tab">学校结构</a>
							</li>
						</ul>
						
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="item1">
								<div class="list-group">
								    <a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
								    	016年暑假，在于都禾市镇的圩上
								    </a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市镇的圩上
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市
									</a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										年暑假，在于都
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市
									</a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										年暑假，在于都
									</a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市镇的圩上
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市
									</a>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane" id="item2">
								<div class="list-group">
								    <a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
								    	016年暑假，在于都禾市镇的圩上
								    </a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市镇的圩上
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市
									</a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										年暑假，在于都
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
								    	016年暑假，在于都禾市镇的圩上
								    </a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市镇的圩上
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市
									</a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										年暑假，在于都
									</a>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane" id="item3">
								<div class="list-group">
								    <a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
								    	016年暑假，在于都禾市镇的圩上
								    </a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										016年暑假，在于都
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市
									</a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										年暑假，在于都禾市镇的圩上
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
								    	016年暑假，在于都禾市镇的圩上
								    </a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市镇的圩上
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市
									</a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										年暑假，在于都
									</a>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane" id="item4">
								<div class="list-group">
								    <a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
								    	016年暑假，在于都禾市镇的圩上
								    </a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市镇
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市禾市镇的圩上
									</a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										年暑假，在于都
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
								    	016年暑假，在于都禾市镇的圩上
								    </a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市镇的圩上
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市
									</a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										年暑假，在于都
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-5">
					<div>
					  	<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active">
								<a href="#item5" aria-controls="item5" role="tab" data-toggle="tab">校园快讯</a>
							</li>
							<li role="presentation">
								<a href="#item6" aria-controls="item6" role="tab" data-toggle="tab">校园公告</a>
							</li>
						</ul>
						
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="item5">
								<div class="list-group">
								    <a href="##" class="list-group-item list-group-item-success"><span class="badge">11-20</span>
								    	016年暑假，在于都禾市镇的圩上
								    </a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">11-20</span>
										016年暑假，在于都禾市镇
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">11-20</span>
										016年暑假，在于都禾市圩上
									</a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">11-20</span>
										年暑假，在于都
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
								    	016年暑假，在于都禾市镇的圩上
								    </a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市镇的圩上
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市
									</a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										年暑假，在于都
									</a>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane" id="item6">
								<div class="list-group">
								    <a href="##" class="list-group-item list-group-item-success"><span class="badge">11-20</span>
								    	016年暑假，在于都禾市镇的圩上
								    </a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">11-20</span>
										016年暑假，在于都禾市镇
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">11-20</span>
										016年暑假，在于都禾市禾市镇的圩上
									</a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">11-20</span>
										年暑假，在于都
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
								    	016年暑假，在于都禾市镇的圩上
								    </a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市镇的圩上
									</a>
									<a href="##" class="list-group-item list-group-item-success"><span class="badge">2017-11-20</span>
										016年暑假，在于都禾市
									</a>
									<a href="##" class="list-group-item list-group-item-info"><span class="badge">2017-11-20</span>
										年暑假，在于都
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.row -->
			
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
			</div>
			<div class="row">
			    <div class="col-sm-6 col-md-3">
			         <div class="thumbnail">
			            <img src="img/m11.jpg" 
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
			            <img src="img/m21.jpg" 
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
			            <img src="img/m0.jpg" 
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
			            <img src="img/m22.jpg" 
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
		
		<!--尾部-->
		<!-- FOOTER -->
		<div class="panel-footer footer">
			<div class="container marketing text-center">
				<p class="pull-right">
					<a href="#top">回到顶部</a>
				</p>
				<p>Copyright © 2013 GanNan Normal University All Rights Reserved. </p>
				<p>赣南师范大学科技学院 版权所有 备案编号：赣ICP备07000818号 信息产业部网站</p>
				<p>地 址：江西省赣州章贡区红旗大道61号 邮 编：341000</p>
				
			</div>
		</div>
 	</body>
  	<!-- jQuery -->
	<script src="bootstrap/js/jquery.min.js"></script>
	<!-- bootstrap的js -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
</html>
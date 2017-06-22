<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>学校网站后台管理程序</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/admin/easyui/1.3.4/themes/default/easyui.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/admin/css/wu.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/admin/css/icon.css'/>"/>
		<script type="text/javascript" src="<c:url value='/jsps/admin/js/jquery-1.8.0.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/jsps/admin/easyui/1.3.4/jquery.easyui.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/jsps/admin/easyui/1.3.4/locale/easyui-lang-zh_CN.js'/>"></script>
	</head>
	<body class="easyui-layout">
		<!-- 后台的头部开始 -->
		<div class="wu-header" data-options="region:'north',border:false,split:true">
	    	<div class="wu-header-left">
	        	<h1>后台管理程序</h1>
	        </div>
	        <div class="wu-header-right">
	        	<p><strong class="easyui-tooltip" title="2条未读消息">admin</strong>，欢迎您！</p>
	            <p><a href="<c:url value='/ColumnServlet?method=findAll'/>">网站首页</a>|<a href="#">安全退出</a></p>
	        </div>
	    </div>
	    <!-- 后台的头部结束 -->
	    
	    <!-- 侧导航开始 -->
		<div class="wu-sidebar" data-options="region:'west',split:true,border:true,title:'导航菜单'"> 
	    	<div class="easyui-accordion" data-options="border:false,fit:true"> 
	        	<div title="快捷菜单" data-options="iconCls:'icon-application-cascade'" style="padding:5px;">  	
	    			<ul class="easyui-tree wu-side-tree">
	                	<li iconCls="icon-application-form-edit">
	                		<a href="javascript:void(0)" data-icon="icon-application-form-edit" data-link="temp/list.jsp" iframe="0">栏目管理</a>
	                	</li>
	                    <li iconCls="icon-bricks">
	                    	<a href="javascript:void(0)" data-icon="icon-bricks" data-link="temp/layout-3.html" iframe="0">公告管理</a>
	                    </li>
	                    <li iconCls="icon-creditcards">
	                    	<a href="javascript:void(0)" data-icon="icon-creditcards" data-link="temp/layout-3.html" iframe="0">文章管理</a>
	                    </li>
	                    <li iconCls="icon-book">
	                    	<a href="javascript:void(0)" data-icon="icon-book" data-link="temp/layout-3.html" iframe="0">留言管理</a>
	                    </li>
	                    <li iconCls="icon-user-group">
	                    	<a href="javascript:void(0)" data-icon="icon-user-group" data-link="temp/layout-3.html" iframe="0">用户管理</a>
	                    </li>
	                </ul>
	            </div>
	            <div title="系统设置" data-options="iconCls:'icon-wrench'" style="padding:5px;">  	
	    			<ul class="easyui-tree wu-side-tree">
	                	<li iconCls="icon-chart-organisation"><a href="javascript:void(0)" data-icon="icon-chart-organisation" data-link="layout-3.html" iframe="0">导航标题</a></li>
	                    <li iconCls="icon-cog"><a href="javascript:void(0)" data-icon="icon-cog" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
	                    <li iconCls="icon-application-osx-error"><a href="javascript:void(0)" data-icon="icon-application-osx-error" data-link="temp/layout-3.html" iframe="0">导航标题</a></li>
	                </ul>
	            </div>
	        </div>
	    </div>	
	    <!-- 侧导航结束 -->  
	      
	    <!--主窗口开始 -->
	    <div class="wu-main" data-options="region:'center'">
	        <div id="wu-tabs" class="easyui-tabs" data-options="border:false,fit:true">  
	            <div title="首页" data-options="href:'temp/list.jsp',closable:false,iconCls:'icon-tip',cls:'pd3'"></div>
	        </div>
	    </div>
	    <!-- 主窗口结束 --> 
	    
	    <!-- 底部部分开始 -->
		<div class="wu-footer" data-options="region:'south',border:true,split:true">
	    	&copy; 2017 lin All Rights Reserved
	    </div>
	    <!-- 底部部分结束-->  
	    
	    
	    <!-- js脚本 -->
	    <script type="text/javascript">
			$(function(){
				//添加点击监听 
				$('.wu-side-tree a').bind("click",function(){
					var title = $(this).text();
					var url = $(this).attr('data-link');
					var iconCls = $(this).attr('data-icon');
					var iframe = $(this).attr('iframe')==1?true:false;
					//添加切换
					addTab(title,url,iconCls,iframe);
				});	
			})
			/**
			* 选项卡初始化
			*/
			$('#wu-tabs').tabs({
				tools:[{
					iconCls:'icon-reload',
					border:false,
					handler:function(){
						$('#wu-datagrid').datagrid('reload');
					}
				}]
			});
				
			/**
			* 添加菜单选项
			* Param title 名称
			* Param href 链接
			* Param iconCls 图标样式
			* Param iframe 链接跳转方式（true为iframe，false为href）
			*/	
			function addTab(title, href, iconCls, iframe){
				var tabPanel = $('#wu-tabs');
				if(!tabPanel.tabs('exists',title)){
					var content = '<iframe scrolling="auto" frameborder="0"  src="'+ href +'" style="width:100%;height:100%;"></iframe>';
					if(iframe){
						tabPanel.tabs('add',{
							title:title,
							content:content,
							iconCls:iconCls,
							fit:true,
							cls:'pd3',
							closable:true
						});
					}
					else{
						tabPanel.tabs('add',{
							title:title,
							href:href,
							iconCls:iconCls,
							fit:true,
							cls:'pd3',
							closable:true
						});
					}
				}
				else
				{
					tabPanel.tabs('select',title);
				}
			}
			/**
			* Name 移除菜单选项
			*/
			function removeTab(){
				var tabPanel = $('#wu-tabs');
				var tab = tabPanel.tabs('getSelected');
				if (tab){
					var index = tabPanel.tabs('getTabIndex', tab);
					tabPanel.tabs('close', index);
				}
			}
		</script>
	</body>
</html>

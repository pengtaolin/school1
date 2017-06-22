package com.lin.school1.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lin.school1.bean.Article;
import com.lin.school1.bean.Column;
import com.lin.school1.service.ArticleService;
import com.lin.school1.service.ColumnService;

import cn.itcast.servlet.BaseServlet;

/**
 * 栏目信息servlet层
 * @author Administrator
 *
 */
@WebServlet("/ColumnServlet")
public class ColumnServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * 栏目的业务逻辑层
	 */
	private ColumnService columnService = new ColumnService();
	/**
	 * 文章的业务逻辑层
	 */
	private ArticleService articleService = new ArticleService();
	/**
	 * 获得所有的栏目信息（栏目初始化）
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获得栏目集合对象
		if (request.getServletContext().getAttribute("columns")==null) {
			//调用columnService中的findAll方法获得有效的栏目数据
			List<Column> columns = columnService.findAll();
			//将栏目数据放到域中
			request.getServletContext().setAttribute("columns", columns);
		}
		//获得获得主界面左边显示的公告栏目及内容
		if (request.getServletContext().getAttribute("mainLeft")==null) {
			//调用columnService中的findLeft方法获得左边显示的公告栏目及前十个文章
			List<Column> columns = columnService.findLeft();
			//将获得的栏目数据放到域中
			request.getServletContext().setAttribute("mainLeft", columns);
		}
		//获得获得主界面右边显示的公告栏目及内容
		if (request.getServletContext().getAttribute("mainRight")==null) {
			//调用columnService中的findRight方法获得右边显示的公告栏目及前十个文章
			List<Column> columns = columnService.findRight();
			//将获得的栏目数据放到域中
			request.getServletContext().setAttribute("mainRight", columns);
		}
		
		//页面跳转到主界面
		return "f:/jsps/main.jsp";
	}
	
	/**
	 * 根据栏目的ID获得相关的详细信息
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	@SuppressWarnings("unchecked")
	public String find(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获得栏目的ID
		int columnId = Integer.parseInt(request.getParameter("id"));
		Column column = null;
		List<Article> articleList = null;
		//域中的栏目名称
		String column_id = "column_"+columnId;
		//域中的栏目中的文章集合
		String articleList_column_id = "articleList_column_"+column_id;
		
		//先从全域中查找
		if (request.getServletContext().getAttribute(column_id)==null) {
			//获得栏目的信息
			column = columnService.getColumnById(columnId);
			request.getServletContext().setAttribute(column_id, column);
		}else{
			column = (Column) request.getServletContext().getAttribute(column_id);
		}
		//判断显示的界面(全部显示列表)
		//先从全域中查找
		if (request.getServletContext().getAttribute(articleList_column_id)==null) {
			//查找栏目中的所有的文章信息
			articleList = articleService.findAllByColumnId(column);
			request.getServletContext().setAttribute(articleList_column_id, articleList);
		}else{
			articleList = (List<Article>) request.getServletContext().getAttribute(articleList_column_id);
		}
		//请求中设置数据
		request.setAttribute("articleList", articleList);
		request.setAttribute("column", column);
		//请求转发
		return "/jsps/list.jsp";
	}
}

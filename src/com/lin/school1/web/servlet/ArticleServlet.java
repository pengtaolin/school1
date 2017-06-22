package com.lin.school1.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lin.school1.bean.Article;
import com.lin.school1.service.ArticleService;

import cn.itcast.servlet.BaseServlet;

/**
 * 文章信息的servlet层
 * @author Administrator
 *
 */
@WebServlet("/ArticleServlet")
public class ArticleServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * 文章业务逻辑层
	 */
	private ArticleService articleService = new ArticleService();
	
	/**
	 * 根据文章的ID获得相关的详细信息
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String find(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获得文章的ID
		int articleId = Integer.parseInt(request.getParameter("articleId"));
		//获得项目的ID
		int columnId = Integer.parseInt(request.getParameter("columnId"));
		//文章在域中的名称
		String article_id = "article_"+articleId;
		Article article = null;
		//先从域中查找数据
		if (request.getServletContext().getAttribute(article_id)==null) {
			//获得文章的信息
			article = articleService.findById(articleId,columnId);
			request.getServletContext().setAttribute(article_id, article);
		}else {
			article = (Article) request.getServletContext().getAttribute(article_id);
		}
		//请求中设置数据
		request.setAttribute("article", article);
		//请求转发
		return "/jsps/article.jsp";
	}
}

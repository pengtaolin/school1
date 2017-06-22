package com.lin.school1.service;

import java.util.List;

import com.lin.school1.bean.Article;
import com.lin.school1.bean.Column;
import com.lin.school1.dao.ArticleDao;
import com.lin.school1.dao.ColumnDao;

/**
 * 文章的业务逻辑
 * @author Administrator
 *
 */
public class ArticleService {
	/**
	 * 文章的数据持久层
	 */
	private ArticleDao articleDao = new ArticleDao();
	/**
	 * 类别的数据持久层
	 */
	private ColumnDao columnDao = new ColumnDao();
	
	/**
	 * 根据栏目名查找所有的文章信息
	 * @param columnId
	 * @return
	 */
	public List<Article> findAllByColumnId(Column columnId) {
		
		return articleDao.findAllByColumnId(columnId);
	}

	/**
	 * 根据文章id查找所有的文章信息
	 * @param articleId
	 * @return
	 */
	public Article findById(int articleId, int columnId) {
		Article article = articleDao.findById(articleId);
		article.setColumn(columnDao.findById(columnId));
		return article;
	}
	
	
}

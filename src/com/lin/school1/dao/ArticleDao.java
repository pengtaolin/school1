package com.lin.school1.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.lin.school1.bean.Article;
import com.lin.school1.bean.Column;


/**
 * 文章的信息数据持久层
 * @author Administrator
 *
 */
public class ArticleDao extends Dao{

	/**
	 * 根据栏目名查找所有的文章信息
	 * @param columnId
	 * @return
	 */
	public List<Article> findAllByColumnId(Column columnId) {
		try {
			//sql查询语句,0是正常 1是删除
			sql = "SELECT * FROM article WHERE articleState!=1 AND ColumnId=? Order By articleTime DESC";
			//获得所有的栏目集合
			List<Article> articles = qr.query(sql, new BeanListHandler<Article>(Article.class), columnId.getColumnId());
			
			for (Article article:articles) {
				article.setColumn(columnId);
			}
			return articles;
			//System.out.println(articles);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 添加文章信息
	 * @param article
	 */
	public void add(Article article) {
		try {
			//sql查询语句,0是正常 1是删除
			sql = "INSERT INTO article(articleAuthor,articleTitle,articleContent,articleNumber,articleTime,columnId,articleState) VALUES(?,?,?,?,?,?,?)";
			//参数
			Object[] params = {article.getArticleAuthor(),article.getArticleTitle(),article.getArticleContent(),
								article.getArticleNumber(),article.getArticleTime(),article.getColumn().getColumnId(),article.getArticleState()};
			//更新数据
			qr.update(sql,params);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 根据文章ID查询文章信息
	 * @param articleId
	 * @return
	 */
	public Article findById(int articleId) {
		try {
			//sql查询语句,0是正常 1是删除，时间排序
			sql = "SELECT * FROM article WHERE articleState!=1 AND articleId=? Order By articleTime DESC";
			//获得文章信息
			Article article = qr.query(sql, new BeanHandler<Article>(Article.class), articleId);
			
			return article;
			//System.out.println(articles);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 根据栏目号查找前几个文章
	 * @param columnId
	 * @param i
	 * @return
	 */
	public List<Article> findTopByColumnId(Column columnId, int i) {
		try {
			//sql查询语句,0是正常 1是删除
			sql = "SELECT * FROM article WHERE articleState!=1 AND ColumnId=? Order By articleTime DESC LIMIT ?";
			//获得所有的栏目集合
			List<Article> articles = qr.query(sql, new BeanListHandler<Article>(Article.class), columnId.getColumnId(), i);
			
//			for (Article article:articles) {
//				article.setColumn(columnId);
//			}
			return articles;
			//System.out.println(articles);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}

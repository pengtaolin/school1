package com.lin.school1.dao;


import java.util.Date;

import org.junit.Test;

import com.lin.school1.bean.Article;
import com.lin.school1.bean.Column;
import com.lin.school1.util.PageUtil;

public class ArticleDaoTest {

	public void testFindAllByColumnId() {
		System.out.println("ada");
	}
	
	
	public void add() {
		ArticleDao dao = new ArticleDao();
		
		for (int i = 1;i<36;i++){
			Article article = new Article();
			article.setArticleAuthor("六条"+i);
			article.setArticleContent("世界这么大"+i);
			article.setArticleNumber(1);
			article.setArticleTime(new Date());
			article.setArticleTitle("得大"+i);
			Column column = new Column();
			column.setColumnId(9+i);
			article.setColumn(column);
			dao.add(article);
		}
	}
	
	
	public void findById() {
		ArticleDao dao = new ArticleDao();
		Article article = dao.findById(10);
		System.out.println(article);
	}
	
	@Test
	public void page() {
		PageUtil pageUtil = new PageUtil();
		pageUtil.setCurrentpage(12);
		pageUtil.setNextpage(13);
		pageUtil.setPagesize(20);
		pageUtil.setPrepage(11);
		pageUtil.setRecordcount(20);
		pageUtil.setUrl("/ColumnServlet?method=findByPage&");
		
		System.out.println(pageUtil);
		
	}

}

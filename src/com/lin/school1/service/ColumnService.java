package com.lin.school1.service;

import java.util.List;

import com.lin.school1.bean.Column;
import com.lin.school1.dao.ArticleDao;
import com.lin.school1.dao.ColumnDao;

/**
 * 
 * @author Administrator
 *
 */
public class ColumnService {
	/**
	 * 栏目的数据持久层
	 */
	private ColumnDao columnDao = new ColumnDao();
	/**
	 * 文章数据持久层
	 */
	private ArticleDao articleDao = new ArticleDao();
	
	/**
	 * 获得所有的有效的栏目数据
	 * @return
	 */
	public List<Column> findAll() {
		return columnDao.query();
	}

	/**
	 * 根据ID查询栏目信息
	 * @param columnId
	 * @return
	 */
	public Column getColumnById(int columnId) {
		return columnDao.findById(columnId);
	}

	/**
	 * 获得左边显示栏目数据
	 * @return
	 */
	public List<Column> findLeft() {
		List<Column> columns = columnDao.findByColumnState(2);
		for (Column column : columns) {
			column.setArticles(articleDao.findTopByColumnId(column, 10));
		}
		return columns;
	}

	/**
	 * 获得右边显示栏目数据
	 * @return
	 */
	public List<Column> findRight() {
		List<Column> columns = columnDao.findByColumnState(3);
		for (Column column : columns) {
			column.setArticles(articleDao.findTopByColumnId(column, 10));
		}
		return columns;
	}
	
		
}

package com.lin.school1.bean;

import java.io.Serializable;
import java.util.List;

/**
 * 栏目信息
 * @author Administrator
 *
 */
public class Column implements Serializable{
	private static final long serialVersionUID = -2646856074511499666L;
	/**
	 * 栏目ID
	 */
	private int columnId;
	/**
	 * 栏目名程
	 */
	private String columnName;
	/**
	 * 对应的页面
	 */
	private String type;
	/**
	 * 0正常
	 * 1删除
	 * 2主界左面
	 * 3主界面右边
	 * 栏目的状态
	 */
	private int columnState;
	/**
	 * 上级的栏目
	 */
	private Column parentColumn;
	/**
	 * 下级栏目
	 */
	private List<Column> childColumn;
	
	/**
	 * 存放公告中的前几个数据
	 */
	private List<Article> articles;
	
	public List<Article> getArticles() {
		return articles;
	}
	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}
	public int getColumnId() {
		return columnId;
	}
	public void setColumnId(int columnId) {
		this.columnId = columnId;
	}
	public String getColumnName() {
		return columnName;
	}
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getColumnState() {
		return columnState;
	}
	public void setColumnState(int columnState) {
		this.columnState = columnState;
	}
	public Column getParentColumn() {
		return parentColumn;
	}
	public void setParentColumn(Column parentColumn) {
		this.parentColumn = parentColumn;
	}
	public List<Column> getChildColumn() {
		return childColumn;
	}
	public void setChildColumn(List<Column> childColumn) {
		this.childColumn = childColumn;
	}
	@Override
	public String toString() {
		return "Column [columnId=" + columnId + ", columnName=" + columnName + ", type=" + type + ", columnState="
				+ columnState + ", parentColumn=" + parentColumn + ", childColumn=" + childColumn + ", articles="
				+ articles + "]";
	}
}

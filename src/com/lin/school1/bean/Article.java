package com.lin.school1.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 文章信息
 * @author Administrator
 *
 */
public class Article implements Serializable{
	private static final long serialVersionUID = -7071281946635202447L;
	/**
	 * 文章ID
	 */
	private int articleId;
	/**
	 * 文章作者
	 */
	private String articleAuthor;
	/**
	 * 文章标题
	 */
	private String articleTitle;
	/**
	 * 文章内容
	 */
	private String articleContent;
	/**
	 * 文章的url
	 */
	private String articleUrl;
	/**
	 * 点击量
	 */
	private int articleNumber;
	/**
	 * 上传时间
	 */
	private Date articleTime;
	/**
	 * 所属的栏目
	 */
	private Column column;
	/**
	 * 文章的状态
	 * 0正常
	 * 1删除
	 * 
	 */
	private int articleState;
	
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public String getArticleAuthor() {
		return articleAuthor;
	}
	public void setArticleAuthor(String articleAuthor) {
		this.articleAuthor = articleAuthor;
	}
	public String getArticleTitle() {
		return articleTitle;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public String getArticleContent() {
		return articleContent;
	}
	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}
	public String getArticleUrl() {
		return articleUrl;
	}
	public void setArticleUrl(String articleUrl) {
		this.articleUrl = articleUrl;
	}
	public int getArticleNumber() {
		return articleNumber;
	}
	public void setArticleNumber(int articleNumber) {
		this.articleNumber = articleNumber;
	}
	public Date getArticleTime() {
		return articleTime;
	}
	public void setArticleTime(Date articleTime) {
		this.articleTime = articleTime;
	}
	public Column getColumn() {
		return column;
	}
	public void setColumn(Column column) {
		this.column = column;
	}
	public int getArticleState() {
		return articleState;
	}
	public void setArticleState(int articleState) {
		this.articleState = articleState;
	}

	@Override
	public String toString() {
		return "Article [articleId=" + articleId + ", articleAuthor=" + articleAuthor + ", articleTitle=" + articleTitle
				+ ", articleContent=" + articleContent + ", articleUrl=" + articleUrl + ", articleNumber="
				+ articleNumber + ", articleTime=" + articleTime + ", column=" + column + ", articleState="
				+ articleState + "]";
	}
}

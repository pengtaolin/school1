package com.lin.school1.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 评价信息
 * @author Administrator
 *
 */
public class Comment implements Serializable{
	private static final long serialVersionUID = 7000284280161256510L;
	/**
	 * 评价ID
	 */
	private int commentId;
	/**
	 * 上级评价
	 */
	private Comment parentComment;
	/**
	 * 上级文章
	 */
	private Article parentArticle;
	/**
	 * 评价内容
	 */
	private String commentContent;
	/**
	 * 评级时间
	 */
	private Date commentTime;
	/**
	 * 评价状态
	 */
	private int commentState;
	/**
	 * 评价点赞数
	 */
	private int commentPoint;
	/**
	 * 评价用户
	 */
	private User user;
	
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public Comment getParentComment() {
		return parentComment;
	}
	public void setParentComment(Comment parentComment) {
		this.parentComment = parentComment;
	}
	public Article getParentArticle() {
		return parentArticle;
	}
	public void setParentArticle(Article parentArticle) {
		this.parentArticle = parentArticle;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Date getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}
	public int getCommentState() {
		return commentState;
	}
	public void setCommentState(int commentState) {
		this.commentState = commentState;
	}
	public int getCommentPoint() {
		return commentPoint;
	}
	public void setCommentPoint(int commentPoint) {
		this.commentPoint = commentPoint;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", parentComment=" + parentComment + ", parentArticle="
				+ parentArticle + ", commentContent=" + commentContent + ", commentTime=" + commentTime
				+ ", commentState=" + commentState + ", commentPoint=" + commentPoint + ", user=" + user + "]";
	}
}

package com.lin.school1.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 留言信息
 * @author Administrator
 *
 */
public class Message implements Serializable{
	private static final long serialVersionUID = -7889391196775091296L;
	/**
	 * 留言ID
	 */
	private int messageId;
	/**
	 * 上级留言
	 */
	private Message parentMessage;
	/**
	 * 上级文章
	 */
	private Theme parentTheme;
	/**
	 * 留言内容
	 */
	private String messagContent;
	/**
	 * 留言时间
	 */
	private Date messagTime;
	/**
	 * 留言状态
	 */
	private int messagState;
	/**
	 * 留言点赞数
	 */
	private int messagPoint;
	/**
	 * 留言回复数
	 */
	private int messagAnswer;
	/**
	 * 留言用户
	 */
	private User user;
	
	public int getMessageId() {
		return messageId;
	}
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
	public Message getParentMessage() {
		return parentMessage;
	}
	public void setParentMessage(Message parentMessage) {
		this.parentMessage = parentMessage;
	}
	public Theme getParentTheme() {
		return parentTheme;
	}
	public void setParentTheme(Theme parentTheme) {
		this.parentTheme = parentTheme;
	}
	public String getMessagContent() {
		return messagContent;
	}
	public void setMessagContent(String messagContent) {
		this.messagContent = messagContent;
	}
	public Date getMessagTime() {
		return messagTime;
	}
	public void setMessagTime(Date messagTime) {
		this.messagTime = messagTime;
	}
	public int getMessagState() {
		return messagState;
	}
	public void setMessagState(int messagState) {
		this.messagState = messagState;
	}
	public int getMessagPoint() {
		return messagPoint;
	}
	public void setMessagPoint(int messagPoint) {
		this.messagPoint = messagPoint;
	}
	public int getMessagAnswer() {
		return messagAnswer;
	}
	public void setMessagAnswer(int messagAnswer) {
		this.messagAnswer = messagAnswer;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Message [messageId=" + messageId + ", parentMessage=" + parentMessage + ", parentTheme=" + parentTheme
				+ ", messagContent=" + messagContent + ", messagTime=" + messagTime + ", messagState=" + messagState
				+ ", messagPoint=" + messagPoint + ", messagAnswer=" + messagAnswer + ", user=" + user + "]";
	}
}

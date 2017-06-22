package com.lin.school1.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 主题信息
 * @author Administrator
 *
 */
public class Theme implements Serializable{
	private static final long serialVersionUID = -1690659614529445626L;
	/**
	 * 主题Id
	 */
	private int themeId;
	/**
	 * 主题标题
	 */
	private String themeTitle;
	/**
	 * 主题内容
	 */
	private String themeContent;
	/**
	 * 主题提交时间
	 */
	private Date themeTime;
	/**
	 * 主题状态
	 */
	private int themeState;
	/**
	 * 主题提交用户
	 */
	private User user;
	
	public int getThemeId() {
		return themeId;
	}
	public void setThemeId(int themeId) {
		this.themeId = themeId;
	}
	public String getThemeTitle() {
		return themeTitle;
	}
	public void setThemeTitle(String themeTitle) {
		this.themeTitle = themeTitle;
	}
	public String getThemeContent() {
		return themeContent;
	}
	public void setThemeContent(String themeContent) {
		this.themeContent = themeContent;
	}
	public Date getThemeTime() {
		return themeTime;
	}
	public void setThemeTime(Date themeTime) {
		this.themeTime = themeTime;
	}
	public int getThemeState() {
		return themeState;
	}
	public void setThemeState(int themeState) {
		this.themeState = themeState;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Theme [themeId=" + themeId + ", themeTitle=" + themeTitle + ", themeContent=" + themeContent
				+ ", themeTime=" + themeTime + ", themeState=" + themeState + ", user=" + user + "]";
	}
}

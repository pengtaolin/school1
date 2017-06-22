package com.lin.school1.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 下载信息表
 * @author Administrator
 *
 */
public class Download implements Serializable{
	private static final long serialVersionUID = 7311213221723983856L;
	/**
	 * 下载Id
	 */
	private int downloadId;
	/**
	 * 下载名称
	 */
	private String downloadName;
	/**
	 * 下载量
	 */
	private int downloadNumber;
	/**
	 * 上传时间
	 */
	private Date downloadTime;
	/**
	 * 文件地址
	 */
	private String downloadUrl;
	/**
	 * 所属文章
	 */
	private Article article;
	/**
	 * 下载状态
	 */
	private int downloadState;
	
	public int getDownloadId() {
		return downloadId;
	}
	public void setDownloadId(int downloadId) {
		this.downloadId = downloadId;
	}
	public String getDownloadName() {
		return downloadName;
	}
	public void setDownloadName(String downloadName) {
		this.downloadName = downloadName;
	}
	public int getDownloadNumber() {
		return downloadNumber;
	}
	public void setDownloadNumber(int downloadNumber) {
		this.downloadNumber = downloadNumber;
	}
	public Date getDownloadTime() {
		return downloadTime;
	}
	public void setDownloadTime(Date downloadTime) {
		this.downloadTime = downloadTime;
	}
	public String getDownloadUrl() {
		return downloadUrl;
	}
	public void setDownloadUrl(String downloadUrl) {
		this.downloadUrl = downloadUrl;
	}
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	public int getDownloadState() {
		return downloadState;
	}
	public void setDownloadState(int downloadState) {
		this.downloadState = downloadState;
	}
	@Override
	public String toString() {
		return "Download [downloadId=" + downloadId + ", downloadName=" + downloadName + ", downloadNumber="
				+ downloadNumber + ", downloadTime=" + downloadTime + ", downloadUrl=" + downloadUrl + ", article="
				+ article + ", downloadState=" + downloadState + "]";
	}
}

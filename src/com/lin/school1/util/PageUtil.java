package com.lin.school1.util;

public class PageUtil {
	//总记录数
	private int recordcount;
	//当前页数
	private int currentpage;
	//上一页
	private int prepage;
	//下一页
	private int nextpage;
	//每页数量
	private int pagesize;
	//url地址
	private String url;

	public int getRecordcount() {
		return recordcount;
	}

	public void setRecordcount(int recordcount) {
		this.recordcount = recordcount;
	}

	public int getCurrentpage() {
		return currentpage;
	}

	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}

	public int getPrepage() {
		return prepage;
	}

	public void setPrepage(int prepage) {
		this.prepage = prepage;
	}

	public int getNextpage() {
		return nextpage;
	}

	public void setNextpage(int nextpage) {
		this.nextpage = nextpage;
	}

	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	

	public PageUtil(int recordcount, int currentpage, int pagesize, String url) {
		super();
		this.recordcount = recordcount;
		this.currentpage = currentpage;
		this.pagesize = pagesize;
		this.url = url;
	}

	public PageUtil() {
	}

	@Override
	public String toString() {
		int pageCount = recordcount % pagesize == 0 ? recordcount / pagesize : (recordcount / pagesize) + 1;
		String firstP = "<a href=\"" + url + "?page=1\">首页</a>";
		String lastP = "<a href=\"" + url + "?page=" + (pageCount) + "\">尾页</a>";
		String nextP = "";
		if (currentpage == pageCount||pageCount==0) {
			nextP = "下一页";
		} else {
			nextP = "<a href=\"" + url + "?page=" + (currentpage + 1) + "\">下一页</a>";
		}
		String preP = "";
		if (currentpage == 1) {
			preP = "上一页";
		} else {
			preP = "<a href=\"" + url + "?page=" + (currentpage - 1) + "\">上一页</a>";
		}

		String gojs = "<script type=\"text/javascript\">" + "function go()"
				+ "{var pageno = document.getElementById(\"pagno\").value;window.location.href=\"" + url
				+ "?page=\"+pageno;" + "}</script>";
		String gopage = "<input id=\"pagno\" type=\"text\" style=\"width:20px;\"><input value=\"go\" type=\"button\" onclick=\"go();\">";
		return firstP +"&nbsp;&nbsp;"+ preP +"&nbsp;&nbsp;"+ nextP +"&nbsp;&nbsp;"+ lastP +"&nbsp;&nbsp;"+ gopage +"&nbsp;&nbsp;"+ gojs;
	}
}

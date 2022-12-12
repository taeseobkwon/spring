package com.multi.mvc03;

public class BbsVO {

	private String bbsid;
	private String title;
	private String content;
	private String writer;
	
	public String getBbsd() {
		return bbsid;
	}
	public void setBbsid(String id) {
		this.bbsid = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	@Override
	public String toString() {
		return "BbsVO [id=" + bbsid + ", title=" + title + ", content=" + content + ", writer=" + writer + "]";
	}
	
	
}

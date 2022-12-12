package com.multi.mvc03;
//lombok라이브러리 게터세터 투스트링 자동으로 만들어줌
public class Bbs2VO {
private String bbs_id;
private String title;
private String content;
public String getWriter() {
	return writer;
}
public void setWriter(String writer) {
	this.writer = writer;
}
private String writer;
private String fileName;
@Override
public String toString() {
	return "Bbs2VO [bbs_id=" + bbs_id + ", title=" + title + ", content=" + content + ", writer=" + writer
			+ ", fileName=" + fileName + "]";
}
public String getBbs_id() {
	return bbs_id;
}
public void setBbs_id(String bbs_id) {
	this.bbs_id = bbs_id;
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
public String getFileName() {
	return fileName;
}
public void setFileName(String fileName) {
	this.fileName = fileName;
}
}

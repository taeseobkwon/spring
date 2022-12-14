package com.multi.mvc03;

public class BookPageVO {

	private int start;
	private int end;
	private int page;
	
	public void setStartEnd(int page) {
		start = 1 + (page - 1) * 10;
		end = page * 10; //5의 배수
		// page  => start ~ end
		// 1page => 1     ~ 6
		// 2page => 6     ~ 10
		// 3page => 11    ~ 16
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	@Override
	public String toString() {
		return "BookPageVO [start=" + start + ", end=" + end + ", page=" + page + "]";
	}
	
	
	
	
}

package com.multi.mvc03;

public class PiechartDataVO {
	private String doing;
	private int time;
	public String getDoing() {
		return doing;
	}
	public void setDoing(String doing) {
		this.doing = doing;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "PiechartDataVO [doing=" + doing + ", time=" + time + "]";
	}
	
}
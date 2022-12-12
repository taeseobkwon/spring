package com.multi.mvc03;

public class GooVO {
	private String Task;
	private int Hours;
	
	public String getTask() {
		return Task;
	}
	public void setTask(String task) {
		Task = task;
	}
	public int getHours() {
		return Hours;
	}
	public void setHours(int hours) {
		Hours = hours;
	}
	@Override
	public String toString() {
		return "GooVO [Task=" + Task + ", Hours=" + Hours + "]";
	}
	
	

	
}

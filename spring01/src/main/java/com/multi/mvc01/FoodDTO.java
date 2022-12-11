package com.multi.mvc01;

public class FoodDTO {
	private int id;
	private String name;
	private String add;
	private String menu;
	private String img;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getadd() {
		return add;
	}
	public void setadd(String add) {
		this.add = add;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "FoodDTO [id=" + id + ", name=" + name + ", add=" + add + ", menu=" + menu + ", img=" + img + "]";
	}
	
	
	
}

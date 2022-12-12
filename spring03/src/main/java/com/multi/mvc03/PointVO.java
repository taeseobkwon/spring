package com.multi.mvc03;

public class PointVO {
private double wid;
private double lon;
private String place;
public double getWid() {
	return wid;
}
public void setWid(double d) {
	this.wid = d;
}
public double getLon() {
	return lon;
}
public void setLon(double lon) {
	this.lon = lon;
}
public String getPlace() {
	return place;
}
public void setPlace(String place) {
	this.place = place;
}
@Override
public String toString() {
	return "PointVO [wid=" + wid + ", lon=" + lon + ", place=" + place + "]";
}

}

package com.entity;

public class upcome {
 private Integer projectid;
 private String project;
 private String add;
 private String bed;
 private String bath;
 private String area;
 private String landmark;
 private String price;
 private String type;
 private String img1;
 private String img2;
 private String img3;
 private String img4;
 private String img5;
 private String img6;
 private String stat;
 private String dics;
public upcome(Integer projectid, String project, String add, String bed, String bath, String area, String landmark,
		String price, String type, String img1, String img2, String img3, String img4, String img5, String img6,
		String stat, String dics) {
	super();
	this.projectid = projectid;
	this.project = project;
	this.add = add;
	this.bed = bed;
	this.bath = bath;
	this.area = area;
	this.landmark = landmark;
	this.price = price;
	this.type = type;
	this.img1 = img1;
	this.img2 = img2;
	this.img3 = img3;
	this.img4 = img4;
	this.img5 = img5;
	this.img6 = img6;
	this.stat = stat;
	this.dics = dics;
}
public upcome() {
	super();
	// TODO Auto-generated constructor stub
}
public Integer getProjectid() {
	return projectid;
}
public void setProjectid(Integer projectid) {
	this.projectid = projectid;
}
public String getProject() {
	return project;
}
public void setProject(String project) {
	this.project = project;
}
public String getAdd() {
	return add;
}
public void setAdd(String add) {
	this.add = add;
}
public String getBed() {
	return bed;
}
public void setBed(String bed) {
	this.bed = bed;
}
public String getBath() {
	return bath;
}
public void setBath(String bath) {
	this.bath = bath;
}
public String getArea() {
	return area;
}
public void setArea(String area) {
	this.area = area;
}
public String getLandmark() {
	return landmark;
}
public void setLandmark(String landmark) {
	this.landmark = landmark;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getImg1() {
	return img1;
}
public void setImg1(String img1) {
	this.img1 = img1;
}
public String getImg2() {
	return img2;
}
public void setImg2(String img2) {
	this.img2 = img2;
}
public String getImg3() {
	return img3;
}
public void setImg3(String img3) {
	this.img3 = img3;
}
public String getImg4() {
	return img4;
}
public void setImg4(String img4) {
	this.img4 = img4;
}
public String getImg5() {
	return img5;
}
public void setImg5(String img5) {
	this.img5 = img5;
}
public String getImg6() {
	return img6;
}
public void setImg6(String img6) {
	this.img6 = img6;
}
public String getStat() {
	return stat;
}
public void setStat(String stat) {
	this.stat = stat;
}
public String getDics() {
	return dics;
}
public void setDics(String dics) {
	this.dics = dics;
}
@Override
public String toString() {
	return "upcome [projectid=" + projectid + ", project=" + project + ", add=" + add + ", bed=" + bed + ", bath="
			+ bath + ", area=" + area + ", landmark=" + landmark + ", price=" + price + ", type=" + type + ", img1="
			+ img1 + ", img2=" + img2 + ", img3=" + img3 + ", img4=" + img4 + ", img5=" + img5 + ", img6=" + img6
			+ ", stat=" + stat + ", dics=" + dics + "]";
}

 
}

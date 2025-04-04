package com.entity;

public class house {
	private int id;
	private String house;
	private String add;
	private String area;
	private String bed;
	private String bath;
	private String landmark;
	private Integer price;
	private String type;
	private String pImage;
	public house(int id, String house, String add, String area, String bed, String bath, String landmark, Integer price,
			String type, String pImage) {
		super();
		this.id = id;
		this.house = house;
		this.add = add;
		this.area = area;
		this.bed = bed;
		this.bath = bath;
		this.landmark = landmark;
		this.price = price;
		this.type = type;
		this.pImage = pImage;
	}
	public house() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHouse() {
		return house;
	}
	public void setHouse(String house) {
		this.house = house;
	}
	public String getAdd() {
		return add;
	}
	public void setAdd(String add) {
		this.add = add;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
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
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getpImage() {
		return pImage;
	}
	public void setpImage(String pImage) {
		this.pImage = pImage;
	}
	@Override
	public String toString() {
		return "house [id=" + id + ", house=" + house + ", add=" + add + ", area=" + area + ", bed=" + bed + ", bath="
				+ bath + ", landmark=" + landmark + ", price=" + price + ", type=" + type + ", pImage=" + pImage + "]";
	}

	

}

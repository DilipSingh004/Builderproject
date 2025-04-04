package com.entity;

public class apoint {
	private int id;
	private int UserId;
	private String name;
	private String email;
	private String mobileno;
	private String date;
	private String time;

	public apoint() {
		super();
		// TODO Auto-generated constructor stub
	}

	public apoint(int id, int userId, String name, String email, String mobileno, String date, String time) {
		super();
		this.id = id;
		UserId = userId;
		this.name = name;
		this.email = email;
		this.mobileno = mobileno;
		this.date = date;
		this.time = time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return UserId;
	}

	public void setUserId(int userId) {
		UserId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "apoint [id=" + id + ", UserId=" + UserId + ", name=" + name + ", email=" + email + ", mobileno="
				+ mobileno + ", date=" + date + ", time=" + time + "]";
	}

}

package com.entity;

public class register {
	private int id;
	private String name;
	private String date;
	private String email;
	private String pwd;
	public register(int id, String name, String date, String email, String pwd) {
		super();
		this.id = id;
		this.name = name;
		this.date = date;
		this.email = email;
		this.pwd = pwd;
	}
	public register() {
		super();
		// TODO Auto-generated constructor stub
	}
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "register [id=" + id + ", name=" + name + ", date=" + date + ", email=" + email + ", pwd=" + pwd + "]";
	}
	
}
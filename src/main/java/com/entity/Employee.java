package com.entity;

public class Employee {
   private int id;
	private String name;
	private String add;
	private String dob;
	private String mno;
	private String email;
	private String doj;
	private String posi;
	private String pass;
	private String repass;
	private String status;
	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", add=" + add + ", dob=" + dob + ", mno=" + mno + ", email="
				+ email + ", doj=" + doj + ", posi=" + posi + ", pass=" + pass + ", repass=" + repass + ", status="
				+ status + "]";
	}
	public Employee(int id, String name, String add, String dob, String mno, String email, String doj, String posi,
			String pass, String repass, String status) {
		super();
		this.id = id;
		this.name = name;
		this.add = add;
		this.dob = dob;
		this.mno = mno;
		this.email = email;
		this.doj = doj;
		this.posi = posi;
		this.pass = pass;
		this.repass = repass;
		this.status = status;
	}
	public Employee() {
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
	public String getAdd() {
		return add;
	}
	public void setAdd(String add) {
		this.add = add;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDoj() {
		return doj;
	}
	public void setDoj(String doj) {
		this.doj = doj;
	}
	public String getPosi() {
		return posi;
	}
	public void setPosi(String posi) {
		this.posi = posi;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getRepass() {
		return repass;
	}
	public void setRepass(String repass) {
		this.repass = repass;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
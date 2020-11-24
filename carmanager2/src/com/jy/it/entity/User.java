package com.jy.it.entity;

public class User {

	private Integer id;
	private String name;
	private String no;
	private Boolean sex;
	private String photo;
	private String pwd;
	private String driverno;
	private String phone;
	private String email;
	private String address;
	private int score;
	
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	
	public Boolean getSex() {
		return sex;
	}
	public void setSex(Boolean sex) {
		this.sex = sex;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getDriverno() {
		return driverno;
	}
	public void setDriverno(String driverno) {
		this.driverno = driverno;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", no=" + no + ", sex=" + sex + ", photo=" + photo + ", pwd=" + pwd
				+ ", driverno=" + driverno + ", phone=" + phone + ", email=" + email + ", address=" + address
				+ ", score=" + score + "]";
	}
	
	
	
	
}

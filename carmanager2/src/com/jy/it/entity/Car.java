package com.jy.it.entity;

import java.util.Date;

public class Car {
	private int id;
	private String no;
	private int typeId;
	private int userId;
	private Date beginTime;
	private String state;
	private String runNo;
	private String photo;
	
	@Override
	public String toString() {
		return "Car [id=" + id + ", no=" + no + ", typeId=" + typeId + ", userId=" + userId + ", beginTime=" + beginTime
				+ ", state=" + state + ", runNo=" + runNo + ", photo=" + photo + ", typeName=" + typeName
				+ ", userName=" + userName + ", userPhone=" + userPhone + ", userEmail=" + userEmail + "]";
	}
	private String typeName;
	private String userName;
	private String userPhone;
	private String userEmail;
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Date getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}
	public String getRunNo() {
		return runNo;
	}
	public void setRunNo(String runNo) {
		this.runNo = runNo;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	
}

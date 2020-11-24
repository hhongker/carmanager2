package com.jy.it.entity;

public class CarType {
	
	private Integer id;
	private String name;
	
	private Integer mans;

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

	public Integer getMans() {
		return mans;
	}

	public void setMans(Integer mans) {
		this.mans = mans;
	}

	@Override
	public String toString() {
		return "CarType [id=" + id + ", name=" + name + ", mans=" + mans + "]";
	}
	
	

}

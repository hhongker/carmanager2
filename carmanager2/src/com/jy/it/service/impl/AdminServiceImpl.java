package com.jy.it.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jy.it.dao.AdminDao;
import com.jy.it.entity.Admin;
import com.jy.it.entity.Car;
import com.jy.it.entity.CarType;
import com.jy.it.entity.User;
import com.jy.it.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao dao;
	@Override
	public Admin login(String username, String password) {

		// TODO Auto-generated method stub
		Admin ad = dao.login(username, password);
		return ad;
	}
	
	public int addUser(User user) {
		return dao.addUser(user);
	}

	@Override
	public User[] getAllUser() {
		return dao.getAllUser();
	}

	@Override
	public CarType[] getAllCarType() {
		return dao.getAllCarType();
	}

	@Override
	public int addCar(Car car) {
		return dao.addCar(car);
	}

	
}

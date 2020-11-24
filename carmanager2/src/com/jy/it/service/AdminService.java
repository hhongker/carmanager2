package com.jy.it.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.jy.it.entity.Admin;
import com.jy.it.entity.Car;
import com.jy.it.entity.CarType;
import com.jy.it.entity.User;


public interface AdminService {

	public Admin login(String username, String password);

	public int addUser(User user);

	public User[] getAllUser();

	public CarType[] getAllCarType();

	public int addCar(Car car);

	
}

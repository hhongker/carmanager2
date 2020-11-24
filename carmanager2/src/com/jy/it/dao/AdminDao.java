package com.jy.it.dao;



import com.jy.it.entity.Admin;
import com.jy.it.entity.Car;
import com.jy.it.entity.CarType;
import com.jy.it.entity.User;

public interface AdminDao {


	Admin login(String username, String password);

	int addUser(User user);

	User[] getAllUser();

	CarType[] getAllCarType();

	int addCar(Car car);

	

}

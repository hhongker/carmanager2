package com.jy.it.dao;

import java.util.List;

import com.jy.it.entity.Car;

public interface CarDao {

	Car selectByNo(String carno);

	List<Car> selectListByUser(int userid);

	
}

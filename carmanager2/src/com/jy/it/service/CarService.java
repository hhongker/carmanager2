package com.jy.it.service;

import java.util.List;

import com.jy.it.entity.Car;

public interface CarService {

	List<Car> findListByUser(int userid);

}

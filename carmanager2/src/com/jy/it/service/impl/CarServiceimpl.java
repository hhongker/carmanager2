package com.jy.it.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jy.it.dao.CarDao;
import com.jy.it.entity.Car;
import com.jy.it.service.CarService;

@Service
public class CarServiceimpl implements CarService{

	@Autowired
	private CarDao dao;
	@Override
	public List<Car> findListByUser(int userid) {
		
		return dao.selectListByUser(userid);
		
	}

}

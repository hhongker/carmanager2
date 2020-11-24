package com.jy.it.service;

import java.util.Date;
import java.util.List;

import com.jy.it.entity.Wz;

public interface WzService {
	int add(String carno,
			int ruleid,
			String wzaddress,
			Date wztime,
			String photo,
			String remark,
			int adminid
			);
	List<Wz> findWzByCar(int carid);
	Wz findWzById(int wzid);
	int pay(Wz wz, Integer id);
	List<Wz> findWzByCarNo(String carno);
}

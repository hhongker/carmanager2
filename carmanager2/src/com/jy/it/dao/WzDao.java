package com.jy.it.dao;

import java.util.Date;
import java.util.List;

import com.jy.it.entity.Wz;

public interface WzDao {
	
	int insert(
			int carid,
			int ruleid,
			String wzaddress,
			Date wztime,
			int pay,
			int score,
			String photo,
			String remark,
			int adminid
			);

	List<Wz> selectListByCar(int carid);

	Wz selectById(int wzid);

	int update(Wz wz);

	List<Wz> selectListByCarNo(String carno);

}

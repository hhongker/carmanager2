package com.jy.it.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jy.it.dao.CarDao;
import com.jy.it.dao.RuleDao;
import com.jy.it.dao.UserDao;
import com.jy.it.dao.WzDao;
import com.jy.it.entity.Car;
import com.jy.it.entity.Rule;
import com.jy.it.entity.User;
import com.jy.it.entity.Wz;
import com.jy.it.service.WzService;
import com.jy.it.util.EmailUtil;
import com.jy.it.util.SmsUtil;


@Service
public class WzServiceImpl implements WzService{

	
	@Autowired 
	private CarDao carDao;
	
	
	@Autowired
	private RuleDao ruleDao;
	
	@Autowired
	private WzDao wzDao;
	
	@Autowired
	private EmailUtil emailUtil;
	
	@Autowired
	private UserDao userDao;
	
	
	public int add(String carno, int ruleid, String wzaddress, Date wztime, String photo, String remark, int adminid) {

		
		Car c = carDao.selectByNo(carno);
		
		if (c == null) return 0;
		
		Rule rule = ruleDao.selectById(ruleid);

		int n = wzDao.insert(c.getId(),rule.getId(),wzaddress,wztime,rule.getPay(),rule.getScore(),remark,photo,adminid);
		
		emailUtil.sendMail(c.getUserEmail(),"年轻人不讲武德","耗子尾汁");
		return n;
	}


	@Override
	public List<Wz> findWzByCar(int carid) {
		return wzDao.selectListByCar(carid);
	}


	@Override
	public Wz findWzById(int wzid) {
		return wzDao.selectById(wzid);
	}


	@Override
	public int pay(Wz wz, Integer userid) {
		User u = userDao.selectById(userid);
		
		u.setScore(u.getScore()-wz.getScore());
		userDao.update(u);
		wz.setState("续费完成");
		wz.setDriverId(userid);
		int n = wzDao.update(wz);
		if (u.getScore() <= 0) {
			System.out.print("发送短信和邮件，告知"+u.getEmail()+"罚款成功，当前积分，要求15天内到交管部门报到");
			emailUtil.sendMail(u.getEmail(), "违规了","扣费成功，年轻人不讲武德,剩余积分："+u.getScore() );
//			SmsUtil.sendSms(u.getPhone(), "扣费成功，年轻人不讲武德,剩余积分："+u.getScore());
		}else {
			System.out.print("发送邮件，告知罚款成功，当前积分");
		}
		return n;
	}


	@Override
	public List<Wz> findWzByCarNo(String carno) {
		return wzDao.selectListByCarNo(carno);
	}
	
	

}

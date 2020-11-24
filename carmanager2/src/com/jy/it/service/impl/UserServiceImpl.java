package com.jy.it.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jy.it.dao.UserDao;
import com.jy.it.entity.User;
import com.jy.it.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao dao;

	@Override
	public User login(String userno, String userpwd) {
		// TODO Auto-generated method stub
		User u = dao.login(userno, userpwd);
		return u;
	}

	@Override
	public User findById(int userid) {
		return dao.selectById(userid);
	}
	
}

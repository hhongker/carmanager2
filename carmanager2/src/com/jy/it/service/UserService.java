package com.jy.it.service;

import com.jy.it.entity.User;

public interface UserService {

	public User login(String userno, String userpwd);
	
	User findById(int userid);

}

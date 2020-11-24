package com.jy.it.dao;

import com.jy.it.entity.User;

public interface UserDao {

	User login(String userno, String userpwd);

	int update(User u);

	User selectById(Integer id);

}

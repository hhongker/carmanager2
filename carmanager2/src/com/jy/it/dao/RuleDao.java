package com.jy.it.dao;

import java.util.List;

import com.jy.it.entity.Admin;
import com.jy.it.entity.Rule;

public interface RuleDao {
	List<Rule> selectAll();
	Rule selectById(int rule);
}

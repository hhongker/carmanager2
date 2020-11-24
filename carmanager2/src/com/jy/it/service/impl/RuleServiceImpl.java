package com.jy.it.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jy.it.dao.RuleDao;
import com.jy.it.entity.Rule;
import com.jy.it.service.RuleService;

@Service
public class RuleServiceImpl implements RuleService {

	@Autowired
	private RuleDao dao;
	
	public List<Rule> findAll() {
		List<Rule> list = dao.selectAll();
		return list;
	}

}

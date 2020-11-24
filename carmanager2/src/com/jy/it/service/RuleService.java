package com.jy.it.service;

import java.util.List;

import org.springframework.stereotype.Service;


import com.jy.it.entity.Rule;


public interface RuleService {

	List<Rule> findAll();

}

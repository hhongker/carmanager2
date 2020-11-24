package com.jy.it.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jy.it.dao.ReportDao;
import com.jy.it.service.ReportService;

@Service
public class ReportServiceImpl implements ReportService {

	@Autowired
	private ReportDao dao;
	
	@Override
	public List<Map<String, Object>> findReportRule() {
		// TODO Auto-generated method stub
		return dao.selectReportRule();
	}

	@Override
	public List<Map<String, String>> selectNumForScore() {
		return dao.selectNumForScore();
	}

}

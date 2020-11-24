package com.jy.it.dao;

import java.util.List;
import java.util.Map;

public interface ReportDao {
	
	public List<Map<String, Object>> selectReportRule();

	public List<Map<String, String>> selectNumForScore();
	
}

package com.jy.it.service;

import java.util.List;
import java.util.Map;

public interface ReportService {

	public List<Map<String, Object>> findReportRule();

	public List<Map<String, String>> selectNumForScore();

	
}

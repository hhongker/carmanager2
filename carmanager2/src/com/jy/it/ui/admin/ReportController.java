package com.jy.it.ui.admin;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSONArray;
import com.jy.it.service.ReportService;
import com.jy.it.service.impl.ReportServiceImpl;


@Controller
public class ReportController {
	
	
	@Autowired
	private ReportService service;

	@RequestMapping(value = "/admin/report/rule")
	public String showReportRule(Model m) {
		

		List<Map<String, Object>> datas = service.findReportRule();
		String json = JSONArray.toJSONString(datas);
		m.addAttribute("datajson", json);
		List<String> names = new ArrayList();
		for (Map data : datas) {
			names.add(((String)data.get("name")));
		}
		m.addAttribute("namesjson",JSONArray.toJSONString(names));
		System.out.println(json);
		return "admin/report_rule";
	}
	
	
	//分值统计
	   
    @RequestMapping(value="/admin/user/score",method=RequestMethod.GET)
   	public String selectNumForScore(Model m) {
    	
    	List<Map<String, String>> scores = service.selectNumForScore();
    	
    	String json = JSONArray.toJSONString(scores);
    	List<String> names = new ArrayList();
		for (Map data : scores) {
			names.add(data.get("name")+"");
		}
		m.addAttribute("names",JSONArray.toJSONString(names));
    	m.addAttribute("scores", json);
    	return "admin/report_score";
    }

}

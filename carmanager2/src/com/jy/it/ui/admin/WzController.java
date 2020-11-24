package com.jy.it.ui.admin;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.jy.it.entity.Admin;
import com.jy.it.entity.Rule;
import com.jy.it.service.RuleService;
import com.jy.it.service.WzService;
import com.jy.it.service.impl.RuleServiceImpl;
import com.jy.it.util.SmsUtil;
import com.jy.it.util.UploadFile;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
public class WzController {

	@Autowired
	private RuleService ruleService;
	
	@Autowired
	private WzService wzService;
	
	
	@RequestMapping(value="wz/add",method=RequestMethod.GET)
	public String add(Model m) {
		System.out.println(222);
		List<Rule> rules = ruleService.findAll();
		m.addAttribute("rules",rules);
		return "admin/admin_wz_add";
	
	}
	
	
	@RequestMapping(value="wz/add",method=RequestMethod.POST)
	public String add(String carno,
				@DateTimeFormat(pattern="yyyy-MM-dd HH:mm") Date wztime,
				int ruleid,
				String wzaddress,
				String remark,
				MultipartFile photofile,
				HttpServletRequest request,
				HttpSession session,
				Model m
			) {
		Admin admin = (Admin) session.getAttribute("admin");

		
		String imgname = UploadFile.uploadFile(photofile, request, "wz");
		
		int n = wzService.add(carno, ruleid, wzaddress,wztime,imgname, remark,admin.getId());
		
		if (n == 0) {
			m.addAttribute("err","年轻人不讲武德");
			System.out.println("插入失败了");
			return "admin/admin_wz_add";
		}
		System.out.println("插入成功了");
//		SmsUtil.sendSms("18813215324", "年轻人不讲武德");
		m.addAttribute("success","ok");
		return "redirect:/wz/add";
	}
}

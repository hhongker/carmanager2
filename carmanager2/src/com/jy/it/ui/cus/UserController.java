package com.jy.it.ui.cus;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jy.it.entity.User;
import com.jy.it.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService service = null;
	
	
	@RequestMapping(value="/cus/login",method = RequestMethod.GET)
	public String login() {
		return "cus/login";
	}
	
	
	@RequestMapping(value="/cus/login",method = RequestMethod.POST)
	public String login(String userno, String userpwd, HttpSession session, Model m) {
		User u = service.login(userno, userpwd);
		
		if (u!=null) {
			session.setAttribute("user", u);
			return "redirect:/cus/carlist";
		}
		
		m.addAttribute("err","用户名或密码错误");
		return "cus/login";
	}
}

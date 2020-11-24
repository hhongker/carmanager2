package com.jy.it.ui.cus;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jy.it.entity.User;
import com.jy.it.entity.Wz;
import com.jy.it.service.UserService;
import com.jy.it.service.WzService;

@Controller
public class WzCusController {

	@Autowired
	private WzService service;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/cus/wz/list",method=RequestMethod.GET,params={})
	public String showList() {
		return "cus/wz_list";
	}
	@RequestMapping(value="/cus/wz/list",method=RequestMethod.GET,params={"carno"})
	public String showList(String carno, Model m) {
		System.out.println(carno);
		List<Wz> wzList = service.findWzByCarNo(carno);
		m.addAttribute("wzlist", wzList);
		return "cus/wz_list";
	}
	@RequestMapping(value="/cus/wz/list",method=RequestMethod.GET,params={"carid"})
	public String showList(int carid, Model m) {
		List<Wz> wzList = service.findWzByCar(carid);
		m.addAttribute("wzlist", wzList);
		return "cus/wz_list";
	}
	@RequestMapping(value="/cus/wz/detail",method=RequestMethod.GET)
	public String showOne(int wzid, Model m) {
		System.out.print(wzid);
		Wz wz = service.findWzById(wzid);
		m.addAttribute("wz", wz);
		return "cus/wz_detail";
	}
	@RequestMapping(value="/cus/wz/confirm",method=RequestMethod.GET)
	public String showConfirm(int wzid, Model m) {
		Wz wz = service.findWzById(wzid);
		m.addAttribute("wz", wz);
		System.out.println(wz);
		return "cus/wz_confirm";
	}
	
	@RequestMapping(value="/cus/wz/pay",method=RequestMethod.GET)
	public String pay(int wzid, HttpSession session) {

		User u = (User)session.getAttribute("user");

		Wz wz = service.findWzById(wzid);
		
		if ("续费完成".equals(wz.getState())) {
			System.out.println("续费完成");
			return "redirect:/cus/wz/list?carid="+wz.getCarId();
		}
		
		int n = service.pay(wz,u.getId());
		session.setAttribute("user",userService.findById(u.getId()));
		if(n == 1)
			return "redirect:/cus/wz/list?carid="+wz.getCarId();
		else
			return "redirect:/cus/wz/confirm?err=1&wzid="+wzid;
	}
	
}

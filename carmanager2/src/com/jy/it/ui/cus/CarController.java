package com.jy.it.ui.cus;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jy.it.entity.Car;
import com.jy.it.entity.User;
import com.jy.it.service.CarService;

@Controller
public class CarController {

	@Autowired
	private CarService service;
	
	@RequestMapping(value = "/cus/carlist", method = RequestMethod.GET)
	public String showList(HttpSession session, Model m) {
		
		User u = (User) session.getAttribute("user");
		
		System.out.println(u.getId());
		
		List<Car> list = service.findListByUser(u.getId());
		

		System.out.println(list);
		m.addAttribute("cars",list);
		m.addAttribute("cartotal",list.size());
		return "cus/car_list";
	}
}

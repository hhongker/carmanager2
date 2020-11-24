package com.jy.it.ui.admin;



import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.jy.it.entity.Admin;
import com.jy.it.entity.Car;
import com.jy.it.entity.CarType;
import com.jy.it.entity.Rule;
import com.jy.it.entity.User;
import com.jy.it.service.AdminService;
import com.jy.it.service.RuleService;
import com.jy.it.service.impl.AdminServiceImpl;
import com.jy.it.service.impl.RuleServiceImpl;
import com.jy.it.util.EmailUtil;
import com.jy.it.util.UploadFile;

@Controller
public class AdminController {
	
	
	@Autowired
	private RuleService ruleService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private EmailUtil emailUtil;
	
	
    @RequestMapping(value="/admin/login",method=RequestMethod.GET)
	public String login() {
		return "admin/admin_login";
	}
    
    @RequestMapping(value="/admin/login",method=RequestMethod.POST)
    public String login(String username,String password,HttpSession session,Model m) {

    	Admin admin=adminService.login(username,password);
    	System.out.print(admin);
    	if(admin!=null) {

    		session.setAttribute("admin", admin);//登录成功，记起来后续要用
    		List<Rule> rules = ruleService.findAll();
    		m.addAttribute("rules",rules);
    		System.out.println("登陆成功");
    		return "redirect:/admin/nav";//跳转到录入违章记录的页面
    	}
    	//如果登录不成功，返回页面提示错误
    	m.addAttribute("err","用户名或密码错误");
    	return "admin/admin_login";
    }
    
    
    
    @RequestMapping(value="/admin/nav",method=RequestMethod.GET)
	public String adminNav() {
		return "admin/admin_nav";
	}
    
//    注册驾驶员
    @RequestMapping(value="/admin/admin_input_driver",method=RequestMethod.GET)
	public String inputDriver() {
    	
		return "admin/admin_input_driver";
	}
    
    @RequestMapping(value="/admin/admin_input_driver",method=RequestMethod.POST)
	public String inputDriver(Model m,User user,MultipartFile userphoto,String usersex,HttpServletRequest request) {
    	user.setScore(12);
    	user.setSex("男".equals(usersex) ? true : false);
    	String imgname = UploadFile.uploadFile(userphoto, request,"user");
    	user.setPhoto(imgname);
    	int n = adminService.addUser(user);
		 if(n == 1) m.addAttribute("return1","注册成功");
		 else m.addAttribute("return1", "注册失败");
		return "admin/admin_input_driver";
	}
    
    
    
//    注册车辆
    @RequestMapping(value="/admin/admin_input_car",method=RequestMethod.GET)
	public String nsAdd(Model m) {
    	User[] users = adminService.getAllUser();
    	CarType[] cartypes = adminService.getAllCarType();
    	m.addAttribute("cartypes",cartypes);
    	m.addAttribute("users",users);
		return "admin/admin_input_car";
	}
    
    @RequestMapping(value="/admin/admin_input_car",method=RequestMethod.POST)
	public String nsAdd(Car car,MultipartFile photofile, HttpServletRequest request, Model m) {
    	
    	car.setBeginTime(new Date());
    	String imgname = UploadFile.uploadFile(photofile, request, "car");
    	car.setPhoto(imgname);
    	System.out.println(car);
    	int n = adminService.addCar(car);
    	if(n == 1) m.addAttribute("return2","注册车辆成功");
		 else m.addAttribute("return2", "注册车辆失败");
		return "admin/admin_input_car";
	}
    
//    车主公告
    @RequestMapping(value="/admin/admin_send_mail",method=RequestMethod.GET)
   	public String sendMail() {
    	return "admin/admin_send_mail";
    }
    
    @RequestMapping(value="/admin/admin_send_mail",method=RequestMethod.POST)
	public String sendMail(String title, String content, Model m) {
    	User[] users = adminService.getAllUser();
    	System.out.println(title+"=="+content);
    	for (User u : users) {
    		String email = u.getEmail();
    		System.out.println("给"+email+"发送邮件");
//    		emailUtil.sendMail(email,title,content);
    		try {
				Thread.sleep(100);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
    	m.addAttribute("return3","群发成功");
		return "admin/admin_send_mail";
	}
    
}





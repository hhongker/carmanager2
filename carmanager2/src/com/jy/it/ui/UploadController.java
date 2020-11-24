package com.jy.it.ui;


import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {

	@RequestMapping(value="/upload", method=RequestMethod.GET)
	public String upload() {
		return "a";
	}
	
	
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	public String upload(String title, MultipartFile photofile,HttpServletRequest request) {
		if (photofile.isEmpty()) return "a";
		
		try {
			
			System.out.println(title);
			System.out.println(photofile.getOriginalFilename());
			String imgname = UUID.randomUUID().toString();
			String ext = photofile
					.getOriginalFilename()
					.toString()
					.substring(photofile
					.getOriginalFilename()
					.lastIndexOf("."));
			String prjdir = request.getServletContext().getRealPath("/");
			String webapps = new File(prjdir).getParent();
			File imgs = new File(webapps+"/imgs/");
			if(!imgs.exists() || imgs.isFile()) {
				new File(webapps+"/imgs/").mkdirs();
			}
			
			photofile.transferTo(new File(webapps+"/imgs/"+imgname+ext));
			
		} catch (Exception e) {
			try {
				System.out.println("工作空间不在tomcat中！！！");
				photofile.transferTo(new File("F:/apache-tomcat-9.0.11/webapps/imgs/"+imgname+ext));
			} catch (Exception e1) {
				e1.printStackTrace();
			} 
			
		} 
		return "a";
	}
}

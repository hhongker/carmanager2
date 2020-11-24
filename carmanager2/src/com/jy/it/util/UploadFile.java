package com.jy.it.util;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.web.multipart.MultipartFile;


public class UploadFile {
	
	public static String uploadFile(MultipartFile photofile,HttpServletRequest request,String savePath) {
		//上传图片
		String ext = photofile
				.getOriginalFilename()
				.toString()
				.substring(photofile
				.getOriginalFilename()
				.lastIndexOf("."));
		String imgname = UUID.randomUUID().toString()+ext;
		String prjdir = request.getServletContext().getRealPath("/");
		String webapps = new File(prjdir).getParent();
		File imgs = new File(webapps+"/imgs/"+savePath+"/");
		if (!photofile.isEmpty()) {
			try {
				System.out.print("图片保存的地址为："+webapps+"/imgs/"+savePath+"/");
				if(!imgs.exists() || imgs.isFile()) {
					new File(webapps+"/imgs/"+savePath+"/").mkdirs();
				}
				photofile.transferTo(new File(webapps+"/imgs/"+savePath+"/"+imgname));
			} catch (Exception e) {
				System.out.println("工作空间不在tomcat中！！！");
			}
		}
		return imgname;
	}

}

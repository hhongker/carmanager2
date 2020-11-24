package com.jy.it.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class EmailUtil {
	@Autowired
	private JavaMailSender sender;
	
	public void sendMail(String to,String title,String content) {
		SimpleMailMessage msg = new SimpleMailMessage();
		
		msg.setTo(to);
		msg.setFrom("1004681771@qq.com");
		msg.setSubject(title);
		msg.setText(content);
		System.out.println(sender);
		sender.send(msg);//发送
		System.out.println("发送邮件成功");
	}
	
	public static void main(String[] args) {
		System.out.print(111);
		ApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext-mail.xml");
		EmailUtil eamilUtil =  cxt.getBean(EmailUtil.class);
		eamilUtil.sendMail("1004681771@qq.com","年轻人不讲武德","耗子尾子");
	}
}

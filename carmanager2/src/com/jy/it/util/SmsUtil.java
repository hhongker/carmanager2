package com.jy.it.util;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

public class SmsUtil {
	
	public static String sendSms(String phone, String content) {
		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod("http://utf8.api.smschinese.cn");
		post.addRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");// 在头文件中设置转码
		NameValuePair[] data = {
				new NameValuePair("Uid", "hongker"),
				new NameValuePair("Key", "d41d8cd98f00b204e980"),
				new NameValuePair("smsMob", phone),
				new NameValuePair("smsText", content) };
		post.setRequestBody(data);
		String result = "";
		try {
			client.executeMethod(post);
			result = new String(post.getResponseBodyAsString().getBytes("utf-8"));
			System.out.println(result); // 打印返回消息状态
		} catch (Exception e) {
			e.printStackTrace();
		} 
		post.releaseConnection();
		System.out.println("发送短信成功："+phone+","+content);
		return result;
	}
	
}

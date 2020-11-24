<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/carmanager2/upload" method="post" enctype="multipart/form-data"
>
	标题:<input type = "text" name = "title"> <br/>
	图片:<input type = "file" name = "photofile"><br/>
	<input type = "submit" value = "上传"/>
</form>
	<img src="/imgs/12306.png"/>
</body>
</html>
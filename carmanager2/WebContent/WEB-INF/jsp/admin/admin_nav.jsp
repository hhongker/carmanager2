<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>管理员登陆</title>
    <link href="/carmanager2/css/bootstrap.min.css" rel="stylesheet">
    <style>
		header{
		   width:100%;
	       height:100px;
		   background-color:#008;
		   color:white;
		   text-align:center;
		   margin-bottom:20px;
		}
		header h1{ line-height:100px;}
		h2{text-align:center;margin-bottom:50px;}
		body{background:#eee}
		.nav{line-height:30px;border:2px solid #ccc;text-align:center;font-size:20px;margin:10px;height:200px;padding:30px}
		.nav:hover{background-color:#eee;font-size:28px;}
	</style>
    
  </head>
  <body>
   <div class="container" style="background:white">
    <div class="row">
	  <div class="col-md-12">
	    <header><h1>网上车管所</h1></header>
	  </div>
	</div>
	<div class="row">
	  <div class="col-md-offset-3 col-md-6 col-sm-12">
	     <h2>管理员界面</h2>
		  <div class="row">
		    <div class="col-md-5 nav">
			   <a href="#">驾驶员管理</a><br/>
			   <a href="admin_input_driver">注册驾驶员</a><br/>
			</div>
			<div class="col-md-5 nav">
			   <a href="#">车辆管理</a><br/>
			   <a href="admin_input_car">注册车辆</a><br/>
			   <a href="admin_send_mail">车主公告</a><br/>
			</div>
		  </div>
		  <div class="row">
		    <div class="col-md-5 nav">
			  <a href="/carmanager2/wz/add">违章管理</a>
			</div>
			<div class="col-md-5 nav">
			   <a href="/carmanager2/admin/report/rule">违章统计</a><br/>
			   <a href="/carmanager2/admin/user/score">分值统计</a><br/>
			</div>
		  </div>
	  </div>
	</div>
	<div class="row">
	  <div class="col-md-12">
	   <!--面板-->
		<div class="panel panel-default" style="margin-top:10px">
		  <div class="panel-body text-center">
			车管所 xda.cn<br/>
			Designed by fan wu
		  </div>
		</div>  
		<!--END 面板-->
	  </div>
	</div>
   </div>

   
    <script src="/carmanager2/js/jquery-1.11.0.min.js" ></script>
    <script src="/carmanager2/js/bootstrap.min.js"></script>
  </body>
</html>








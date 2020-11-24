<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <title>车辆信息</title>
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
		header h1{ line-height:100px;margin-bottom:0px}
		header{margin-bottom:20px}
		body{background:#eee}
	</style>
   
  </head>
  <body>
  <div class="container">
    <div class="row">
	  <div class="col-md-12">
	      <div class="col-md-12">
			<header>
				<h1>车辆年审记录</h1>
				<div style="background-color:white;height:25px;"> </div>
			</header>
		  </div>
	  </div>
	</div>
	 <div class="row">
	  <div class="col-md-12">
	    <!--导航-->
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			  <a class="navbar-brand" href="#">首页</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			  <ul class="nav navbar-nav">
				<li><a href="/carmanager2/cus/wz/list">违章查询 <span class="sr-only">(current)</span></a></li>
				<li><a href="#">驾驶证年审查询</a></li>
				<li><a href="#">机动车年审查询</a></li>
				<li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">法律法规 <span class="caret"></span></a>
				  <ul class="dropdown-menu">
					<li><a href="#">违章扣分</a></li>
					<li><a href="#">交通标志</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="#">最新消息</a></li>
				  </ul>
				</li>
			  </ul>
			  <form class="navbar-form navbar-left" role="search" action="">
				<div class="form-group">
				  <input type="text" name="carno" value="${param.carno}" class="form-control" placeholder="车牌号码">
				</div>
				<button type="submit" class="btn btn-default">搜索</button>
			  </form>
			  <ul class="nav navbar-nav navbar-right">
				<li><a href="#">登陆</a></li>
				<li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">个人空间 <span class="caret"></span></a>
				  <ul class="dropdown-menu">
					<li><a href="#">联系资料</a></li>
					<li><a href="#">车辆信息</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="#">退出登陆</a></li>
				  </ul>
				</li>
			  </ul>
			</div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
		<!--END 导航-->
	  </div>
	</div>
	 <div class="row">
	  <div class="col-md-9" style="min-height:300px">
	     <!--列表-->
		 
		 <div class="list-group">

			<c:forEach var="c" items="${cars}">
			    <div class="media list-group-item">
				  <div class="media-left">
					<a href="#">
					  <img class="media-object" style="width: 150px; height: 100px;" src="imgs/cars/${c.photo} ">
					</a>
				  </div>
				  <div class="media-body">
					<h4 class="media-heading"><a href="#" class="blue">${c.no}</a></h4>
					<p>品牌:${c.typeName }下地日期:${c.beginTime } 车辆状况:${c.state} </p>
					<p>
					   <a href="#" class="btn btn-primary" role="button">年审记录</a>
					   <a href="/carmanager2/cus/wz/list?carid=${c.id }" class="btn btn-primary" role="button">违章记录</a>
					</p>
				  </div>
				</div>
			</c:forEach>
			

		</div>
		 
		 
	     <!--End列表-->
		 
	  </div>
	  <div class="col-md-3">
	  <!--个人信息-->
	    <div class="thumbnail">
		  <img src="imgs/users/${sessionScope.user.photo}" alt="..." class="img-circle" width="100px" height="120px">
		  <div class="caption">
			<h3>${sessionScope.user.name }</h3>
			<p>身份证:${sessionScope.user.no }</p>
			<p>性别:${sessionScope.user.sex?"男":"女"}</p>
			<p>拥有车辆:${cartotal}辆</p>
			<p>
			   <a href="#" class="btn btn-primary" role="button">更新</a>
			   <a href="#" class="btn btn-primary" role="button">驾驶证信息</a>
			</p>
		  </div>
		</div>
	  <!--END 个人信息-->
	  </div>
	</div>
	 <div class="row">
	  <div class="col-md-12">
		<!--面板-->
		<div class="panel panel-default" style="margin-top:10px">
		  <div class="panel-body text-center">
			网上车管所 xda.cn<br/>
			Designed by fan wu
		  </div>
		</div>  
		<!--END 面板-->
	  </div>
	</div>
  </div>
    
   
    <script src="/carmanager2/js/jquery-1.11.0.min.js"></script>
    <script src="/carmanager2/js/bootstrap.min.js"></script>
  </body>
</html>
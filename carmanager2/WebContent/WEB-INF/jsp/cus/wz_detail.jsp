<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
    <title>违章明细记录</title>
	
    <link href="/carmanager2/css/bootstrap.min.css" rel="stylesheet">
	<link href="/carmanager2/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	

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
		.content div{line-height:40px;font-size:16px}
	</style>
    
  </head>
  <body>
   <div class="container" style="background:white">
    <div class="row">
	  <div class="col-md-12">
	    <header><h1>违章明细记录</h1></header>
	  </div>
	</div>
	 <div class="row">
	   <div class="col-md-12">
	    <a href="#">&lt;&lt;返回</a>
	    <h2>${wz.carNo}违章明细</h2>
	  </div>
	</div>
	<div class="row content">
	  <div class="col-md-offset-3 col-md-6">
		 <div class="row">
		    <div class="col-md-6">车牌号</div>
			<div class="col-md-6">${wz.carNo }</div>
		 </div>
		 <div class="row">
		    <div class="col-md-6">车主</div>
			<div class="col-md-6">${wz.userName }</div>
		 </div>
		 <div class="row">
		    <div class="col-md-6">违章时间</div>
			<div class="col-md-6"><fmt:formatDate value="${wz.time}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
		 </div>
		 <div class="row">
		    <div class="col-md-6">违章内容</div>
			<div class="col-md-6">${wz.ruleName }</div>
		 </div>
		 <div class="row">
		    <div class="col-md-6">罚款</div>
			<div class="col-md-6">${wz.pay }</div>
		 </div>
		 <div class="row">
		    <div class="col-md-6">扣分</div>
			<div class="col-md-6">${wz.score }</div>
		 </div>
		 <div class="row">
		    <div class="col-md-6">状态</div>
			<div class="col-md-6">${wz.state }</div>
		 </div>
		 <div class="row">
		    <div class="col-md-offset-3 col-md-3">phone</div>
			<div class="col-md-6">${wz.userPhone }</div>
		 </div>
		 <div class="row">
		    <div class="col-md-offset-3 col-md-3">email</div>
			<div class="col-md-6">${wz.userEmail }</div>
		 </div>
		 <div class="row">
		    <div class="col-md-6">操作</div>
			<div class="col-md-6">
				<a href="confirm?wzid=${wz.id }" class="btn btn-primary btn-lg active" role="button">确认缴费</a>
			</div>
		 </div>
	  </div>
	  <div class="col-md-3">
	     违章照片:<br/>
	     <img src="/imgs/wz/${wz.photo}" width="150px" height="200px"/>
	  </div>
	  
	</div>
	<div class="row">
	  <div class="col-md-12">
	   <!--面板-->
		<div class="panel panel-default" style="margin-top:10px">
		  <div class="panel-body text-center">
			车辆管理所 xda.cn<br/>
			Designed by fan wu
		  </div>
		</div>  
		<!--END 面板-->
	  </div>
	</div>
   </div>

   
    <script src="/carmanager2/js/jquery-1.11.0.min.js" ></script>
    <script src="/carmanager2/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script src="/carmanager2/js/moment-with-locales.min.js"></script>
	<script src="/carmanager2/js/bootstrap-datetimepicker.min.js"></script>
	
  </body>
</html>








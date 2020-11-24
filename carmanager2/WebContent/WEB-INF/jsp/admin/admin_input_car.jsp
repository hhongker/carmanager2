<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>注册车辆</title>
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
	</style>
    
  </head>
  <body>
   <div class="container" style="background:white">
    <div class="row">
	  <div class="col-md-12">
	    <header><h1>注册车辆</h1></header>
	  </div>
	</div>
	<div class="row">
	  <div class="col-md-offset-3 col-md-6 col-sm-12" >
	     <h2>注册车辆</h2>
		 <!--表单-->
		 <form class="form-horizontal" method="post" action="" enctype="multipart/form-data" style="position:relative;">
		 
		  <div class="form-group">
			<label for="nickname" class="col-sm-2 control-label">车名</label>
			<div class="col-sm-10">
			  <input type="text" name="no" class="form-control" id="nickname" placeholder="请输入车名">
			</div>
		  </div>
		  
		  <div class="form-group">
			<label for="nsresult" class="col-sm-2 control-label">车类型</label>
			<div class="col-sm-10">
				<select name="typeId" class="form-control" id="carkind">
				  <option>--请选择车类型信息--</option>
				  <c:forEach var = "c" items = "${cartypes}">
				  	<option value="${c.id}">${c.name}</option>
				  </c:forEach>
				</select>
			</div>
		  </div>

		  
		  <div class="form-group">
			<label for="nickname" class="col-sm-2 control-label">车的状态</label>
			<div class="col-sm-10">
			  <input type="text" name="state" class="form-control" id="carstate" placeholder="请输入车状态">
			</div>
		  </div>
		  
		  <div class="form-group">
			<label for="nickname" class="col-sm-2 control-label">车的奔跑no</label>
			<div class="col-sm-10">
			  <input type="text" name="runNo" class="form-control" id="carrunno" placeholder="请输入车奔跑类型">
			</div>
		  </div>
		  
		  <div class="form-group" >
			<label for="nsresult" class="col-sm-2 control-label">车主姓名</label>
			<div class="col-sm-8">
				<select name="ruleid" class="form-control" id="userOption" >
				  <option>--请选择车主信息--</option>
				  <c:forEach var = "u" items = "${users}">
				  	<option data-uid="${u.id }" value="${u.driverno}" >id:${u.id}==名字：${u.name}</option>
				  </c:forEach>
				</select>
			</div>
		  </div>
		  
		  <input id="uid" type="hidden" name="userId"></input>
		  
		  <div class="form-group" style=" position:absolute; right:10px; top:208px">
					<div class="col-sm-offset-2 col-sm-10">
					  <a href="/carmanager2/admin/admin_input_driver">
					  	<button type="button" class="btn btn-default">添加</button>
					  </a>
					</div>
			</div>

		  <div class="form-group">
			<label for="driverno" class="col-sm-2 control-label" >行驶证号</label>
			<div class="col-sm-10">
			  <input type="text"  class="form-control" id="driverno" placeholder="请输入行驶证号">
			</div>
		  </div>
		 
		  <div class="form-group">
			<label for="exampleInputFile" class="col-sm-2 control-label">车辆照片</label>
			<div class="col-sm-10">
				<input type="file" name="photofile" id="exampleInputFile">
				<p class="help-block">请上传照片</p>
			</div>
		  </div>
		  

		  <div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
			  <button type="submit" class="btn btn-default">注册</button>
			</div>
		  </div>
		</form>
		 
		 <!--END表单-->
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
   <c:if test="${return2 != null}">
		<script>
			var return2 = "${return2}"
			alert(return2)
		</script>
	</c:if>

   	<script>
   		userOption =  document.getElementById("userOption")
   		driverno =  document.getElementById("driverno")
   		uid = document.getElementById("uid")
   		userOption.addEventListener("change",function(e){	
   			driverno.value = userOption.value
   			uid.value = userOption.options[userOption.selectedIndex].getAttribute(("data-uid"))
   		})
   	</script>
    <script src="/carmanager2/js/jquery-1.11.0.min.js" ></script>
    <script src="/carmanager2/js/bootstrap.min.js"></script>
  </body>
</html>








<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
    <title>新增违章记录</title>
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
	</style>
    
  </head>
  <body>
   <div class="container" style="background:white">
    <div class="row">
	  <div class="col-md-12">
	    <header><h1>新增违章记录</h1></header>
	  </div>
	</div>
	<div class="row">
	  <div class="col-md-offset-3 col-md-6 col-sm-12">
	     <h2>新增违章记录</h2>
		 <!--表单-->
		 <form class="form-horizontal" action="" method="post" enctype="multipart/form-data"
		 >
		  <div class="form-group">
			<label for="carNo" class="col-sm-2 control-label">车辆牌号</label>
			<div class="col-sm-10">
			  <input type="text" name="carno" class="form-control" id="carNo" placeholder="请输入车辆牌号">
			</div>
		  </div>
		  
		  <div class="form-group">
			<label for="nstime" class="col-sm-2 control-label">违章时间</label>
			<div class="col-sm-10">
			   <!--指定 date标记-->
				<div class='input-group date' id='datetimepicker1'>
					<input type='text' name="wztime" class="form-control" />
					<span class="input-group-addon">
						<span class="glyphicon glyphicon-calendar"></span>
					</span>
				</div>
			</div>
		  </div>
		  <div class="form-group">
			<label for="nsresult" class="col-sm-2 control-label">违章内容</label>
			<div class="col-sm-10">
				<select name="ruleid" class="form-control">
				  <option>--违章内容--</option>
				  
				  <c:forEach var = "r" items = "${rules}">
				  	<option value="${r.id}">${r.name}</option>
				  </c:forEach>
				  
				</select>
			</div>
		  </div>
		  <div class="form-group">
			<label for="carNo" class="col-sm-2 control-label">违章路段</label>
			<div class="col-sm-10">
			  <input name="wzaddress" type="text" class="form-control" id="carNo" placeholder="违章路段">
			</div>
		  </div>
		  <div class="form-group">
			<label for="exampleInputFile" class="col-sm-2 control-label">违章照片</label>
			<div class="col-sm-10">
				<input type="file" id="exampleInputFile"  name = "photofile">
				<p class="help-block">请上传违章照片</p>
			</div>
		  </div>
		   <div class="form-group">
			<label for="nsremark" class="col-sm-2 control-label">备注</label>
			<div class="col-sm-10">
			  <textarea name="remark" class="form-control" rows="3"></textarea>
			</div>
		  </div>
		  
		   <div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
			  <button type="submit" class="btn btn-default">新增</button>
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

   
   <c:if test="${success}=='ok'">
   	<script>alert("添加成功")</script>
   </c:if>
   
    <script src="/carmanager2/js/jquery-1.11.0.min.js" ></script>
    <script src="/carmanager2/js/bootstrap.min.js"></script>
	<script src="/carmanager2/js/moment-with-locales.min.js"></script>
	<script src="/carmanager2/js/bootstrap-datetimepicker.min.js"></script>
	
	<script>
	  $(function () {
			$('#datetimepicker1').datetimepicker({
				format: 'YYYY-MM-DD hh:mm',
				locale: moment.locale('zh-cn'),
				defaultDate: new Date()
			});
		});

	</script>
  </body>
</html>








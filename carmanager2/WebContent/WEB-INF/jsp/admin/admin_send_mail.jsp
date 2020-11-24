
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
    <title>发布通知</title>
	
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
	    <header><h1>发布通知</h1></header>
	  </div>
	</div>
	<div class="row">
	  <div class="col-md-offset-3 col-md-6 col-sm-12">
	     <h2>发布通知</h2>
		 <!--表单-->
		 <form class="form-horizontal" method="post">
		   <div class="form-group">
			<label for="title" class="col-sm-2 control-label">通知标题</label>
			<div class="col-sm-10">
			  <input type="text" name="title" class="form-control" id="title" placeholder="邮件标题">
			</div>
		  </div>
		   <div class="form-group">
			<label for="content" class="col-sm-2 control-label">邮件内容</label>
			<div class="col-sm-10">
			  <textarea class="form-control" name="content" rows="10"></textarea>
			</div>
		  </div>
		  
		   <div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
			  <button type="submit" class="btn btn-default">批量发送邮件</button>
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


	<c:if test="${return3 != null and not empty return3}">
		<script>
			var return3 = "${return3}"
			alert(return3)
		</script>
	</c:if>
   
    <script src="/carmanager2/js/jquery-1.11.0.min.js" ></script>
    <script src="/carmanager2/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
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








<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>登陆</title>
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
	    <header><h1>网上车管所</h1></header>
	  </div>
	</div>
	<div class="row">
	  <div class="col-md-offset-3 col-md-6 col-sm-12">
	     <h2>登陆</h2>
		 <!--表单-->
		 <form class="form-horizontal" action="" method="post">
		  <div class="form-group">
			<label for="loginname" class="col-sm-2 control-label">身份证号</label>
			<div class="col-sm-10">
			  <input type="text" name="userno" class="form-control" id="loginname" placeholder="请输入身份证号">
			</div>
		  </div>
		  
		  <div class="form-group">
			<label for="loginpwd" class="col-sm-2 control-label">登陆密码</label>
			<div class="col-sm-10">
			  <input type="password" name="userpwd" class="form-control" id="loginpwd" placeholder="请输入登陆密码">
			  
			</div>
		  </div>
		  
		 <!-- <div class="form-group">
			<label for="text" class="col-sm-2 control-label">验证码</label>
			<div class="col-sm-7">
			  <input type="text" class="form-control" id="imgcode" placeholder="请录入验证码">
			</div>
			<div class="col-sm-3">
			  <img src=""  width="100px" height="30px">
			</div>
		  </div>
		  
		  <div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
			  <div class="checkbox">
				<label>
				  <input type="checkbox"> 一周免登陆
				</label>
			  </div>
			</div>
		  </div>-->
		  

		  <div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
			  <button type="submit" class="btn btn-default">登陆</button>
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








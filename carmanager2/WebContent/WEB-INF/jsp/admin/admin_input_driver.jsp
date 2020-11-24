<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>注册</title>
<link href="/carmanager2/css/bootstrap.min.css" rel="stylesheet">
<style>
header {
	width: 100%;
	height: 100px;
	background-color: #008;
	color: white;
	text-align: center;
	margin-bottom: 20px;
}

header h1 {
	line-height: 100px;
}

h2 {
	text-align: center;
	margin-bottom: 50px;
}

body {
	background: #eee
}
</style>

</head>
<body>
	<div class="container" style="background: white">
		<div class="row">
			<div class="col-md-12">
				<header>
					<h1>注册驾驶员</h1>
				</header>
			</div>
		</div>
		<div class="row">
			<div class="col-md-offset-3 col-md-6 col-sm-12">
				<h2>注册</h2>
				<!--表单-->
				<form id="form1" class="form-horizontal" method="post" action="/carmanager2/admin/admin_input_driver" enctype="multipart/form-data">
					<div class="form-group">
						<label for="nickname" class="col-sm-2 control-label">真实姓名</label>
						<div class="col-sm-10">
							<input type="text" name="name" class="form-control" id="nickname"
								placeholder="请输入真实姓名">
						</div>
					</div>
					<div class="form-group">
						<label for="nickname" class="col-sm-2 control-label">性别</label>
						<div class="col-sm-10">
							<input type="text" name="usersex" class="form-control" id="nickname"
								placeholder="输入性别">
						</div>
					</div>
					<div class="form-group">
						<label for="nickname" class="col-sm-2 control-label">身份证</label>
						<div class="col-sm-10">
							<input type="text" name="no" class="form-control" id="nickname"
								placeholder="请输入身份证">
						</div>
					</div>

					<div class="form-group">
						<label for="driverno" class="col-sm-2 control-label">驾驶证号</label>
						<div class="col-sm-10">
							<input type="text" name="driverno" class="form-control"
								id="driverno" placeholder="请输入驾驶证号">
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-10">
							<input type="password" name="pwd" class="form-control"
								id="password" placeholder="请录入密码">
						</div>
					</div>

					<div class="form-group">
						<label for="repeatpassword" class="col-sm-2 control-label">确认密码</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="repeatpassword"
								placeholder="请再次录入密码">
						</div>
					</div>
					<div class="form-group">
						<label for="exampleInputFile" class="col-sm-2 control-label">照片</label>
						<div class="col-sm-10">
							<input type="file" name="userphoto" id="exampleInputFile" >
							<p class="help-block">请上传照片</p>
						</div>
					</div>

					<div class="form-group">
						<label for="mobile" class="col-sm-2 control-label">电话</label>
						<div class="col-sm-10">
							<input type="text" name="phone" class="form-control" id="mobile"
								placeholder="请输入手机号">
						</div>
					</div>
					<div class="form-group">
						<label for="email" class="col-sm-2 control-label">Email</label>
						<div class="col-sm-10">
							<input type="email" name="email" class="form-control" id="email"
								placeholder="请输入Email">
						</div>
					</div>
					<div class="form-group">
						<label for="email" class="col-sm-2 control-label">address</label>
						<div class="col-sm-10">
							<input type="text" name="address" class="form-control"
								placeholder="请输入address">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button  id="btn" class="btn btn-default">注册</button>
						</div>
					</div>
				</form>

				<!--END表单-->
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<!--面板-->
				<div class="panel panel-default" style="margin-top: 10px">
					<div class="panel-body text-center">
						车辆管理所 xda.cn<br /> Designed by fan wu
					</div>
				</div>
				<!--END 面板-->
			</div>
		</div>
	</div>
	<c:if test="${return1 != null}">
		<script>
			var return1 = "${return1}"
			alert(return1)
		</script>
	</c:if>
	
	<script>
		
		
		const btn=document.getElementById("btn");

		btn.addEventListener("click",function(event){
			console.log(112);
			event.preventDefault()
			var pwd = document.getElementById("password").value
			var repeatpwd = document.getElementById("repeatpassword").value

			if (pwd.trim() != "" && pwd.trim() == repeatpwd.trim()) {
				document.getElementById("form1").submit()
			} else {
				alert("两次密码不正确，请重新填写")
				return;
			}
		})
	</script>

	<script src="/carmanager2/js/jquery-1.11.0.min.js"></script>
	<script src="/carmanager2/js/bootstrap.min.js"></script>

</body>
</html>








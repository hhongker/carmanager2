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
  
    <title>违章记录</title>
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
		body{background:#eee}
	</style>
   
  </head>
  <body>
  <div class="container">
    <div class="row">
	  <div class="col-md-12">
	      <div class="col-md-12">
			<header><h1>违章记录查询</h1></header>
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
				<li class="active"><a href="#">违章查询 <span class="sr-only">(current)</span></a></li>
				<li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">年审查询 <span class="caret"></span></a>
				  <ul class="dropdown-menu">
					<li><a href="#">驾驶证年审查询</a></li>
					<li><a href="#">机动车年审查询</a></li>
				  </ul>
				</li>
				
				<li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">预约办理 <span class="caret"></span></a>
				  <ul class="dropdown-menu">
					<li><a href="#">驾驶证预约换证</a></li>
					<li><a href="#">机动车预约年审</a></li>
				  </ul>
				</li>
				
				
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
				<li><a href="#">注销</a></li>
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
	  <table class="table">
	    <!--表格-->
		 <tr>
              <th>编号</th>
			  <th>车辆号牌</th>
              <th>违章内容</th>
			  <th>地点</th>
			  <th>时间</th>
			  <th>扣分</th>
			  <th>状态</th>
              <th>操作</th>
        </tr>
        
        <c:forEach var="w" items="${wzlist}">
        <tr>
             <td>${w.id }</td>
			 <td>${w.carNo }</td>
			 <td>${w.ruleName }</td>
			 <td>${w.address }</td>
			 <td><fmt:formatDate value="${w.time}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			 <td>${w.score }</td>
			 <td>${w.state }</td>
             <td>
			 <a href="/carmanager2/cus/wz/detail?wzid=${w.id}">详情</a>
			 <a href="/carmanager2/cus/wz/confirm?wzid=${w.id }">确认</a>
			 <a href="">投诉</a>
             </td>
       </tr>
        </c:forEach>
       
	  
     </tbody>
     <tfoot>
       <tr>
          <td colspan="7" style="text-align:center">
		    
		  </td>
       </tr>
     </tfoot>
   </table> 
		
	    <!--END 表格-->
	  </div>
	  <div class="col-md-3">
	  <!--个人信息-->
	    <div class="thumbnail">
		  <img src="imgs/users/${sessionScope.user.photo }" alt="..." class="img-circle" width="100px" height="120px">
		  <div class="caption">
			<h3>${sessionScope.user.name }</h3>
			<p>${sessionScope.user.driverno }</p>
			<p>${sessionScope.user.score }</p>
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
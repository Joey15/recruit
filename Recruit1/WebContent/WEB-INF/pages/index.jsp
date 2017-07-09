<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%    
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <title>登录页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if lt IE 9]>
    <script src="<%=path%>/resources//resources/js/html5shiv.js"></script>
    <script src="<%=path%>/resources//resources/js/respond.min.js"></script>
    <![endif]-->
    
    <link href="<%=path%>/resources/css/bootstrap2.min.css" rel="stylesheet">
	<style>
	*{margin:0;padding: 0;}
      body{}	
      .loginBox{
		width:280px;
		height:200px;
		padding:0 20px;
		border:0px solid #fff; 
		color:#000; 
		margin-top:40px;
		border-radius:8px;	
		box-shadow:0 0 15px #222; 
		font:11px/1.5em 'Microsoft YaHei' ;
		position: absolute;left:75%;top:55%;
		margin-left:-210px;margin-top:-115px;
		}
      .loginBox h2{
	  height:45px;
	  font-size:20px;
	  font-weight:normal;
	  }
	</style>
  </head>
  <body background="<%=path%>/resources//images/bg2.png">
  	
	<div style="position: absolute;left:8%;top:15%"><h1 style="font-family:courier;font-size:400%;color:white">Recruit</h1></div>
    <div class="container">
			<section class="loginBox row-fluid">
					<div class="tabbable" id="tabs-634549">
						<ul class="nav nav-tabs">
							<li class="active">
								<a href="#panel-60560" data-toggle="tab">个人用户</a>
							</li>
							<li>
								<a href="#panel-549981" data-toggle="tab">企业用户</a>
							</li>
						</ul>

						<div class="tab-content">
						
							<div class="tab-pane active" id="panel-60560">
								<!-- 个人登录 -->
								<form action="login" method="post" >
								<div><input type="text" name="username" placeholder="个人用户名"/></div>
								<div><input type="password" name="password" placeholder="密码"/></div>
								<div class="span1"><input type="submit" value="登录" class="btn btn-primary"></div>
								</form>
							</div>
						
							<div class="tab-pane" id="panel-549981">
								<!-- 企业登录 -->
								<form action="login1" method="post" >
								<div><input type="text" name="username" placeholder="企业用户名"/></div>
								<div><input type="password" name="password" placeholder="密码"/></div>
								<div class="span1"><input type="submit" value="登录" class="btn btn-primary"></div>
								</form>
							</div>	
						</div>
					</div>
				<a href="signup">没有帐号，前去注册</a>
        </section><!-- /loginBox -->
    </div> <!--/container -->
	<div class=" navbar-fixed-bottom	">
        <p align="center" ><font color="#ffffff">&copy; Copyright © 2017 | 晋ICP备 10000000号-2 &nbsp;晋公网安备11010000000000 </font></p>
	</div>
    <script src="<%=path%>/resources/js/jquery-1.11.1.min.js"></script>
    <script src="<%=path%>/resources/js/bootstrap.min.js"></script>
  </body>
</html>
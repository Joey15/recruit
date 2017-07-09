<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆</title>
<%@include file="../common/head.jsp"%>
<style>
      body{}	
      .loginBox{
		width:220px;
		height:230px;
		padding:0 20px;
		border:0px solid #fff; 
		color:#000; 
		margin-top:40px;
		border-radius:8px;		
		box-shadow:0 0 1px #222; 
		font:11px/1.5em 'Microsoft YaHei' ;
		position: absolute;left:40%;top:20%;	
		}
      .mb_10{
			margin-bottom:10px;
		}
     
	</style>



</head>

<body>



<div class="loginBox">	
<form action="dologin" method="post" >
	<div class="login_cont">
		<h3>管理员登录</h3>
		<ul class="nav">
			<li style="font-size:15px;margin-top:8px;margin-bottom:2px">用户名</li>
			<li class="mb_10"><input type="text" name="username" class="login_input user_icon"></li>
			<li style="font-size:15px;margin-top:10px;margin-bottom:2px">密码</li>
			<li class="mb_10"><input type="password" name="password" class="login_input user_icon"></li>
			
			<li><input type="submit" value="登录	" class="login_btn"></li>
		</ul>
		
	</div>
	</form>
</div>


<div class="hr_25"></div>

</body>
</html>

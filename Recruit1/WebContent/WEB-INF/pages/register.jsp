<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<title>注册页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--[if lt IE 9]>
    <script src="<%=path%>/resources//resources/js/html5shiv.js"></script>
    <script src="<%=path%>/resources//resources/js/respond.min.js"></script>
    <![endif]-->

<link href="<%=path%>/resources/css/bootstrap2.min.css" rel="stylesheet">
<script type="text/javascript">
	function checkIsExist() {
		var realname = $.trim($("#username").val());
		$.ajax({
			type : "POST", //http请求方式    
			url : "<%=path%>/user/checkUsername",   
			data : "username=" + realname, //发送给服务器的参数    
			dataType : "text", //告诉JQUERY返回的数据格式(注意此处数据格式一定要与提交的controller返回的数据格式一致,不然不会调用回调函数complete)    
			success : function(data){
				if (data=="0"){
					$("#showResult").html("&nbsp用户名已存在").css("color", "red");
					document.getElementById("submit").disabled = true;
				}else{
					$("#showResult").html("&nbsp用户名可用").css("color", "white");
					document.getElementById("submit").disabled = false;
				}
			},
			error : function(jqXHR) {
				alert('出错了！'+jqXHR.status);
			}
		});
	}
	function validate() {
		var pw1 = $("#password1").val();
		var pw2 = $("#password2").val();
		if (pw1 == pw2) {
			$("#validate").html("*").css("color", "green");
			document.getElementById("submit").disabled = false;
		} else {
			$("#validate").html("前后输入不一致").css("color", "red");
			document.getElementById("submit").disabled = true;
		}
	}
</script>
</head>
<body background="<%=path%>/resources//images/bg3.png">

	<div class="container" style="position: absolute; left: 25%; top: 17%;">
		<h2
			style="position: absolute; left: 25%; top: -100%; font-family: courier; font-size: 300%; color: white">用户注册</h2>
		<ul id="errorlist"></ul>
		<form id="userform" action="<%=path%>/user/saveUser" method="post">
			<li style="position: absolute; left: 22%; top: 300%"><label>用户名:</label>
				<input type="text" id="username" name="username" onkeyup="checkIsExist()"><span
				id="showResult"></span></li>
			<li style="position: absolute; left: 22%; top: 600%"><label>密码:</label>
				<input type="password" id="password1" name="pwd"
				onkeyup="validate()">
				<div id="password1Tip" style="width: 250px"></div></li>

			<li style="position: absolute; left: 22%; top: 900%"><label>确认密码:</label>
				<input type="password" id="password2" name="password"
				onkeyup="validate()"> <span id="validate"></span></li>
			<li style="position: absolute; left: 22%; top: 1200%"><label>用户类型:</label>
				<select name="status" id="status">
					<option value="1" selected="selected">求职用户</option>
					<option value="2">企业用户</option>
			</select></li>
			<div style="position: absolute; left: 30%; top: 1600%">
				<button class="btn btn-primary" type="submit" id="submit">注册</button>
			</div>
			</ul>
		</form>
	</div>


	</div>
	<!--/container -->
	<div class=" navbar-fixed-bottom">
		<p align="center">
			<font color="#000000">&copy; Copyright © 2017 | 晋ICP备
				10000000号-2 &nbsp;晋公网安备11010000000000 </font>
		</p>
	</div>
	<script src="<%=path%>/resources/js/jquery-1.11.1.min.js"></script>
	<script src="<%=path%>/resources/js/bootstrap.min.js"></script>
</body>
</html>
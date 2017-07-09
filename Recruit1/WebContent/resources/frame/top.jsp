<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<%=path%>/resources/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<link href="<%=path%>/resources/css/bodyima.css" rel="stylesheet"
	media="screen">
<style type="text/css">
.div1{ margin-top:40px; margin-left:100px; }
.exit{ position:absolute; top:23px; right:3%;}
</style>
</head>
<body>


<div class="div1">
<h2>欢迎系统管理员: ${sessionScope.username}</h2>
</div>
<div class="exit">
<a href="<%=path%>/admin/exit"   target="_parent"> <span class="glyphicon glyphicon-off"></span><span>退出</span></a>
&nbsp&nbsp<a href="<%=path%>/user/exit"  target="_parent"><span class="glyphicon glyphicon-home"></span><span>返回首页 </span></a>
</div>


<span style="position:absolute; top:63px; right:3%"><div id="time"></div></span>    
<script>     
document.getElementById('time').innerHTML=new Date().toLocaleString();     
setInterval("document.getElementById('time').innerHTML=new Date().toLocaleString();",1000);  
</script>  
</body>
</html>
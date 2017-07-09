<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%    
String root = request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>招聘求职管理系统后台</title>
<frameset rows="15%,75%,10%">
	<frame name="top"
		src="${pageContext.request.contextPath}/resources/frame/top.jsp">
	<frameset cols="150,*" id="main">
		<frame src="${pageContext.request.contextPath}/resources/frame/left.jsp">
		<frame name="right"
			src="${pageContext.request.contextPath}/resources/frame/right.jsp">
	</frameset>
	<frame name="top"
		src="${pageContext.request.contextPath}/resources/frame/bottom.jsp">
</frameset>
	</head>
	<!-- 设置了class就可在进入页面加载layout -->
	<body>
		
		<!-- 正下方panel -->
		<div region="south" style="height: 50px;" align="center">
			<label>
				作者：zero	
				<br />
				时间：2017-5-10
			</label>
		</div>
	</body>
</html>

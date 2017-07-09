<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>招聘求职网</title>
<%@include file="../common/head.jsp"%>
</head>
<body>
	<!--顶栏-->
	<%@include file="../common/top.jsp"%>
	<!--轮播-->


	<!--底下部分-->
	<div class="container summary">
		<h1 style="margin-left">发布求职信息</h1>
    
		
	<div class="container summary1">
		<form action="addIntention" method="post">
				<input type="hidden"  name="username" value="${sessionScope.username}" />
				<ul style="list-style-type: none; font-size: 20px;">
					
					<li class="li1">
						<label>求职标题:</label> 
						<input class="input2" type="text" name="title">
					</li>
					
					<li class="li1">
					<label>工作类型:</label> 
					<select style="margin-left:50px;width:150px"name="jobtype">
						<option value="技术">技术</option>
						<option value="设计">设计</option>
						<option value="管理">管理</option>
						<option value="财务">财务</option>
					</select>
					</li>
					
				
						
					
					
					<li class="li1"><label>工作地区:</label> 
						<input class="input2" type="text"id="address" name="address"></li>
					
					<li class="li1"><label>期望薪资:</label> 
						<select style="margin-left:50px;width:150px" name="salary">
						<option value="2000以下">2000以下</option>
						<option value="2000-5000">2000-5000</option>
						<option value="5000以上">5000以上</option>
						</select></li>	
					
				
				</ul>

				
				



				<input value="保存" type="submit"
						style="width: 60px; margin-left: 100px; margin-top: 40px; margin-right: 20px; height: 30px;">
				<input value="返回" type="button" style="width: 60px; height: 30px;"
					onclick="javascript:window.history.go(-1);">
			</form>

		
	</div>						






	</div>



	<!-- 关于 -->
	<%@include file="../common/about.jsp"%>

	<div class="navbar-fixed-bottom	" >
	<hr>
    <footer class="footer1" >
	
        <p class="pull-right"><a href="#top">回到顶部</a></p>

        <p>&copy; Copyright © 2017 | 晋ICP备 10000000号-2 &nbsp;晋公网安备11010000000000 </p>
    </footer>
	</div>	


	<script src="<%=path%>/resources/js/jquery-1.11.1.min.js"></script>
	<script src="<%=path%>/resources/js/bootstrap.min.js"></script>
</body>
</html>
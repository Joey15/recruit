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



		<h1>申请记录</h1>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>企业名称</th>
					<th>工作内容</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${requestScope.recordlist }">
					<tr>
						<td>${p.fullname }</td>
						<td>${p.content }</td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>



	<!-- 关于 -->
	<%@include file="../common/about.jsp"%>

	<div class="navbar-fixed-bottom	">
		<hr>
		<footer class="footer1">

			<p class="pull-right">
				<a href="#top">回到顶部</a>
			</p>

			<p>&copy; Copyright © 2017 | 晋ICP备 10000000号-2
				&nbsp;晋公网安备11010000000000</p>
		</footer>
	</div>



	<script src="<%=path%>/resources/js/jquery-1.11.1.min.js"></script>
	<script src="<%=path%>/resources/js/bootstrap.min.js"></script>
</body>
</html>
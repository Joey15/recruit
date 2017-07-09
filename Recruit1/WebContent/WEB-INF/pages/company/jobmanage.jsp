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
	<%@include file="../common/top1.jsp"%>
	<!--轮播-->


	<!--底下部分-->

	<div class="container summary1">

		<h1>招聘信息管理</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>企业名称</th>
					<th>工作内容</th>
					<th>工作类型</th>
					<th>学历要求</th>
					<th>工作地点</th>
					<th>薪资</th>
					<th>修改</th>
					<th>删除</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${requestScope.joblist }">
					<tr>
						<td>${p.fullname }</td>
						<td>${p.content }</td>
						<td>${p.jobtype }</td>
						<td>${p.degree }</td>
						<td>${p.address }</td>
						<td>${p.salary }</td>
						<td><a href="doupdate?id=${p.id}"> <span class="glyphicon glyphicon-edit"></span>
						</a></td>
						<td><a href="deleteJobById?id=${p.id}" onclick='return confirm("确认要删除吗?")'> <span class="glyphicon glyphicon-remove"></span>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>






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
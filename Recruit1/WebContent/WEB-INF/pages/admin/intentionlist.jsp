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
	
	<!--轮播-->


	<!--底下部分-->
	

		<table class="table table-bordered">
			<thead>
				<tr>
					<th>标题</th>
					<th>工作类型</th>
					<th>工作地区</th>
					<th>期望薪资</th>
					<th>发布者</th>
					<th>删除</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${requestScope.intentionlist }">
					<tr>
						<td>${p.title }</td>
						<td>${p.jobtype }</td>
						<td>${p.address }</td>
						<td>${p.salary }</td>
						<td>${p.username}</td>
						<td><a href="deleteIntentionById?id=${p.id}" onclick='return confirm("确认要删除吗?")'> <span class="glyphicon glyphicon-remove"></span>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>



	<!-- 关于 -->
	



	<script src="<%=path%>/resources/js/jquery-1.11.1.min.js"></script>
	<script src="<%=path%>/resources/js/bootstrap.min.js"></script>
</body>
</html>
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
					<th>用户名</th>
					<th>密码</th>
					<th>删除</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${requestScope.userlist }">
					<c:if test="${p.status=='2'}">
					<tr>
						<td>${p.username }</td>
						<td>${p.password}</td>
						<td><a href="deleteUser1?id=${p.id}" onclick='return confirm("确认要删除吗?")'> <span class="glyphicon glyphicon-remove"></span>
						</a></td>
					</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
	



	<!-- 关于 -->
	



	<script src="<%=path%>/resources/js/jquery-1.11.1.min.js"></script>
	<script src="<%=path%>/resources/js/bootstrap.min.js"></script>
</body>
</html>
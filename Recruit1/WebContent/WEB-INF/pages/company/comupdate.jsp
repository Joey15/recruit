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
	<div class="container summary">
		<h1 style="margin-left: 50px">企业信息</h1>


		<div class="container summary1">
			<form action="updatecompany" method="post">
				<input type="hidden" name="id" value="${company.id}" /> 
				<input type="hidden" name="username" value="${company.username}" />
				<table>
				<ul style="list-style-type: none; font-size: 20px;">

					<li class="li1"><label>企业名称:</label> <input class="input2"
						type="text" value="${company.fullname}" name="fullname"></li>

					<li class="li1"><label>企业类型:</label> <select
						style="margin-left: 50px" value="${person.comtype}" name="comtype">
							<option value="国企">国企</option>
							<option value="上市企业">上市企业</option>
							<option value="私人企业">私人企业</option>
					</select></li>

					<li class="li1"><label>企业规模:</label> <select
						style="margin-left: 50px" value="${person.empcount}"
						name="empcount">
							<option value="100人以下">100人以下</option>
							<option value="100-500人">100-500人</option>
							<option value="500人以上">500人以上</option>
					</select></li>



					<li class="li1"><label>地址:</label> <input
						style="margin-left: 90px; width: 400px;" type="text" id="address"
						value="${company.address}" name="address"></li>


					<li class="li1"><label>电子邮箱:</label> <input class="input2"
						type="text" id="email" value="${company.email}" name="email"></li>


					<li class="li1"><label>联系电话:</label> <input class="input2"
						type="text" id="tel" value="${company.tel}" name="tel"></li>


					<li class="li1"><label>联系人:</label><input
						style="margin-left: 75px; width: 400px;" type="text" id="manager"
						value="${company.manager}" name="manager"></li>



					<li><label>企业介绍：</label></li>
					<li><textarea style="width: 550px; height: 100px;"
							id="description" value="${company.description}"
							name="description">${company.description}</textarea>
					</li>


				</ul>
				</table>

				<input value="保存" type="submit"
					style="width: 60px; margin-left: 50px; margin-right: 20px; height: 30px;">
				<input value="返回" type="button" style="width: 60px; height: 30px;"
					onclick="javascript:window.history.go(-1);">
			</form>

		</div>






	</div>



	<!-- 关于 -->
	<%@include file="../common/about.jsp"%>

	<hr>
	<footer class="footer1">
		<p class="pull-right">
			<a href="#top">回到顶部</a>
		</p>

		<p>&copy; Copyright © 2017 | 晋ICP备 10000000号-2
			&nbsp;晋公网安备11010000000000</p>
	</footer>



	<script src="<%=path%>/resources/js/jquery-1.11.1.min.js"></script>
	<script src="<%=path%>/resources/js/bootstrap.min.js"></script>
</body>
</html>
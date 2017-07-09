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
			<input type="hidden" id="comId" name="comId" />
			<ul style="list-style-type: none; font-size: 20px;">

				<li class="li1"><label>企业名称:</label> 
				<label class="label1">${company.fullname}</label>
				</li>

				<li class="li1"><label>企业类型:</label> 
				<label class="label1">${company.comtype}</label>
				</li>

				<li class="li1"><label>企业规模:</label> 
				<label class="label1">${company.empcount}</label>
				</li>



				<li class="li1"><label>地址:</label> 
				<label style="margin-left: 90px;">${company.address}</label>
				</li>


				<li class="li1"><label>电子邮箱:</label> 
				<label class="label1">${company.email}</label>
				</li>


				<li class="li1"><label>联系电话:</label> 
				<label class="label1">${company.tel}</label>
				</li>


				<li class="li1"><label>联系人:</label> 
				<label style="margin-left: 70px">${company.manager}</label>
				</li>



				<li><label>企业介绍：</label>
				<li><p>${company.description}</p></li>


			</ul>





			<div style="margin-top: 20px">
				<a href="info1?id=${company.id}">修改企业信息</a>
			</div>

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
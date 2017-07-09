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
		<h1 style="margin-left: 50px">职位详情</h1>


		<div class="container summary1">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#panel-60560" data-toggle="tab">职位描述</a>
				</li>
				<li><a href="#panel-549981" data-toggle="tab">企业信息</a></li>

			</ul>

			<div class="tab-content">

				<div class="tab-pane active" id="panel-60560">
					<ul style="list-style-type: none; font-size: 20px;">

						<li class=""><label>工作类型:</label> <label class="label1">${job.jobtype }</label>
						</li>

						<li class=""><label>工作内容:</label> <label class="label1">${job.content }</label>
						</li>

						<li class=""><label>学历要求:</label> <label class="label1">${job.degree }</label>
						</li>


						<li class=""><label>薪资:</label> <label
							style="margin-left: 90px;">${job.salary}</label></li>


						<li class=""><label>工作地点:</label> <label class="label1">${job.address }</label>
						</li>
						
						
				</ul>
					<form action="apply" method="post">
						<input type="hidden" name="company" value="${job.username }" /> 
						<input type="hidden" name="fullname" value="${job.fullname} " />
						<input type="hidden" name="content" value="${job.content }" /> 
						<input type="hidden" name="person" value="${sessionScope.username}" />
					<div class="span2"><input type="submit" value="发送简历" class="btn btn-primary"></div>
					</form>
				</div>
						
			<div class="tab-pane" id="panel-549981">
				<ul style="list-style-type: none; font-size: 20px;">

					<li class=""><label>企业名称:</label> 
					<label class="label1">${company.fullname}</label>
					</li>

					<li class=""><label>企业类型:</label> 
					<label class="label1">${company.comtype}</label>
					</li>

					<li class=""><label>企业规模:</label> 
					<label class="label1">${company.empcount}</label>
					</li>



					<li class=""><label>地址:</label> 
					<label style="margin-left: 90px;">${company.address}</label>
					</li>


					<li class=""><label>电子邮箱:</label> 
					<label class="label1">${company.email}</label>
					</li>

					<li class=""><label>联系电话:</label> 
					<label class="label1">${company.tel}</label>
					</li>

					<li class=""><label>联系人:</label> 
					<label style="margin-left: 70px">${company.manager}</label>
					</li>

					<li><label>企业介绍：</label>
				
						<li><p>${company.description}</p></li>

				</ul>
			</div>
			
			
				
		</div>	
			
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
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
	String root1 = request.getContextPath();
%>
<!DOCTYPE html>
<div class="navbar navbar-inverse navbar-fixed-top	" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

			</div>

			<div class="collapse navbar-collapse " id="collapse-1">
				<ul class="nav navbar-nav">
					<li class=""><a href="<%=root1%>/person/main">首页</a></li>

					<li class=""><a href="<%=root1%>/person/joblist">职位列表</a></li>
					

					<li class="dropdown "><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">个人用户<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="<%=root1%>/person/info?username=${sessionScope.username}" data-tab="tab-chrome">个人信息</a></li>
							<li><a href="<%=root1%>/person/intention" data-tab="tab-firefox">求职信息</a></li>
							<li><a href="<%=root1%>/person/manage?username=${sessionScope.username}">求职信息管理</a></li>
						</ul></li>
					
					<li><a href="<%=root1%>/person/record?person=${sessionScope.username}">申请记录</a></li>
					<li><a href="#" data-toggle="modal" data-target="#about-modal">关于</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li class=""><a href="<%=root1%>/person/info?username=${sessionScope.username}">${sessionScope.username}</a></li>
					<li class=""><a href="<%=root1%>/user/exit">退出</a></li>
				</ul>
			</div>

		</div>
	</div>
	
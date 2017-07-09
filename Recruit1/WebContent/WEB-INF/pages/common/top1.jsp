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
					<li class=""><a href="<%=root1%>/com/main">首页</a></li>

					<li class=""><a href="<%=root1%>/com/intentionlist">求职列表</a></li>
					

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">企业用户 <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="<%=root1%>/com/info?username=${sessionScope.username}" data-tab="tab-chrome">企业信息</a></li>
							<li><a href="<%=root1%>/com/recruit" data-tab="tab-firefox">发布招聘信息</a></li>
							<li><a href="<%=root1%>/com/manage?username=${sessionScope.username}" data-tab="tab-safari">招聘信息管理</a></li>
						</ul></li>
					<li class=""><a href="<%=root1%>/com/record?company=${sessionScope.username}">收到的简历</a></li>
					<li><a href="#" data-toggle="modal" data-target="#about-modal">关于</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li class=""><a href="<%=root1%>/com/info?username=${sessionScope.username}">${sessionScope.username}</a></li>
					<li class=""><a href="<%=root1%>/user/exit">退出</a></li>
				</ul>
			</div>

		</div>
	</div>
	
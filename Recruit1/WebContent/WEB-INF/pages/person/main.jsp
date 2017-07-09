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
	<div id="ad-carousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#ad-carousel" data-slide-to="0" class="active"></li>
			<li data-target="#ad-carousel" data-slide-to="1"></li>
			<li data-target="#ad-carousel" data-slide-to="2"></li>
			<li data-target="#ad-carousel" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img src="<%=path%>/resources/images/slide_012.jpg" alt="1 slide">

				<div class="container">
					<div class="carousel-caption">

						<h1>机遇总会留给准备好的人,愿你追梦成功</h1>

						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button"
								>查看详情</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="<%=path%>/resources/images/slide_014.jpg" alt="2 slide">

				<div class="container">
					<div class="carousel-caption">
						<h1>查看更多招聘信息</h1>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">查看详情</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="<%=path%>/resources/images/slide_013.jpg" alt="3 slide">

				<div class="container">
					<div class="carousel-caption">
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">查看详情</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="<%=path%>/resources/images/slide_011.jpg" alt="4 slide">

				<div class="container">
					<div class="carousel-caption">
						<h1>查看更多招聘信息</h1>
						<p>
							<a class="btn btn-lg btn-primary" href="#" 
								role="button">查看详情</a>
						</p>
					</div>
				</div>
			</div>

		</div>

		<a class="left carousel-control" href="#ad-carousel" data-slide="prev"><span
			class="glyphicon glyphicon-chevron-left"></span></a> <a
			class="right carousel-control" href="#ad-carousel" data-slide="next"><span
			class="glyphicon glyphicon-chevron-right"></span></a>
	</div>



	<!--底下部分-->
	<div class="container summary">



		<ul class="nav nav-tabs" role="tablist" id="feature-tab">
			<li class="active"><a href="#tab-tabel1" role="tab"
				data-toggle="tab">技术</a></li>
			<li><a href="#tab-tabel2" role="tab" data-toggle="tab">设计</a></li>
			<li><a href="#tab-tabel3" role="tab" data-toggle="tab">管理</a></li>
			<li><a href="#tab-tabel4" role="tab" data-toggle="tab">财务</a></li>
		</ul>
		<div class="tab-content">

			<div class="tab-pane active" id="tab-tabel1">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>企业名称</th>
							<th>工作内容</th>
							<th>工作类型</th>
							<th>学历要求</th>
							<th>工作地点</th>
							<th>薪资</th>
							<th>查看详情</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${requestScope.joblist}" end="5">
						<c:if test="${p.jobtype=='技术'}">
						<tr>
						<td>${p.fullname }</td>
						<td>${p.content }</td>
						<td>${p.jobtype }</td>
						<td>${p.degree }</td>
						<td>${p.address }</td>
						<td>${p.salary }</td>
						<td><a href="more?username=${p.username}&id=${p.id}"><span class="glyphicon glyphicon-list-alt"></span></a></td>
						</tr>
						</c:if>
						</c:forEach>
					</tbody>
				</table>
				<a href="<%=path%>/person/joblist">查看更多</a>
			</div>
			

			<div class="tab-pane " id="tab-tabel2">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>企业名称</th>
							<th>工作内容</th>
							<th>工作类型</th>
							<th>学历要求</th>
							<th>工作地点</th>
							<th>薪资</th>
							<th>查看详情</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${requestScope.joblist}">
						<c:if test="${p.jobtype=='设计'}">
						<tr>
						<td>${p.fullname }</td>
						<td>${p.content }</td>
						<td>${p.jobtype }</td>
						<td>${p.degree }</td>
						<td>${p.address }</td>
						<td>${p.salary }</td>
						<td><a href="more?username=${p.username}&id=${p.id}"><span class="glyphicon glyphicon-list-alt"></span></a></td>
						</tr>
						</c:if>
						</c:forEach>
					</tbody>
				</table>
				<a href="<%=path%>/person/joblist">查看更多</a>
			</div>
			
			<div class="tab-pane" id="tab-tabel3">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>企业名称</th>
							<th>工作内容</th>
							<th>工作类型</th>
							<th>学历要求</th>
							<th>工作地点</th>
							<th>薪资</th>
							<th>查看详情</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${requestScope.joblist }">
						<c:if test="${p.jobtype=='管理'}">
						<tr>
						<td>${p.fullname }</td>
						<td>${p.content }</td>
						<td>${p.jobtype }</td>
						<td>${p.degree }</td>
						<td>${p.address }</td>
						<td>${p.salary }</td>
						<td><a href="more?username=${p.username}&id=${p.id}"><span class="glyphicon glyphicon-list-alt"></span></a></td>
						</tr>
						</c:if>
						</c:forEach>
					</tbody>
				</table>
				<a href="<%=path%>/person/joblist">查看更多</a>
			</div>
			
			<div class="tab-pane " id="tab-tabel4">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>企业名称</th>
							<th>工作内容</th>
							<th>工作类型</th>
							<th>学历要求</th>
							<th>工作地点</th>
							<th>薪资</th>
							<th>查看详情</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${requestScope.joblist }">
						<c:if test="${p.jobtype=='财务'}">
						<tr>
						<td>${p.fullname }</td>
						<td>${p.content }</td>
						<td>${p.jobtype }</td>
						<td>${p.degree }</td>
						<td>${p.address }</td>
						<td>${p.salary }</td>
						<td><a href="more?username=${p.username}&id=${p.id}"><span class="glyphicon glyphicon-list-alt"></span></a></td>
						</tr>
						</c:if>
						</c:forEach>
					</tbody>
				</table>
				<a href="<%=path%>/person/joblist">查看更多</a>
			</div>

		</div>

		<!-- 关于 -->
		
		<%@include file="../common/about.jsp"%>

	</div>
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
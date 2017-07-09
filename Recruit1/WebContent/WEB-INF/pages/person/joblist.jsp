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



		<h1>职位列表</h1>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>企业名称</th>
					<th>工作内容</th>
					<th>工作类型</th>
					<th>学历要求</th>
					<th>工作地点</th>
					<th>薪资</th>
					<th>查看更多</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${list}">
					<tr>
						<td>${p.fullname }</td>
						<td>${p.content }</td>
						<td>${p.jobtype }</td>
						<td>${p.degree }</td>
						<td>${p.address }</td>
						<td>${p.salary }</td>
						<td><a href="more?username=${p.username}&id=${p.id}"><span class="glyphicon glyphicon-list-alt"></span></a></td>
					</tr>
				</c:forEach>
				
			</tbody>
			
		</table>
		<br>
		<table >
       <tr>
            <td>          
                <a href="<%=path%>/person/joblist?pageNo=${page.topPageNo}"><input type="button" name="fristPage" value="首页" /></a>
                <c:choose>
                  <c:when test="${page.pageNo!=1}">             
                      <a href="<%=path%>/person/joblist?pageNo=${page.previousPageNo }"><input type="button" name="previousPage" value="上一页" /></a>                
                  </c:when>
                  <c:otherwise>   
                      <input type="button" disabled="disabled" name="previousPage" value="上一页" />       
                  </c:otherwise>
                </c:choose>
                <c:choose>
                  <c:when test="${page.pageNo != page.totalPages}">
                    <a href="<%=path%>/person/joblist?pageNo=${page.nextPageNo }"><input type="button" name="nextPage" value="下一页" /></a>
                  </c:when>
                  <c:otherwise>    
                      <input type="button" disabled="disabled" name="nextPage" value="下一页" />
                  </c:otherwise>
                </c:choose>
                <a href="<%=path%>/person/joblist?pageNo=${page.bottomPageNo}"><input type="button" name="lastPage" value="尾页" /></a>
            </td>
        </tr>
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
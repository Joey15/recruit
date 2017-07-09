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
	<div class="container summary1">
		<h1>求职者信息</h1>
		<div class="container summary">
		<table  style="border-collapse:separate;border-spacing:18px;font-size:20px;" >
		 <tr>
                <td width="110">姓名：</td>	
                <td width="120">${person.realname}</td>
                <td width="110">性别：</td>
                <td width="120">${person.sex}</td>
               
            </tr>
            <tr>
                <td>学历：</td>
                <td> ${person.degree}</td>
                <td>是否结婚：</td>
                <td>${person.marry}</td>
            </tr>
            <tr>
                <td>所在省份：</td>
				<td>${person.province} </td>
                 
				<td>是否在职：</td>
                <td> ${person.jobstatus}</td>
            </tr>
            <tr>
                <td>出生年份：</td>
                <td>${person.birthday} </td>
                <td>外语等级：</td>
                <td> ${person.language}</td>
            </tr>
            
			<tr>
				<td>专业：</td>
                <td id="check1" colspan="2" >${person.major}</td>
            
			</tr>
            <tr>
                <td>邮箱地址：</td>
                <td id="check1" colspan="2" >${person.email}</td>
            </tr>
			<tr>    
			<td>电话号码：</td>
                <td id="check2" colspan="2" >${person.tel} </td>
            </tr>
            <tr>
                 <td>家庭住址：</td>
                <td colspan="2">${person.address}</td>
            </tr>
        </table>
        
				
		<input value="返回" type="button" style="width: 60px; height: 30px;"
					onclick="javascript:window.history.go(-1);">
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
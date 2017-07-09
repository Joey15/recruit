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
		<h1>个人信息</h1>
		<div class="container summary1">
		<form action="updateperson" method="post">
		<input type="hidden" name="id" value="${person.id}"/>
		<input type="hidden" name="username" value="${person.username}"/>
		<table  style="border-collapse:separate;border-spacing:18px;" >
		 <tr>
                <td width="90">姓名：</td>	
                <td width="120"><input type="text" style="width:95%;height:35px; " value="${person.realname}" name="realname" id="detail_realname"></td>
                <td width="90">性别：</td>
                <td width="120"> <select name="sex" value="${person.sex}"style="width:95%;height:35px;" id="detail_sex"><option value="男">男</option><option value="女">女</option></select></td>
               
            </tr>
            <tr>
                <td>学历：</td>
                <td> <input type="text" value="${person.degree}" style="width:95%;height:35px; " name="degree" id="detail_degree"></td>
                <td>是否结婚：</td>
                <td> <select name="marry" value="${person.marry}" style="width:95%;height:35px; " id="detail_marry"><option value="否">否</option><option value="是">是</option></td>
            </tr>
            <tr>
                <td>所在省份：</td>
				<td> <input type="text" value="${person.province}" style="width:95%;height:35px; " name="province" id="detail_degree"></td>
                 
				<td>是否在职：</td>
                <td> <select name="jobstatus" value="${person.jobstatus}" style="width:95%;height:35px; " id="detail_jobstatus"><option value="否">否</option><option value="是">是</option></td>
            </tr>
            <tr>
                <td>出生年份：</td>
                <td> <input type="text" value="${person.birthday}" style="width:95%;height:35px;" name="birthday" id="detail_birthday">
                			
			</td>
                <td>外语等级：</td>
                <td> <input type="text" value="${person.language}" style="width:95%;height:35px;" name="language" id="detail_language"></td>
            </tr>
            
			<tr>
				<td>专业：</td>
                <td id="check1" colspan="2" ><input type="text" value="${person.major}" style="width:95%;height:35px; " name="major" id="detail_major" ></td>
            
			</tr>
            <tr>
                <td>邮箱地址：</td>
                <td id="check1" colspan="2" ><input type="text" value="${person.email}" style="width:95%;height:35px; " name="email" id="detail_email" ></td>
            </tr>
			<tr>    
			<td>电话号码：</td>
                <td id="check2" colspan="2" > <input type="text" value="${person.tel}" style="width:95%;height:35px;" name="tel" id="detail_tel"  onblur="isMobile(this.value)"></td>
            </tr>
            <tr>
                 <td>家庭住址：</td>
                <td colspan="2"><input type="text" value="${person.address}"  style="padding-left:2%;width:95%;height:35px;" name="address" id="detail_address"></td>
            </tr>
        </table>
        
        
        		
				<input value="保存" type="submit" style="width: 60px;margin-right: 20px; height: 30px; background: #fff;">
				<input value="返回" type="button" style="width: 60px; height: 30px;background: #fff;" onclick="javascript:window.history.go(-1);">
			
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="dtree.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="dtree.js"></script>
</head>

<body eftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
<table width="90%" border="0" cellspacing="1" cellpadding="2" align="center">
<div class="dtree">
  <script type="text/javascript">
    d=new dTree('d');

    d.add('01','-1','招聘求职系统后台');
    d.add('0101','01','用户管理');
    d.add('010101','0101','个人用户','${pageContext.request.contextPath}/admin/userlist','','right');

    d.add('010102','0101','企业用户','${pageContext.request.contextPath}/admin/userlist1','','right');
    
    
    d.add('0102','01','信息管理');
    d.add('010201','0102','招聘信息','${pageContext.request.contextPath}/admin/joblist','','right');

    d.add('010202','0102','求职信息','${pageContext.request.contextPath}/admin/intentionlist','','right');
    
    document.write(d);
  </script>
</div>
</table>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspexp.z02_vo.Student"%>
<% request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>17.05.</title>
<style type="text/css">
</style>
<script src="<%=path%>/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
				
			})
		</script>
</head>
<%
//Object 타입이기에 type casting이 필요
Student stu=(Student)session.getAttribute("stu01");
%>
<body>
	<h1>
		세션에 있는 Student 이름:<%=stu.getName() %></h1>
	<h1>
		세션에 있는 Student 학년:<%=stu.getGrade() %></h1>
	<h1>
		세션에 있는 Student 반:<%=stu.getSect()%></h1>
</body>
</html>

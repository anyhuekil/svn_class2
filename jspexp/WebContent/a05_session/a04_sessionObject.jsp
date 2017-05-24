<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
import="jspexp.z02_vo.Student"
%>
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
	<body>
<%
Student stu = new Student();
stu.setName("홍길동");
stu.setGrade(2);
stu.setSect(2);
// session에 객체를 등록..==> 배열 ArrayList<VO>
session.setAttribute("stu01", stu);
%>	
	<h1>세션 등록!!</h1>
	<a href="a05_checkObjSession.jsp">세션 확인</a>
	

	</body>
</html>

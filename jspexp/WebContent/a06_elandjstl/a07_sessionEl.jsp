<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*"
%>
<% 
request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();
String id=request.getParameter("id");
String pass=request.getParameter("pass");
Member m = new Member();
m.setMemid(id);
m.setPass(pass);
session.setAttribute("mem", m);


%>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>justification</title>
		<style type="text/css">
		</style>
		<script src="<%=path%>/com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				
			})
		</script>
	</head>
	<body>
	<h2>${mem.memid}님 환영합니다!!</h2>
	<h2>설정된 비번은${mem.pass}</h2>

	</body>
</html>
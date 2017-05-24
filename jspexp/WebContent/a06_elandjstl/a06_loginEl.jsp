<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*"
%>
<% 
request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();
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
	<center>
	<h2>로그인</h2>
	<form method="post" action="a07_sessionEl.jsp">
		ID:<input type="text" name="id"/><br>
		PASS:<input type="text" name="pass"/><br>
		<input type="submit" value="세션처리"/><br>
	</form>
	</body>
</html>

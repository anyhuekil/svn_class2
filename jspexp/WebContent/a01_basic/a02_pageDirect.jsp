<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspexp.a01_basic.Person"
	import="java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*

*/

/**/
</style>
<script src="/jspexp/com/jquery-1.10.2.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	
});
</script>
</head>
<%
	Person p = new Person();
	p.setName("홍길동");
	p.setAge(27);
	p.setLoc("설강남");
%>
<body>
	<h1 align="center">인적 사항!!</h1>
	<table align="center" border>
		<tr>
			<td>이름</td>
			<td><%=p.getName()%></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%=p.getAge()%></td>
		</tr>
		<tr>
			<td>어디?</td>
			<td><%=p.getLoc()%></td>
		</tr>
	</table>
</body>
</html>

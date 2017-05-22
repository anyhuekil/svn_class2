<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% 
request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();
ArrayList<Member> mlist = new A04_MemeberDao().getMemberList();
request.setAttribute("mlist",mlist);

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
	<table align="center" border>
		<tr><th>아이디</th><th>패스워드</th><th>이름</th><th>포인트</th><th>권한</th></tr>
		<c:forEach var="mem" items="${mlist}">
			<tr><td>${mem.memid}</td><td>${mem.pass}</td>
			<td>${mem.name}</td><td>${mem.point}</td>
			<td>${mem.auth}</td>
			</tr>
		</c:forEach>
	
	</table>

	</body>
</html>
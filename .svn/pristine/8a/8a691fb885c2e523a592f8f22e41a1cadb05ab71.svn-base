<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
A01_EmpDB empDB = new A01_EmpDB();
Emp emp = new Emp();
emp.setEname(request.getParameter("ename").toUpperCase());
emp.setJob(request.getParameter("job").toUpperCase());
%>
<c:set var="empList" value="<%= empDB.searchPre(emp)%>"/>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>justification</title>
		<style type="text/css">
		</style>
		<script src="${path}/com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				
			})
		</script>
	</head>
	<body>
		데이터 건수:${empList.size()}<br>
		
		<table border>
			<tr><th>사원번호</th><th>사원명</th><th>직책</th>
				<th>입사일</th><th>급여</th><th>보너스</th>
				<th>부서번호</th></tr>
		<c:forEach var="emp" items="${empList}">
			<tr><td>${emp.empno}</td><td>${emp.ename}</td>
				<td>${emp.job}</td><td>${emp.hiredate}</td>
				<td>${emp.sal}</td><td>${emp.comm}</td>
				<td>${emp.deptno}</td></tr>
		</c:forEach>
		</table>
	</body>
</html>
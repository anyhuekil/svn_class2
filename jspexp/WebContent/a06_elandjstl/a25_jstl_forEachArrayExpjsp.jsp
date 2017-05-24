<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% 
request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();

Emp sch=new Emp();
sch.setEname(request.getParameter("ename")!=null?request.getParameter("ename"):"");
sch.setJob(request.getParameter("job")!=null?request.getParameter("job"):"");
ArrayList<Emp> elist=new A01_EmpDB().searchPre(sch);
request.setAttribute("elist", elist);
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
				$("input").keyup(function(){
					if(event.keyCode==13) $("form").submit();
				});
			})
		</script>
	</head>
	<body><center>
	
	<form method="post">
		이름:<input name="ename" value="${param.ename}"/>
		직책:<input name="job" value="${param.job}"/><br>
	</form>
	<table border>
		<tr><th>사번</th><th>이름</th><th>직책</th><th>관리자</th>
			<th>급여</th><th>부서</th></tr>	
	
		<c:forEach var="emp" items="${elist}">
			<tr><td>${emp.empno}</td><td>${emp.ename}</td>
			<td>${emp.job}</td><td>${emp.mgr}</td>
			<td>${emp.sal}</td><td>${emp.deptno}</td></tr>
		
		</c:forEach>
	</table>
	</body>
</html>

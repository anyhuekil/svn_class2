<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<%
ArrayList<Emp> empList = new A01_EmpDB().empList();
request.setAttribute("list", empList);
%>
	<body>
	<h1>크기:${list.size()}</h1>
	<c:forEach var = "emp" items="${list}" 
		varStatus="sts"> <!-- for(Emp emp:list) -->
		<h2 style="background:${sts.first?'yellow':''};
					color:${sts.last?'green':''};">
			${sts.count}. ${emp.ename}[${sts.index}]
			,${emp.empno},${emp.job},${emp.mgr},${emp.sal}
			</h2> 				<!--   emp.getEname() -->
	</c:forEach>
	
	
	</body>
</html>

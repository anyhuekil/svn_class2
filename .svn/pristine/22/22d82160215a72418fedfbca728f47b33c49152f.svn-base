<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*"
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
	<body>
		<table border>
			<c:forEach var="cnt" begin="1" end="100" step="1">
				<tr><td width="200pt" align="center">
						${cnt}</td></tr>
				<!-- jsp 변수 설정 누적값 처리 -->		
				<c:set var="tot" value="${tot+cnt}"/>
			</c:forEach>
		</table>
		<h2>전체합계:${tot}</h2>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="path" value="${pageContext.request.contextPath}"/>
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
	<!-- 오늘 날짜 지정 -->
	<c:set var="now" value="<%=new Date()%>"/>
	날짜(full)형식:<fmt:formatDate value="${now}" type="date" 
				dateStyle="full"/><br>
	날짜(short)형식:<fmt:formatDate value="${now}" type="date" 
				dateStyle="short"/><br>
	시간형식:<fmt:formatDate value="${now}" type="time"/><br>
	날짜,시간형식:<fmt:formatDate value="${now}" type="both"
		dateStyle="full" timeStyle="full"/><br>
	패턴형식:<fmt:formatDate value="${now}" 
		pattern="yyyy/MM/dd a h:mm:ss"/>	
	
	

	</body>
</html>
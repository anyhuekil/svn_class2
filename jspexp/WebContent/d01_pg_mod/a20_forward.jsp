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
	<!-- 해당 page로 바로 이동 처리 
	?page=a ==> a21_goPage.jsp
	그외는 ==> a22_goPage.jsp
	-->
	<c:choose>
		<c:when test="${param.page=='a'}">
			<jsp:forward page="a21_goPage.jsp">
				<jsp:param value="himan1" name="call"/>
			</jsp:forward>
		</c:when>
		<c:otherwise>
			<jsp:forward page="a22_goPage.jsp">
				<jsp:param value="himan2" name="call"/>
			</jsp:forward>
		</c:otherwise>
	</c:choose>		
	</body>
</html>

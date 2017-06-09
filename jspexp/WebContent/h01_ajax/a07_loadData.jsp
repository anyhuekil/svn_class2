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
		<h3>조회 물건명:${param.schName}</h3>
		<c:choose>
			<c:when test="${param.schName eq '사과'}">
				<h4>사과는 5개</h4>
			</c:when>		
			<c:when test="${param.schName eq '바나나'}">
				<h4>바나나는 6개</h4>
			</c:when>	
			<c:otherwise>
				<h4>그 외는 재고량 없음!!</h4>
			</c:otherwise>	
			
		</c:choose>
	</body>
</html>

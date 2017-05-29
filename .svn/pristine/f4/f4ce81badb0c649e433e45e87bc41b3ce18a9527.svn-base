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
			var point="${mem.point}";
			if(point<200){
				alert("포인트 200 필요합니다!");
				$(location).attr("href","a13_chargePoint.jsp");
			}
			$(document).ready(function(){
				
			})
		</script>
	</head>
	<body>
<jsp:setProperty property="point" name="mem" 
	value="${mem.point-200}"/>		
		<h1>영화1(포인트200)</h1>
		<h2>아이디:${mem.memid}</h2>
		<h2>포인트:${mem.point}</h2>
		<a href="a10_movie.jsp">초기화면</a>
		<a href="a12_movie.jsp">영화보러가기(영화2)</a>
		<a href="a13_chargePoint.jsp">포인트 충전(+2000)</a>

	</body>
</html>
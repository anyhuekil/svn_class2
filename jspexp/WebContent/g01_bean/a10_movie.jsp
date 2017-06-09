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
<jsp:useBean id="mem" class="jspexp.z02_vo.Member" 
	scope="session"/>
<jsp:setProperty property="memid" name="mem" value="himan"/>		
<jsp:setProperty property="point" name="mem" value="1000"/>		
		<h1>온라인 영화관</h1>
		<h2>아이디:${mem.memid}</h2>
		<h2>포인트:${mem.point}</h2>
		<a href="a11_movie.jsp">영화보러가기(영화1)</a>
		<a href="a12_movie.jsp">영화보러가기(영화2)</a>

	</body>
</html>

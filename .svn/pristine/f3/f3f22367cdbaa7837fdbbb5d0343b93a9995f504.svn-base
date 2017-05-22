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
		<h1>학점 등급 확인</h1>
		<form method="post">
			점수를 입력하세요!!<input type="text" name="point" value="${param.point}"/><br>
			<input type="submit" value="등급 확인"/><br>
		</form>
		<!-- 일단 null아니고 공백이 아닐때. -->
		<c:if test="${not empty param.point}">
			<c:choose>
				<c:when test="${param.point>=90}">
					<h2>A등급입니다!!</h2>
				</c:when>
				<c:when test="${param.point>=80}">
					<h2>B등급입니다!!</h2>
				</c:when>
				<c:when test="${param.point>=70}">
					<h2>C등급입니다!!</h2>
				</c:when>
				<c:when test="${param.point>=60}">
					<h2>D등급입니다!!</h2>
				</c:when>
				<c:otherwise>
					<h3>F등급입니다.!! 재수강을!!</h3>
				</c:otherwise>
																
			</c:choose>
		</c:if>
	</body>
</html>












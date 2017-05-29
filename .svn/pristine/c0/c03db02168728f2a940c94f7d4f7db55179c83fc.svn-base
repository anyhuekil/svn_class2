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
		var auth="${mem.auth}";
		if(auth!="admin"){
			alert("권리자 권한이 필요합니다!!\n이전 페이지 이동");
			history.go(-1);// 이전 페이지 이동 처리..
		}
			
			$(document).ready(function(){
				
			})
		</script>
	</head>
	<body>
	<h1>관리자 page</h1>
	<!-- jsp:getProperty는 el tag로 mem.property명으로 가져
	올 수 있다. -->
	<h2>이름:${mem.name}</h2>
	<h2>포인트:${mem.point}</h2>
	<h2>권한:${mem.auth}</h2>
<h1>페이지이동</h1>
<a href="a03_initBean.jsp">초기 페이지</a><br>	
<a href="a05_buy.jsp">구매 페이지1</a><br>	
<a href="a06_buy2.jsp">구매 페이지2</a><br>	
	</body>
</html>
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
<jsp:useBean id="com" class="jspexp.z02_vo.Computer"/>
<jsp:setProperty property="cpu" name="com" value="i5-4690"/>	
<jsp:setProperty property="ram" name="com" value="8.00GB"/>	
<jsp:setProperty property="hdd" name="com" value="1tb"/>	
	<body>
		<h1>구매 컴퓨터 사양</h1>
		<h2>cpu:<jsp:getProperty name="com" property="cpu"/></h2>
		<h2>ram:<jsp:getProperty name="com" property="ram"/></h2>
		<h2>hdd:<jsp:getProperty name="com" property="hdd"/></h2>

	</body>
</html>
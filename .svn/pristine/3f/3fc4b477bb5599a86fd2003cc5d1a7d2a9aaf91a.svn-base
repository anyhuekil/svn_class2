<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		if(${empty msg}){
			alert('오답입니다');
		}
	});
</script>
</head>
<body>
	<c:if test="${not empty msg }">
		<h1>pass !!</h1>	
	</c:if>
</body>
</html>
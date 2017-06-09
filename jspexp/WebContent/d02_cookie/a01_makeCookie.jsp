<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"
	import = "java.net.*"
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
<%
	Cookie cookie1 = new Cookie("name1","himan");
	Cookie cookie2 = new Cookie("name2",
					URLEncoder.encode("홍길동","utf-8"));
	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>	
	<body>
	<h1>쿠키1-이름:<%=cookie1.getName()%>, 값:<%=cookie1.getValue() %></h1>
	<h1>쿠키2-이름:<%=cookie2.getName()%>, 
		값:<%=URLDecoder.decode(cookie2.getValue(), "utf-8") %></h1>
		
	<c:forEach var="co" items="${cookie}">
		${co.name}
	</c:forEach>	

	</body>
</html>

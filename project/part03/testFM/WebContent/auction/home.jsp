<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	response.sendRedirect("z02_JSP/signIn.jsp"); 
%>

<fmt:requestEncoding value="UTF-8" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>♪HOME</title>
<link rel="stylesheet" type="text/css"
	href="${path}/auction/z03_CSS/home.css?ver=1.0">
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
</head>
<body>
	<div id="allCover">
	<header>
		<div id="titleLoc">home</div>
		<div id="loginLoc"><jsp:include page="z02_JSP/signIn.jsp"></jsp:include></div>
	</header>
	<nav>nav</nav>
	<section>section</section>
	<footer>footer</footer>
	</div>
</body>
</html>

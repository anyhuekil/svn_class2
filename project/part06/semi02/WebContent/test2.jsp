<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="EUC-KR" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>justification</title>
<style type="text/css">
</style>
<script src="${path}/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	})
</script>
</head>
<body>

	<p>

		<%
			String number = request.getParameter("number");
			String id = request.getParameter("id");
			String comment = request.getParameter("comment");
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("number", number);
			map.put("id", id);
			map.put("comment", comment);
		%>
		글번호:<%=map.get("number")%><br> 아이디:<%=map.get("id")%><br>
		코멘트:<%=map.get("comment")%><br>
		<%
		%>
	</p>
</body>
</html>

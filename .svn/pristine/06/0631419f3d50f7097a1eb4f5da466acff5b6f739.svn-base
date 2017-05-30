<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="z01_database.AuctionUserDAO"
	import="z02_vo.AuctionUserVO"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	boolean hasSession = false;
	AuctionUserVO userInVO = null;
	if (session.getAttribute("userIn") != null) {
		hasSession = true;
		userInVO = (AuctionUserVO) session.getAttribute("userIn");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>♪UserIn</title>
<style type="text/css">
</style>
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	var hasSession =<%=hasSession%>;
	if (!hasSession) {
		alert("로그인 해주세요!!");
		$(location).attr("href", "signIn.jsp");
	}
	$(document).ready(function() {
		$("#logout").click(function() {
			// 로그 아웃
			$(location).attr("href", "signIn.jsp?proc=logout");
		});
	});
</script>
</head>
<body>
	<div align="center">
		<h3><%=userInVO.getUserName()%>님 환영합니다.
		</h3>
		<span>권한 : [<%=userInVO.getAuth()%> 등급] <input type="button"
			value="로그아웃" id="logout" /></span>
	</div>
</body>
</html>

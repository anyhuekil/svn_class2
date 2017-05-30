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
	String proc = request.getParameter("proc");
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	String userName = null;

	boolean hasData = false;
	boolean isLogout = false;
	// 로그인
	if (proc != null && proc.equals("login")) {
		AuctionUserVO sch = new AuctionUserVO();
		sch.setEmail(email);
		sch.setPassword(pwd);

		AuctionUserDAO userDAO = new AuctionUserDAO();
		AuctionUserVO userVO = userDAO.infoUser(sch);
		if (userVO != null) {
			userName = userVO.getUserName();
			hasData = true;
			session.setAttribute("userIn", userVO);
		}
	}

	// 로그아웃
	if (proc != null && proc.equals("logout")) {
		session.invalidate();
		isLogout = true;
	}
%>



<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>♪SignProc</title>
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	});
	var hasData = <%=hasData%>;
	var isLogout = <%= isLogout %>;
	if(hasData){
		// 메인페이지 이동
		alert("<%=userName%>님 환영합니다.");
		$(location).attr("href", "auction_main.jsp");
	} else {
		// 로그인페이지 이동
		if (isLogout){
			alert("<%=userName%>님 안녕히가세요.");
		} else {
			alert("e-Mail 또는 Password를 확인해 주세요.");
		}
		$(location).attr("href", "signIn.jsp");
	}
</script>
</head>
<body>

</body>
</html>
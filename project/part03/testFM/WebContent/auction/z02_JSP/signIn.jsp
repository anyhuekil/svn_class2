<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, java.sql.*"
	import="z01_database.AuctionUserDAO, z02_vo.AuctionUserVO "%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:requestEncoding value="UTF-8" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>♪SignIN</title>
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#logBtn").click(function() {
			if ($("input[name=email]").val() == "") {
				alert("email를 입력하세요.");
				$("input[name=email]").focus();
				return;
			} else if ($("input[name=pwd]").val() == "") {
				alert("비밀번호를 입력하세요.");
				$("input[name=pwd]").focus();
				return;
			} else {
				$("form").submit();
			}
		})
 		$("#regBtn").click(function() {
			// $(location).attr("href", "");
			window.open("${path}/auction/z02_JSP/signUp.jsp", "회원가입", "width=500, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=yes" ); 
		})
	});
</script>
<style type="text/css">
</style>
</head>
<body>
	<div style="margin-top: 40vh">
		<form method="post" action="signInProc.jsp">
			<input type="hidden" name="proc" value="login" />
			<table align="center">
				<tr>
					<th>e-Mail :</th>
					<th colspan="2"><input name="email"></th>
				</tr>
				<tr>
					<th>&nbsp;&nbsp;PASS :</th>
					<th colspan="2"><input type="password" name="pwd"></th>
				</tr>
				<tr>
					<th></th>
					<th><input type="button" id="logBtn" value="로그인"></th>
					<th><input type="button" id="regBtn" value="회원가입"></th>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>

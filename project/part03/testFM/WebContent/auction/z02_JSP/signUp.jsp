<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="z02_vo.AuctionUserVO"
	import="z01_database.AuctionUserDAO"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>♪SignUP</title>

<script src="http://code.jquery.com/jquery-3.2.1.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	
	$("#checkEmail").click(
		function() {
			if ($("input[name=newEmail]").val() == "") {
				alert("Email를 입력하세요");
				$("input[name=newEmail]").focus();
				return;
			} else {
				var newEmail = $("input[name=newEmail]").val();
				window.open("signUpProc.jsp?mail=" + newEmail+"&&proc=check",
						"popup_window",
						"width=500, height=300, scrollbars=no");
			}
		});
	$("#insBtn").click(
		function() {
			if ($("input[name=newEmail]").val() == "") {
				alert("아이디를 입력하세요.");
				$("input[name=newEmail]").focus();
				return;
			} else if ($("input[name=newPwd]").val() == ""
					|| $("input[name=newPwd2]").val() == "") {
				alert("비밀번호를 입력하세요.");
				$("input[name=newPwd]").focus();
				return;
			} else if ($("input[name=newPwd]").val() != $(
					"input[name=newPwd2]").val()) {
				alert("비밀번호가 일치하지 않습니다.");
			} else {
				$("form").submit();
				alert("회원가입완료");
			}
		});
});
</script>
<style type="text/css">
</style>
</head>


<body>
	<div align="center">
		<h2>MEMBER SHIP</h2>
	<form method="post" name="memberShip" action="signUpProc.jsp">
		<input type="hidden" name="proc" value="singUp" />
		<table border=1>
			<tr>
				<th>eMail</th>
				<th><input name="newEmail"></th>
				<th><input type="button" id="checkEmail" value="중복확인"></th>
			</tr>
			<tr>
				<th>비밀번호</th>
				<th><input type="password" name="newPwd"></th>
			</tr>
			<tr>
				<th>비밀번호 재입력</th>
				<th><input type="password" name="newPwd2"></th>
			</tr>
			<tr>
				<th colspan="3"><input type="button" id="insBtn" value="회원가입"></th>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>
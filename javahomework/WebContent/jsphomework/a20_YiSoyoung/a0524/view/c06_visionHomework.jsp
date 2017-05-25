<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#loginForm_wrap {
		width:430px;
		margin:20px auto;
		border:1px solid #2d1152;
		padding:20px;
	}
	#login_title {
		margin:10px auto;
		padding-bottom:20px;
		width:400px;
		border-bottom:1px solid #2d1152;
		color:#2d1152;
		font-size:1.5em;
		text-align:center;
		font-weight:bold;
	}
	#ename, #empno{
		border: 1px solid #2d1152;
	}
	#loginForm table {
		margin:0 auto;
		color:#2d1152;
	}
	#loginForm table tr {
		height: 40px;
	}
	
	#loginForm table th {
		width:120px;
		font-size:0.9em;
		color:#3F3F48;
		font-weight:bold;
		text-align:left;
		padding-left:10px;
	}
	#loginForm table td {
		width: 300px;
	}
	.loginBtn_style {
	color: #ffffff;
	background: #2d1152;
	border-style: none;
}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		
	});
</script>
</head>
<body>
	<div id="loginForm_wrap">
		<form action="<%=request.getContextPath() %>/vision"  id="loginForm">
			<div id="login_title">이름과 사번을 입력하세요</div>
			<table>				
				<tr>
					<th><label for="ename">이름</label></th>
					<td><input type="text" name="ename" id="ename" placeholder="사우의 이름은 여기에" style="width:95%; height:90%; padding:3px;" required="required"></td>
				</tr>
				<tr>
					<th><label for="empno">사번</label></th>
					<td><input type="text" name="empno" id="empno" placeholder="사번은 숫자예요. 문자입력시 예외처리" style="width:95%; height:90%; padding:3px;" required="required"></td>
				</tr>
				<tr>
					<td colspan="2"> &nbsp; </td>
				</tr>
				<tr>
					<td colspan="2">
					<input type="submit" value="확인" class="loginBtn_style" style="width:100%; height:120%; padding:3px;">
				</tr>				
			</table>
		</form>
	</div>
</body>
</html>
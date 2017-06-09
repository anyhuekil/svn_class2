<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			var msg="${msg}";
			if(msg!=""){
				alert(msg);
			}		
			$(document).ready(function(){
				
			})
		</script>
	</head>
	<body>
	<h1>로그인</h1>
	<!-- Controller 호출 action="" 
		loginck.do?id=@@@&pass=@@@@
	-->
	<form action="${path}/loginck.do" method="post">
		아이디:<input type="text" name="id"/><br>
		패스워드:<input type="password" name="pass"/><br>
		<input type="submit" value="로그인"/>
	</form>

	</body>
</html>

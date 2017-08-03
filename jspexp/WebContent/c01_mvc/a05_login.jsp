<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />
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
			var id="${id}";
			if(id!=""){
				alert(id+"계정은 인증되지 않았습니다!!"+
						"\nid와 password를 확인하세요")
			}
		
			$(document).ready(function(){
				$("input[name=id]").focus();
			})
		</script>
</head>
<body>
	<center>
		<h1 align="center">로그인</h1>
		<!-- action="호출controller -->
		<form method="post">
			ID : <input type="text" name="id" /><br> PASSWORD : <input
				type="password" name="pwd" /><br> <input type="submit"
				value="로그인" />
		</form>
</body>
</html>

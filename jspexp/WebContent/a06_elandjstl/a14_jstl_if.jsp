<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspexp.z01_database.*,jspexp.z02_vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% 
request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();
%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>justification</title>
<style type="text/css">
</style>
<script src="<%=path%>/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
				
				
				// 선택했을 때, 전송
				$("#selAuth").change(function(){
					//alert( "권한:"+$(this).val() );
					$("form").submit();	
				});
				// 전송되어 온 값을 setting 처리
				var auth="${param.selAuth}";
				if( auth!="" ) $("#selAuth").val("${param.selAuth}");
			})
		</script>
</head>
<body>
	<center>
		<form method="post">
			사용자 권한: <select id="selAuth" name="selAuth">
				<option>admin</option>
				<option>user01</option>
				<option>user02</option>
				<option>guest</option>
			</select>
		</form>
		<br>
		<c:if test="${param.selAuth eq 'admin' }">어서오세요! 관리자 page입니다.</c:if>
		<c:if test="${param.selAuth eq 'user01' }">어서오세요! 사용자 page입니다.</c:if>
		<c:if test="${param.selAuth eq 'user02' }">어서오세요! 사용자 page입니다.</c:if>
		<c:if test="${param.selAuth eq 'guest' }">어서오세요! 손님 page입니다.</c:if>
</body>
</html>











<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8"/>
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
			$(document).ready(function(){
				
			})
		</script>
	</head>
	<jsp:useBean id="mb" class="jspexp.z02_vo.MemberBean"
	 scope="session"/>
	<jsp:setProperty property="*" name="mb"/>
	<!-- 입력에 name과 매칭되는 setXXX메서드가 있으면 다
	입력처리하겠다. -->
	<body>
		<h1>입력한 id:${mb.id}</h1>
		<h1>입력한 password:${mb.password}</h1>
		<h1>입력한 name:${mb.name}</h1>
		<h1>입력한 address:${mb.address}</h1>
		<h1>입력한 email:${mb.email}</h1>
		<h1>입력한 등록일:${mb.registerDate}</h1>
	</body>
</html>

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
				
			})
		</script>
</head>
<%
Emp e = new Emp();
e.setEname("신길동");
e.setSal(5000);
request.setAttribute("emp", e);
%>
<body>
	<c:set var="em01" value="${emp}" />
	<!-- property(메서드를 통해 필드값) 변경 
	c:set target="객체변수" property="메서드set삭제이름값"
	      value="입력할 데이터"
	em01.setEname("슈퍼맨")
	==>
	c:set target="em01" property="ename" value="슈퍼맨"
-->
	<c:set target="${em01}" property="ename" value="슈퍼맨" />
	사원이름:${em01.ename}
	<br> 사원급여:${em01.sal}
	<br> 연봉A등급여부(7000이상):${em01.sal>=7000}
	<br>
</body>
</html>

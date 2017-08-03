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
<body>
	<!--1)저장 
	c:set var="변수명" value="값" scope="범위"
	2)호출
	S{변수명}
	
	ex) name
	    age
	    loc
	 이름 : @@@
	 나이 : @@
	 사는 곳 : @@@   
	
 -->
	<c:set var="fruit01" value="사과" />
	과일명:${fruit01}
	<br>
	<c:set var="name" value="홍길동" />
	이름:${name}
	<br>
	<c:set var="age" value="25" />
	나이:${age}
	<br>
	<c:set var="loc" value="서울강남" />
	사는곳:${loc}
	<br>
	<!-- 
 	변수 연산처리
 	price
 	cnt
 	가격:@@@
 	갯수:@@
 	총비용:@@@
  -->
	<c:set var="price" value="3000" scope="session" />
	<c:set var="cnt" value="5" />
	<c:set var="tot" value="${price*cnt}" scope="application" />
	가격:${price}
	<br> 갯수:${cnt}
	<br> 총비용:${tot}
	<br>
	<a href="a10_jstlSope.jsp">변수 범위 확인</a>
	<!-- c:set scope="page/request/session/application" -->

</body>
</html>

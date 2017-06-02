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
			$(document).ready(function(){
				
			})
		</script>
	</head>
	<body>
		<!-- action : 요청하는 controller 지정 
		http://localhost:6080/springweb/reqBuy.do
		위 주소로 form안에 있는 submit()를 클릭시,
		Controller를 호출하며 form안에 포함된 element(input
		select, )을 query string으로 전달하겠습니다.
		?pname=사과&price=2
		-->
		<h1 align="center">구매 내역</h1>
		<form method="post" action="${path}/reqBuy.do">
			<table align="center" border><tr><td>물건명</td>
					   <td><input type="text" name="pname" /></td></tr>
				   <tr><td>가격</td>
				       <td><input type="text" name="price" /></td></tr>
				   <tr><td>갯수</td>
				       <td><input type="text" name="cnt" /></td></tr>    
				   <tr><td colspan="2" align="center">
				   		<input type="submit" value="구매요청"/></td></tr>
			</table>
		</form>
	</body>
</html>






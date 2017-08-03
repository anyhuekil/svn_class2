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
			$(document).ready(function(){
				
			})
		</script>
</head>
<body>
	<!-- 숫자 처리 -->
	<c:set var="price" value="9999999" />
	<fmt:formatNumber value="${price}" type="number" var="numberType" />
	<br> 통화 :
	<fmt:formatNumber value="${price}" type="currency" currencySymbol="원" />
	<br> 퍼센트 :
	<fmt:formatNumber value="${price}" type="percent" />
	<br> 퍼센트 :
	<fmt:formatNumber value="0.25" type="percent" />
	<br>
	<!-- 선언한 데이터 표시 -->
	숫자 : ${numberType}
	<br>
	<!-- 정한 패턴으로 데이터 보이기. pattern -->
	패턴 :
	<fmt:formatNumber value="${price}" pattern="000000000000.00" />

</body>
</html>











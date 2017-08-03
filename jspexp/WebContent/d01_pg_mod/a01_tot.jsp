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
	<table width="700pt" height="500pt" border>
		<tr>
			<td colspan="2" height="20%"><jsp:include page="a04_top.jsp">
					<jsp:param name="id" value="홍길동" />
				</jsp:include> <!-- 공통 부분을 대한 처리 --></td>
		</tr>
		<tr>
			<td width="20%"><jsp:include page="a02_left.jsp">
					<jsp:param name="menu" value="전자제품" />
					<jsp:param name="menu" value="도서" />
					<jsp:param name="menu" value="식료품" />
				</jsp:include></td>

			<td width="80%"><jsp:include page="a03_main.jsp" /></td>
		</tr>

	</table>
</body>
</html>









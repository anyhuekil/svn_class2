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
	<!-- 2단계 -->
	<form method="post">
		시작번호:<input name="startNum" size="1" value="${param.startNum}" />
		마지막번호:<input name="endNum" size="1" value="${param.endNum}" /> 간격:<input
			name="stepNum" size="1" value="${param.stepNum}" /><br> 행:<input
			name="rowNum" size="1" value="${param.rowNum}" /> 열:<input
			name="colNum" size="1" value="${param.colNum}" /><br> <input
			type="submit" value="생성" /><br>
	</form>
	<!-- param.startNum+0 : 숫자 -->
	<c:set var="cnt" value="${param.startNum+0}" />
	<table border>
		<c:forEach begin="1" end="${param.rowNum}">
			<tr align="center">
				<c:forEach begin="1" end="${param.colNum}">
					<td width="50pt" height="50pt"><c:if
							test="${cnt<=param.endNum}">
						${cnt}
						<c:set var="cnt" value="${cnt+param.stepNum}" />
						</c:if></td>

				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>
</html>

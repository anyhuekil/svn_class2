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
<!-- 빈클래스 선언과 프로퍼티 활용
jspexp.z02_vo.MemberBean
MemberBean mb = new MemberBean();
 -->
<jsp:useBean id="mb" class="jspexp.z02_vo.MemberBean" />
<!-- setProperty 활용
mb.setId("himan");
mb.getId();
 -->
<jsp:setProperty name="mb" property="id" value="himan" />
<body>
	<h2>
		빈에 있는 id값:
		<jsp:getProperty property="id" name="mb" /></h2>
</body>
</html>


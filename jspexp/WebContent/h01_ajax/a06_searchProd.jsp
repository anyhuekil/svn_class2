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
				$("#schBtn").click(function(){
					var send="schName="+$("#schName").val();
					$.ajax({
						type:"post",
						url:"a07_loadData.jsp",
						data:send,
						dataType:"text",
						success:function(msg){
							$("#showMsg").html(msg);
						}
						
					});
				});
			})
		</script>
</head>
<body>
	<h1>
		물건명<input type="text" id="schName" />
	</h1>
	<input type="button" id="schBtn" value="재고량 확인" />
	<br>
	<div id="showMsg"></div>


</body>
</html>

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
					var name=$("input[name=username]").val();
					var password=$("input[name=password]").val();
					var sendData = "username="+name+"&password="+password;
					$.ajax({
						type:"post",
						url:"a05_logincheck.jsp",
						data:sendData,
						dataType:"text",
						success:function(msg){
							$("#msg").html(msg);
							
						}
						
					});
					
				});
			})
		</script>
</head>
<body>
	<form>
		이름:<input type="text" name="username" /><br> 패스워드:<input
			type="password" name="password" /><br> <input id="schBtn"
			type="button" value="확인" />
	</form>
	<div id="msg"></div>

</body>
</html>

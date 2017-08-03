<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:requestEncoding value="UTF-8" />
<c:set var="conPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrap {
	width: 500px;
	margin: 10px auto;
}

table {
	width: 100%;
}

table th, input[type=button] {
	width: 100px;
	background-color: #43BDE6;
	color: white;
	padding: 10px;
	text-align: center;
}

table td {
	background-color: #AFE0F0;
	padding: 10px;
	text-align: center;
}

table caption {
	padding: 5px 5px 10px;
	font-size: 2em;
	font-weight: bold;
}

input[type=text]:FOCUS {
	background-color: lightyellow;
}

input {
	margin: 0 10px;
	width: 300px;
}

h2 {
	color: red;
	text-align: center;
}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		$('input[type=button]').click(function() {
			$.ajax({
				url : 'homework0530_loadData.jsp',
				data : "searchName="+$('input[name=searchName]').val(),
				dataType : "text",
				success : function(msg){
					$('#msg').html(msg);
				}
			});
		});
	});
</script>
</head>
<body>
	<div id="wrap">
		<table>
			<caption>초기화면</caption>
			<tr>
				<th>물건명</th>
				<td><input type="text" name="searchName"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="재고량확인"></td>
			</tr>
		</table>
		<h2 id="msg"></h2>
	</div>
</body>
</html>

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

table th, input[type=submit], input[type=reset], input[type=button] {
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

input[type=text]:FOCUS, select:focus {
	background-color: lightyellow;
}

input, select {
	margin: 0 10px;
	width: 300px;
}
</style>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$( function() {
	  $("#datepicker").datepicker({
		  dateFormat : 'yy-mm-dd',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토'],
			showMonthAfterYear : true,
			showOtherMonths : true,
			selectOtherMonths : false,
			yearSuffix : '년',
	  });
} );
</script>
</head>
<body>
	<div id="wrap">
		<form action="bookResult.jsp">
			<table>
				<tr>
					<td>도서명</td>
					<td><input type="text" name=bookTitle required="required"></td>
				</tr>
				<tr>
					<td>출판사</td>
					<td><input type="text" name="publisher" required="required"></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" name="price" required="required"></td>
				</tr>
				<tr>
					<td>출판일</td>
					<td><input type="text" id="datepicker" name="publishDate"
						required="required"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="등록"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>

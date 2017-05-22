<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*"
%>
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
	<body><center>
		<h2>커피 프린스에서</h2>
		<form method="post">
		<table>
			<tr><th>구매할 커피</th><th>가격</th><th>갯수</th></tr>
			<tr>
				<td><input type="text" name="coffee"/></td>
				<td><input type="text" name="price" size="5"/></td>
				<td><input type="text" name="cnt" size="1"/></td>
			</tr>
			<tr><td colspan="3" align="center">
					<input type="submit" value="주문"/>
			</td></tr>
		</table>		
		</form>
		<br>
		초기값?${empty param.coffee}<br>
		주문하신 커피는 ${param.coffee}<br>
		가격  ${param.price}원 에 ${param.cnt}잔 으로<br>
		계산서 ${param.price*param.cnt}원 발급합니다.
	</body>
</html>
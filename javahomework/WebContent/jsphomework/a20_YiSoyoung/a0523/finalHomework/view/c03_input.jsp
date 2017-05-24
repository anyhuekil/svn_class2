<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body { background-color: #D6F2BD; font-size: 1.2em; }
#wrap{width: 500px; margin: 20px auto;}
table { background-color: #6FAD37; width: 100%;}
td { background-color: #BAD6A1;text-align: center; padding: 10px;}
caption {font-size: 1.2em; }
</style>
</head>
<body>
<!-- name, price, cnt입력 받아 총계까지 저기서 뿌려 -->
<div id="wrap">
	<form action="<%=request.getContextPath() %>/mvc05">
		<table>
			<caption>view입력→controller처리→view출력</caption>
			<tr><td>이름</td><td><input type="text" name="name" size="30"></td></tr>
			<tr><td>가격</td><td><input type="text" name="price" size="30"></td></tr>
			<tr><td>갯수</td><td><input type="text" name="cnt" size="30"></td></tr>
			<tr><td colspan="2"><input type="submit" value="과제출력"></td></tr>
		</table>
	</form>
</div>
</body>
</html>

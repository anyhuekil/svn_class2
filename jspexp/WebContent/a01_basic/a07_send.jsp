<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*

*/

/**/
</style>
<script src="/jspexp/com/jquery-1.10.2.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	
});
</script>
</head>
<body>
	<!-- form이 있어야지 하위에 있는 <input에 소속된
	데이터들이 전송할 수 있다.
	실제 전송하는 이벤트를 발생하는 것은 form 하위에
	<input type="submit" 라는 버튼을 통해서 전송이
	된다.
	form의 속성값 action에 지정된 jsp페이지로 데이터를
	전송한다.
 -->
	<center>
		<form action="a08_receive.jsp">
			ID:<input type="text" name="id" /><br> <input type="submit" />
		</form>
		<!--  name="id" 값이 요청하는 page에서
	request.getParameter("id")로 데이터를 받을 수 있다.
 -->
</body>
</html>





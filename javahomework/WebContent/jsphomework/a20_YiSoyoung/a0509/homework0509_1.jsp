<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	padding: 10px 20px;
}

fieldset {
	width: 300px;
	margin: 0 auto;
	text-align: center;
}
</style>
<script>
	function btn(i) {
		location.href="homework0509_2.jsp?no="+i;
	}
</script>
</head>
<body>
	<!--1단계 확인 예제 : 동전이 있는 곳은? [  ](1~3)
	2단계 확인 예제 : [1번] [2번] [3번]
	
	다음 페이지에서 맞추면 정답이라고 틀리면 전 페이지로 sendRedirect 
 -->
	<%	String msg = request.getParameter("msg");
 	if(msg==null) msg = "";
 %>
	<fieldset>
		<legend><%=msg %>
			동전 있는 곳을 맞춰봐
		</legend>
		<input type="button" value="1번" onclick="btn(1)"> <input
			type="button" value="2번" onclick="btn(2)"> <input
			type="button" value="3번" onclick="btn(3)">
	</fieldset>
</body>
</html>

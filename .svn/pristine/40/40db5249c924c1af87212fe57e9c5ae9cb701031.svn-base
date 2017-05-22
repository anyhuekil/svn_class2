<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<title>Insert title here</title>
<style>
</style>
<script>
	$(function() {
		$("button").click(function() {
			location.replace("a11_responseEx.jsp");
		});
	});
</script>
</head>
<body>
	<%
		String whichBtn = request.getParameter("label");
		int whichNum = 0;
		int ranNum = (int) (Math.random() * 3 + 1);
		String msg = "";

		if (whichBtn.equals("1번"))
			whichNum = 1;
		if (whichBtn.equals("2번"))
			whichNum = 2;
		if (whichBtn.equals("3번"))
			whichNum = 3;

		if (whichNum == ranNum) {
	%>
	정답 동전 획득
	<button>Page Back</button>
	<%
		} else {
			response.sendRedirect("a11_responseEx.jsp");
		}
	%>

</body>
</html>

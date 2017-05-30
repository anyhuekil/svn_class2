<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="z01_database.AuctionUserDAO"
	import="z01_database.SignUpDAO"
	import="z01_database.CntTime"
	 import="z02_vo.AuctionUserVO"
	%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- 체크아이디end -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SingUpProc</title>
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
	function sendEmail(item) {
		opener.memberShip.newEmail.value = item;
		window.close();
	}
	<%
	String proc = request.getParameter("proc");
	boolean confirm = true;
	String newEmail = null;
	if (proc.equals("singUp")) {
		newEmail = request.getParameter("newEmail");
		String newPwd = request.getParameter("newPwd");
		CntTime cntT = new CntTime();
		// suD : signUpDAO, suV : signUpVO 
		SignUpDAO suD = new SignUpDAO();
		AuctionUserVO suV = new AuctionUserVO();
		suV.setEmail(newEmail);
		suV.setPassword(newPwd);
		suV.setRegisterDate(cntT.nowT());
		suD.insertMem(suV);
		//response.sendRedirect("close.jsp"); 
	%>
	window.close();
	<%	
	} else if (proc.equals("check")) {
		newEmail = request.getParameter("mail");
		//checkEmail : cm
		SignUpDAO cM = new SignUpDAO();
		confirm = cM.confirmEmail(newEmail);
	}
%>
</script>
<style type="text/css">
</style>
</head>

<body>
	<form method="post" action="signUpProc.jsp">
		<%
			if(confirm && proc.equals("check")){
		%>
		<input type="hidden" name="proc" value="check" />
		<h3>사용중인 e-Mail입니다.</h3>
		<h3>새로운 e-Mail을 입력해주세요.</h3>
		아이디: <input name="mail"><input type="submit" value="중복체크">
		<%
			}else if(!confirm && proc.equals("check")){
		%>
		<h2>사용가능한 e-Mail입니다.</h2>
		<input type="button" value="아이디 사용하기"
			onclick="javascript:sendEmail('<%=newEmail%>')">
		<%
			}
		%>
	</form>
</body>
</html>
<%@page import="vo.PlayerInfo"%>
<%@page import="dao.DAO_PlayerInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="EUC-KR" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
/*proc: 수행할 process   */
	String proc = (request.getParameter("proc") != null) ? request.getParameter("proc") : "";
/* login field */
	String pid = (request.getParameter("inputId") != null) ? request.getParameter("inputId") : "";
	String pass = (request.getParameter("inputPass") != null) ? request.getParameter("inputPass") : "";
	boolean isIdValid = false;
/* register field */
	String idReg=(request.getParameter("idReg")!=null)?request.getParameter("idReg"):"";
	String passReg=(request.getParameter("passReg")!=null)?request.getParameter("passReg"):"";
	String confirmPassReg=(request.getParameter("confirmPassReg")!=null)?request.getParameter("confirmPassReg"):"";
	String nameReg=(request.getParameter("nameReg")!=null)?request.getParameter("nameReg"):"";
	String emailReg=(request.getParameter("emailReg")!=null)?request.getParameter("emailReg"):"";
	String telReg=(request.getParameter("telReg")!=null)?request.getParameter("telReg"):"";
	boolean isDuplicatedId=false;
	boolean isWrongPassword=false;
	boolean isRegSuccess=false;


	System.out.println("pid: " + pid);
	System.out.println("pass: " + pass);

	boolean isLogout = false;
	
	DAO_PlayerInfo daoP = new DAO_PlayerInfo();
	PlayerInfo sch = new PlayerInfo();
	PlayerInfo vo = null;
	if (proc != null) {
		if (proc.equals("login")) {
			if (pid != null && pass != null) {
				sch.setPid(pid);
				sch.setPass(pass);
				vo = daoP.loginPlayer(sch);
				if (vo != null) {
					System.out.println(vo.getPname());
					session.setAttribute("user", vo);
					isIdValid = true;
				}
			}
		} else if (proc.equals("logout")) {
			session.invalidate();
			isLogout = true;
		}
		else if(proc.equals("register")){
			PlayerInfo newAccount= new PlayerInfo();
			isDuplicatedId=daoP.checkDuplicatedId(idReg);
			newAccount.setPid(pid);
			/* 등록 전, 중복 검사 */
			if(passReg.equals(confirmPassReg)&& !isDuplicatedId){
				newAccount.setPass(passReg);
				newAccount.setPname(nameReg);
				newAccount.setEmail(emailReg);
				newAccount.setTel(telReg);
				daoP.regPlayer(newAccount);
				isRegSuccess=true;
			}
			
		}
	}
%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>justification</title>
<style type="text/css">
</style>
<script src="${path}/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var isIdValid =
<%=isIdValid%>
	;
		var proc =
"<%=proc%>"
	;
		var pname = "";
		if (proc == "login") {
			if (isIdValid) {
				pname = "${user.pname}";
				alert(pname + "님 환영합니다");
				$(location).attr("href", "index_guest.jsp");
			} else {
				alert("로그인 실패. id 혹은 pw를 확인해 주세요.");
				$(location).attr("href", "index_guest.jsp");
			}
		}else if(proc=="logout"){
			alert(pname+ "로그아웃 되었습니다.");
			$(location).attr("href","index_guest.jsp");
		}
		else if(proc=="register"){
			var isRegSuccess= <%=isRegSuccess%>;
			if(isRegSuccess){
				alert("회원가입이 완료되었습니다. ");
				$(location).attr("href","index_guest.jsp");
			}else{
				alert("회원가입 실패.");
			}
		}

	})
</script>
</head>
<body>

</body>
</html>

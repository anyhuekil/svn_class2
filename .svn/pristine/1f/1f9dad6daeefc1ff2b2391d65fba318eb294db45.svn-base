<%@page import="vo.PlayerInfo"%>
<%@page import="dao.DAO_PlayerInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="EUC-KR" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	/*global field   */
	String proc = (request.getParameter("proc") != null) ? request.getParameter("proc") : "";
	boolean isNotEqualPassword = false;
	/* login field */
	String pid = (request.getParameter("inputId") != null) ? request.getParameter("inputId") : "";
	String pass = (request.getParameter("inputPass") != null) ? request.getParameter("inputPass") : "";
	boolean isIdValid = false;
	/* register field */
	String idReg = (request.getParameter("idReg") != null) ? request.getParameter("idReg") : "";
	String passReg = (request.getParameter("passReg") != null) ? request.getParameter("passReg") : "";
	String confirmPassReg = (request.getParameter("confirmPassReg") != null)
			? request.getParameter("confirmPassReg")
			: "";
	String nameReg = (request.getParameter("nameReg") != null) ? request.getParameter("nameReg") : "";
	String emailReg = (request.getParameter("emailReg") != null) ? request.getParameter("emailReg") : "";
	String telReg = (request.getParameter("telReg") != null) ? request.getParameter("telReg") : "";
	boolean isDuplicatedId = false;
	boolean isRegSuccess = false;
	
	/* modify field  */
	String idMod=(request.getParameter("idMod") != null) ? request.getParameter("idMod") : "";
	String prevPassMod=(request.getParameter("prevPassMod") != null) ? request.getParameter("prevPassMod") : "";
	String passMod=(request.getParameter("passMod") != null) ? request.getParameter("passMod") : "";
	String confirmPassMod=(request.getParameter("confirmPassMod") != null) ? request.getParameter("confirmPassMod") : "";
	String nameMod=(request.getParameter("nameMod") != null) ? request.getParameter("nameMod") : "";
	String emailMod=(request.getParameter("emailMod") != null) ? request.getParameter("emailMod") : "";
	String telMod=(request.getParameter("telMod") != null) ? request.getParameter("telMod") : "";
	boolean isModSuccess=false;
	boolean isWrongPassword=false;
	

	System.out.println("proc: " + proc);
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
		} else if (proc.equals("register")) {
			vo=new PlayerInfo();
			isDuplicatedId = (daoP.checkDuplicatedId(idReg)!=null)?true:false;
			isNotEqualPassword=!passReg.equals(confirmPassReg);
			vo.setPid(idReg);
			/* 등록 전, 중복 검사 */
			System.out.println("name: " + nameReg);
			if (!isNotEqualPassword && !isDuplicatedId) {
				vo.setPass(passReg);
				vo.setPname(nameReg);
				vo.setEmail(emailReg);
				vo.setTel(telReg);
				daoP.regPlayer(vo);
				isRegSuccess = true;
			}
		}else if(proc.equals("modify")){
			vo=(PlayerInfo)session.getAttribute("user");
			isNotEqualPassword=!passMod.equals(confirmPassMod);
			if (vo!=null) {
				sch.setPid(vo.getPid());
				sch.setPass(prevPassMod);
				if(daoP.loginPlayer(sch)==null){
					isWrongPassword=true;
				}
				else if(!isNotEqualPassword){
				vo.setPass(passMod);
				vo.setPname(nameMod);
				vo.setEmail(emailMod);
				vo.setTel(telMod);
				daoP.updatePlayer(vo,1);
				isModSuccess=true;
				}
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
		var isIdValid =<%=isIdValid%>;
		var proc ="<%=proc%>";
		var pname = "";
		if (proc == "login") {
			if (isIdValid) {
				pname = "${user.pname}";
				alert(pname + "님 환영합니다");
			} else {
				alert("로그인 실패. id 혹은 pw를 확인해 주세요.");
			}
		} else if (proc == "logout") {
			alert(pname + "로그아웃 되었습니다.");
			$(location).attr("href", "index_guest.jsp");
		} else if (proc == "register") {
			var isRegSuccess =<%=isRegSuccess%>;
			if (isRegSuccess) {
				alert("회원가입이 완료되었습니다. ");
			} else {
				if(<%=isNotEqualPassword%>){
					alert("비밀번호가 같지 않습니다. 다시 시도하여 주십시오.");
					}
				else if(<%=isDuplicatedId%>){
					alert("중복된 id입니다. 다시 시도하여 주십시오.");
				}
			}
		}else if(proc=="modify"){
			if(<%=isWrongPassword%>){
				alert("잘못된 비밀번호입니다. 다시 시도하여 주십시오.")
			}else if(<%=isNotEqualPassword%>){
				alert("비밀번호가 같지 않습니다. 다시 시도하여 주십시오.");
			}
			else if(<%=isModSuccess%>){
				alert("변경 완료!");
			}else{
				alert("변경 실패!");
			}
		}
		$(location).attr("href", "index_guest.jsp");

	})
</script>
</head>
<body>

</body>
</html>
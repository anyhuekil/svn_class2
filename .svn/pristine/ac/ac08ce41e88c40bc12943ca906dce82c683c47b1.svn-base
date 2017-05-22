<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspexp.z04_member.MemberDAO, jspexp.z04_member.MemberDTO, java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {width: 1000px; margin: 10px auto; background-color: white;}
table th { background-color: #84C5DB; color:white; padding: 10px; text-align: center;}
table td { padding: 10px; text-align: center; }
table tr {background-color: #AFE0F0;}
table caption{padding: 5px 5px 10px; font-size: 1.5em; font-weight: bold;}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		
	});
</script>
</head>
<body>
<%--
1단계:MemberDAO.java의 getMember(Member sch)를 활용해서 화면 list 처리.
     아이디 패스워드 이름 포인트 권한

 --%>
<%	MemberDAO dao = MemberDAO.getInstance();
	ArrayList<MemberDTO> memberList = dao.getMemberList();
	%>
	<table>
		<caption>전체 회원 리스트</caption>
		<tr><th>아이디</th><th>패스워드</th><th>이름</th><th>포인트</th><th>권한</th><th>이메일</th><th>가입일</th><th>주소</th></tr>
		<c:set var="memberList" value="<%=memberList %>"/>
		<c:set var="i" value="1"></c:set>
		<c:if test="${not empty memberList}">
			<c:forEach var="member" items="${memberList}">
				<tr><td>${i} : ${member.id }</td><td>${member.pw }</td><td>${member.name }</td><td>${member.point }</td>
					<td>${member.auth }</td><td>${member.email }</td><td>${member.rdate }</td><td>${member.address }</td></tr>
					<c:set var="i" value="${i+1}"></c:set>
			</c:forEach>
		</c:if>
		<c:if test="${empty memberList}">
			<tr><td colspan="8">데이터가 한개도 없어요</td></tr>
		</c:if>
	</table>
</body>
</html>
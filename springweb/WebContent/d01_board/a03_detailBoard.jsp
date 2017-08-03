<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>justification</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css">
<style type="text/css">
</style>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
				$("#refBtn").click(function(){
					var no = $("input[name=no]").val();
					$(location).attr("href",
							"${path}/boardList.do?method=insert&no="+no);
					
				});	
				$("#listBtn").click(function(){
					$(location).attr("href",
							"${path}/boardList.do?method=list");
					
				});					
			})
		</script>
</head>
<body>
	<center>
		<h2>게시판 상세</h2>
		<form method="post" action="${path}/boardList.do?method=insProc">
			<input type="hidden" name="refno" size="50" value="${board.no}" />
			<table>
				<tr>
					<td width="15%">글번호</td>
					<td>${board.no}<input type="hidden" name="no" size="50"
						value="${board.no}" /></td>
					<td width="15%">조회수</td>
					<td>${board.readcount}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="subject" value="${board.subject}"
						size="50" /></td>
					<td>패드워드</td>
					<td><input type="password" name="pass" value="${board.pass}"
						size="50" /></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer" size="50"
						value="${board.writer}" /></td>
					<td>이메일</td>
					<td><input type="text" name="email" size="50"
						value="${board.email}" /></td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="3"><textarea name="content" cols="40" rows="10">${board.content}</textarea></td>
				</tr>

				<tr>
					<td colspan="4"><input type="button" id="listBtn" value="메인글" />
						<input type="button" id="refBtn" value="답글달기" /> <input
						type="button" id="uptBtn" value="수정" /> <input type="button"
						id="delBtn" value="삭제" /></td>
				</tr>
			</table>
		</form>
</body>
</html>
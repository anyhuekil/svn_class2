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
<script src="${path}/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
				var queType="${quebank.queType}";
				if(queType!=''){
					$("select[name=queType]").val(queType);
				}
				
				$("#schbtn").click(function(){
					$("form").submit();
				});
				// 등록 버튼 클릭시
				$("#regbtn").click(function(){
					// 등록 화면으로 이동!!!
					$(location).attr("href","${path}/questbank.do?method=insert");
				});
			})
		</script>
</head>
<body>
	<center>
		<h3>문제은행</h3>
		<!-- 조회 항목 -->
		<form method="post">
			<table>
				<tr>
					<td>문제</td>
					<td><input type="text" name="que" value="${quebank.que}" /></td>
					<td>정답</td>
					<td><input type="text" name="coransw"
						value="${quebank.coransw}" /></td>
				</tr>
				<tr>
					<td>유형</td>
					<td><select name="queType">
							<option value="">전체</option>
							<option>주관식</option>
							<option>객관식</option>
					</select></td>
					<td></td>
					<td>
				<tr>
					<td colspan="4" style="text-align: right;"><input
						type="button" id="regbtn" value="등록" /> <input type="button"
						id="schbtn" value="검색" /></td>
				</tr>
			</table>
		</form>
		<table>

			<tr>
				<th width="10%">번호</th>
				<th width="50%">문제</th>
				<th width="20%">정답</th>
				<th width="20%">유형</th>
			</tr>
			<c:forEach var="quest" items="${quelist}">
				<tr>
					<td>${quest.no}</td>
					<td>${quest.que}</td>
					<td>${quest.coransw}</td>
					<td>${quest.queType}</td>
				</tr>
			</c:forEach>
			<c:if test="${quelist.size()==0}">
				<tr>
					<td colspan="4">검색된 데이터가 없습니다!!</td>
				</tr>
			</c:if>
		</table>
</body>
</html>

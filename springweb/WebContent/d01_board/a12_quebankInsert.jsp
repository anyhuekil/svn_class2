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
				
			})
		</script>
</head>
<body>
	<center>
		<h2>문제은행등록</h2>
		<!-- action을 통해 해당데이터를 
			setQue("입력한문제")
			...
			Quebank 객체
			submit버튼을 클릭했을 .
			action에서 호출하는 controller에 데이터가 들어가 있는
				/questbank.do?method=insProc
			Quebank 객체를 전달..
	@RequestMapping("/questbank.do")
	@RequestMapping(params="method=insProc")
	public String insert(Quebank ins){		
	http://localhost:6080/springweb/questbank.do?method=insProc
	path:http://localhost:6080/springweb
		 -->
		<form method="post" action="${path}/questbank.do?method=insProc">
			<table>
				<tr>
					<td>문제</td>
					<td><input type="text" name="que" /></td>
				</tr>
				<tr>
					<td>정답</td>
					<td><input type="text" name="coransw" /></td>
				</tr>
				<tr>
					<td>유형</td>
					<td><select name="queType">
							<option>주관식</option>
							<option>객관식</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="등록" /></td>
				</tr>

			</table>
		</form>
		<!-- 
	name=que name=coransw  name=queType
	setQue(value)  setCoransw(value) setQueType(value) -->
</body>
</html>
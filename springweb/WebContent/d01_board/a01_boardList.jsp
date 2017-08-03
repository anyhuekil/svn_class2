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
				$("#schbtn").click(function(){
					$("form").submit();
				});
				// 등록 버튼 클릭시
				$("#regbtn").click(function(){
					// 등록 화면으로 이동!!!
					$(location).attr("href","${path}/boardList.do?method=insert");
				});
				
				// 상세화면으로 가기 위한 double 클릭 처리.
				$(".data").dblclick(function(){
					var no=$(this).attr("id");
					$(location).attr("href",
				"${path}/boardList.do?method=detail&no="+no);
					
				});
				$("#initbtn").click(function(){
					$("input[name=subject]").val("");
					$("input[name=writer]").val("");
					$("input[name=content]").val("");
				});		
				$("select[name=pageSize]").val("${boardSch.pageSize}");
				$("select[name=pageSize]").change(function(){
					$("form").attr("action","${path}/boardList.do?method=list");
					$("form").submit();
					
					
				});
				
			})
			function go(curPage){
				$("input[name=curPage]").val(curPage);
				$("form").attr("action","${path}/boardList.do?method=list");
				$("form").submit();
			}
		</script>
</head>
<body>
	<center>
		<h3>게시판</h3>
		<!-- 조회 항목 -->
		<form method="post">
			<table>
				<tr>
					<td>제목</td>
					<td><input type="text" name="subject"
						value="${boardSch.subject}" /></td>
					<td>작성자</td>
					<td><input type="text" name="writer"
						value="${boardSch.writer}" /></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><input type="text" name="content"
						value="${boardSch.content}" />
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="4" style="text-align: right;"><input
						type="button" id="initbtn" value="검색초기화" /> <input type="button"
						id="regbtn" value="등록" /> <input type="button" id="schbtn"
						value="검색" /></td>
				</tr>

			</table>
			<table style="border: 3px solid #ffffff;">
				<tr>
					<td style="text-align: left; border: 3px solid #ffffff;">
						총건수:${boardSch.getCount()}건</td>

					<td style="text-align: right">페이지 크기 <select name="pageSize">
							<option>3</option>
							<option>5</option>
							<option>10</option>
							<option>20</option>
					</select> <input type="hidden" name="curPage" value="1" />
					</td>
				</tr>
			</table>
		</form>
		<table>
			<tr>
				<th width="5%">번호</th>
				<th width="50%">제목</th>
				<th width="15%">작성자</th>
				<th width="15%">작성일</th>
				<th width="15%">조회수</th>
			</tr>
			<c:forEach var="board" items="${list}">
				<tr class="data" id="${board.no}">
					<td>${board.cnt}</td>
					<td style="text-align: left;">
						<!-- 답글의 level만큼 공백과 답글이라는 이미지 표시 --> <c:forEach varStatus="sts"
							begin="1" end="${board.lv}">
						&nbsp;&nbsp;
						<c:if test="${board.lv>1 and sts.last}">
							☞
						</c:if>
						</c:forEach> ${board.subject}
					</td>
					<td>${board.writer}</td>
					<td><fmt:formatDate value="${board.regdate}" /></td>
					<td>${board.readcount}</td>
				</tr>
			</c:forEach>
			<c:if test="${list.size()==0}">
				<tr>
					<td colspan="4">작성된 글이 없습니다!!</td>
				</tr>
			</c:if>
		</table>
		<!-- 하단 page block [1][2][3] -->
		<c:forEach var="cnt" begin="1" end="${boardSch.pageCount}">
			<a style="text-decoration: none" href="javascript:go(${cnt})"> <c:choose>
					<c:when test="${cnt==boardSch.curPage}">
						<b style="font-size: 15pt;">[${cnt}]</b>
					</c:when>
					<c:otherwise>
						[${cnt}]
					</c:otherwise>
				</c:choose>
			</a>
		</c:forEach>
</body>
</html>

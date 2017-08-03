<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>justification</title>
<style type="text/css">
</style>
<script src="${path}/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
				
			})
		</script>
</head>
<jsp:useBean id="book" class="jspexp.z02_vo.Book" />
<jsp:setProperty property="*" name="book" />
<body>
	<!-- 
jspexp.z02_vo.Book
	private String title;//도서명
	private String publisher;//출판사
	private int price;//가격
	private String pubDate;//출판일
 -->
	<h1>등록한 도서 내역</h1>
	<h2>${book.title}[${book.publisher}](${book.price}원)-
		${book.pubDate}</h2>

</body>
</html>

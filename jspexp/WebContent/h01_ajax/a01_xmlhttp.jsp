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
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
			$(document).ready(function(){

/*
ajax에서 활용되는 XMLHttpRequest 객체 호출하기!! 
 */

 				var xhr;
 				// 브라우저에 따라 XMLHttpRequest 처리 
 				// 웹블라우저와 웹 서버 간에 메소드가 데이터를 전송하는 객체 폼의 API
 				if(window.XMLHttpRequest){
 					xhr= new XMLHttpRequest();
 				// 익스플로러에 제공하는 객체..	
 				}else if( window.ActiveXObject){
 					xhr = new ActiveXObject("Msxml2.XMLHTTP");
 				}else{
 					throw new Error("Ajax를 지원하지 않는 부라우저 입니다.");
 				}
				//alert(xhr);
				/*
				XMLHttpRequest의 주요 속성과 메서드
				1) readyState : ajax객체의 상태를 나타내는 숫자.
					- 처음 객체 생성 했을 때, 0
					- get()메서드 요청페이지 정보 설정 , 1
					- send() 메서드 요청보내면, 2
					- 서버로 부터 응답이 오기 시작 3
					- 서버 응답이 완료 4
					onreadystatechange() : 상태값이 변경될 때,
					함수를 호출하는 처리..
				2) status : 서버로부터 받은 응답의 상태
				   정상적인 경우 : 200, 페이지를 찾지 못하는 경우 404
				*/
			
					$("h1").click(function(){
						if(xhr!=null){							
							$(this).css("background","yellow");
							//alert("ajax 처리 가능!!");
							xhr.onreadystatechange=function(){
								// readyState : 상태값.
								//alert(xhr.readyState);
								if( xhr.readyState == 4){
									// 정상 범위 내용
									if(xhr.status >=200 && xhr.status<300){
										// responseText : 응답에 대한 결과값
										$("#container").html(xhr.responseText);		
									}
								}
								
							}
							// open("get/post","자원", "비동기옵션")
							// send() : 전송  인자와 함께 서버로 보낸다
							xhr.open("GET","z02_data.html");
							xhr.send("");
						}
						
					
					});
				


				
			})
		</script>
</head>
<body>
	<h1>데이터 비동적으로 로딩</h1>
	<div id="container"></div>

</body>
</html>

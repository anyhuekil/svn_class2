<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="path" value="${pageContext.request.contextPath}"/>
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
				$("#menu1").click(function(){
					//alert("메뉴1 클릭!!");
					
					$.ajax({
						url:"z01_data.html",
						dataType:"html",
						success:function( data ){
							// 정상작동했을 때, html에 있는 내용
							// 화면에 뿌려줌..
							$("#message1").html(data);
							
						}
						
					});
					
					
				});
			});
/*
 $.ajax(json형식으로 option 설정); 
 ex) $.ajax({url:'',dataType:'', success:function(){ }} );
 1. url : 요청 자원(서버)을 호출, 일반적으로 호출된 자원에서는 json
    형식으로 데이터 return 해준다. ex) call.jsp, start.do, json.html
 2. type : 요청 처리방식 post/get, default는 get
 3. data : 요청시, 함께 전달되는 데이터 (query string)
    ex) id=himan&password=7777
        $("form").serialize() : form안에 있는 데이터를 query으로
        변경하여 전달
 4. dataType : 요청 후, 응답의 결과로 반환되는 데이터의 종류를 선언
 	ex) xml, html, json, text
 5. success : 성공했을 때, 처리할 내용, 함수로 나타냄.	
 	ex) success:function( data ){
 			data:요청의 응답의 결과로 받은 데이터
 		}
 6. error : 응답이 에러나 났을 때, 에러 상태에 대한 코드를 반환하면 호출되는
    함수
    ex) error:function( code ){
    	  code : 에러에 대한 code 내용 전달..
    }
    	
 */			
		</script>
	</head>
	<body>
		<div>
			<a href="#" id="menu1">메뉴보기1</a>
			<span id="message1"></span>
		</div>

	</body>
</html>
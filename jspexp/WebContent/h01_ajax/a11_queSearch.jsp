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
				
				
				$("#que").keyup(function(){
					var que=$("#que").val();
					var coransw=$("#coransw").val();
					var sndData="que="+que+"&coransw="+coransw;
					$.ajax({
						type:"post",
						url:"a11_list.jsp",
						dataType:"text",
						data:sndData,
						success:function(data){//(/blue/g
							alert(data.substring(30).replace(/"/g,"\'")  );
							var xml = "<html><head id='aa'></head>\n  <body>RSS Title2</body>  </html>";
		
								  xmlDoc = $.parseXML( xml );
								//alert(xmlDoc);
							  $xml = $( xmlDoc );

							  $title = $xml.find( "body" );

							alert($title.text() );					
							/*
							data="<html><body>22</body></html>"
							//alert(data);
							 var xmlDoc = $.parseXML( data );
							 alert( $( xmlDoc ).find("body").html());
							 
							  var $xml = $( xmlDoc );

							  $title = $xml.find( "body" );
							  alert(title);
							*/
							
							$("#list").html(data);
						}
						
					});					
					
				});

			})
		</script>
</head>
<body>
	<h2>등록된 문제</h2>
	문제:
	<input id="que">
	<br> 정답:
	<input id="coransw">
	<br>
	<div id="list"></div>
</body>
</html>
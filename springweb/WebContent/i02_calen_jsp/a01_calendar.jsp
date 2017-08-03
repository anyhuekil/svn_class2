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
<style type="text/css">
body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}
</style>
<link href='${path}/i01_calen/fullcalendar.min.css' rel='stylesheet' />
<link href='${path}/i01_calen/fullcalendar.print.min.css'
	rel='stylesheet' media='print' />
<script src='${path}/i01_calen/lib/moment.min.js'></script>
<script src='${path}/i01_calen/lib/jquery.min.js'></script>
<script src='${path}/i01_calen/fullcalendar.min.js'></script>

<script type="text/javascript">
		Date.prototype.toFormatString = function(format) {
			 var year = this.getFullYear();
			 var month = this.getMonth() + 1;
			 var day = this.getDate();
			 var hour = this.getHours();
			 var minute = this.getMinutes();
			 var second = this.getSeconds();
			 if (format == null) format = "yyyy-MM-dd";
			 format = format.replace("yyyy", year);
			 format = (month < 10) ? format.replace("MM", "0" + month) : format.replace("MM", month);
			 format = format.replace("M", month);
			 format = (day < 10) ? format.replace("dd", "0" + day) : format.replace("dd", day);
			 format = format.replace("d", day);
			 format = (hour < 10) ? format.replace("HH", "0" + hour) : format.replace("HH", hour);
			 format = (minute < 10) ? format.replace("mm", "0" + minute) : format.replace("mm", minute);
			 format = (second < 10) ? format.replace("ss", "0" + second) : format.replace("ss", second);
			 return format;
		}		
			var dteinfo;
			$(document).ready(function(){
				$.ajax({
					type:"post",
					url:"calendar.do?method=list",
					dataType:"json",
					success:function( data ){
						dteinfo= data.list;
						loadView();
					}
				});
			});
			function loadView(){
				$('#calendar').fullCalendar({
					header: {
						left: 'prev,next today',
						center: 'title',
						right: 'month,agendaWeek,agendaDay'
					},
					defaultDate: '2017-06-29',
					navLinks: true, // can click day/week names to navigate views
					selectable: true,
					selectHelper: true,
					select: function(start, end) {
						var title = prompt('제목 등록하세요!!:');
						//alert(start+":"+end);
						var d1=new Date(start);
						d1.setHours(d1.getHours()-9);
						var d2=new Date(end);
						d2.setHours(d2.getHours()-9);
						//alert(d1.toFormatString("yyyy-MM-ddTHH:mm:ss"));
						//alert(d2.toFormatString("yyyy-MM-ddTHH:mm:ss"));
						var eventData;
						if (title) {
							insert(d1.toFormatString("yyyy-MM-ddTHH:mm:ss"),
									d2.toFormatString("yyyy-MM-ddTHH:mm:ss"),title,"");							
							eventData = {
								title: title,
								start: start,
								end: end
							};
							$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
						}
						$('#calendar').fullCalendar('unselect');
					},
					editable: true,
					eventLimit: true, // allow "more" link when too many events
					// id, title, start, end, url
					events:dteinfo 
				});				
				
				
			}		
			function insert(start,end,title,url){
				var sndDate="start="+start+"&end="+end+"&title="+title+"&url="+url;
				//alert(sndDate);
				$.ajax({
					type:"POST",
					url:"calendar.do?method=insert",
					data:sndDate,
					dataType:"json",
					success:function(data){
						//alert(data.list.length);
						dteinfo=data.list;
						loadView();
					}
				});		
			}

		</script>
</head>
<body>
	<div id='calendar'></div>
</body>
</html>
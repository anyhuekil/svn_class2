<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="javahomework.a10_parkyunha.Schedule"
	import="java.util.ArrayList" import="java.util.Iterator"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	$(document).ready(function() {
		
	});
</script>
<%
	// Method 1 - String Array
	String list[][] ={
				{"PM 03:00", "Running", "Done", "String"},
				{"PM 03:01", "Walking", "Done", "String"},
				{"PM 03:02", "Standing", "Done", "String"},
				{"PM 03:03", "Lying", "Done", "String"},
	};

	// Method 2 - Schedule Object
	Schedule s1 = new Schedule("PM 03:00", "Running", "Done", "Object");
	Schedule s2 = new Schedule("PM 03:01", "Walking", "Done", "Object");
	Schedule s3 = new Schedule("PM 03:02", "Standing", "Done", "Object");
	Schedule s4 = new Schedule("PM 03:03", "Lying", "Done", "Object");
	
	// Method 3 - Schedule ArrayList
	ArrayList<Schedule> scheduleList = new ArrayList<Schedule>();
	scheduleList.add(new Schedule("PM 03:00", "Running", "Done", "ArrayList"));
	scheduleList.add(new Schedule("PM 03:01", "Walking", "Done", "ArrayList"));
	scheduleList.add(new Schedule("PM 03:02", "Standing", "Done", "ArrayList"));
	scheduleList.add(new Schedule("PM 03:03", "Lying", "Done", "ArrayList"));
	
	// Method 4 - Schedule Iterator
	Iterator<Schedule> iter = scheduleList.iterator();
	
	
%>
</head>
<body>
	<h1 align="center">Daily Schedule!</h1>
	<table border width="50%" height="50%" align="center">
		<tr>
			<th>Time</th>
			<th>Plan</th>
			<th>Status</th>
			<th>Etc</th>
		</tr>
		<% for(int j = 0; j < list.length; j++) { %>
		<tr>
			<% for(int i = 0; i < list[j].length; i++) { %>
			<td><%=list[j][i]%></td>
			<%} %>
		</tr>
		<%} %>

		<tr>
			<td><%=s1.getClock()%></td>
			<td><%=s1.getPlan()%></td>
			<td><%=s1.getStatus()%></td>
			<td><%=s1.getEtc()%></td>
		</tr>
		<tr>
			<td><%=s2.getClock()%></td>
			<td><%=s2.getPlan()%></td>
			<td><%=s2.getStatus()%></td>
			<td><%=s2.getEtc()%></td>
		</tr>
		<tr>
			<td><%=s3.getClock()%></td>
			<td><%=s3.getPlan()%></td>
			<td><%=s3.getStatus()%></td>
			<td><%=s3.getEtc()%></td>
		</tr>
		<tr>
			<td><%=s4.getClock()%></td>
			<td><%=s4.getPlan()%></td>
			<td><%=s4.getStatus()%></td>
			<td><%=s4.getEtc()%></td>
		</tr>

		<% for(Schedule s: scheduleList) { %>
		<tr>
			<td><%=s.getClock()%></td>
			<td><%=s.getPlan()%></td>
			<td><%=s.getStatus()%></td>
			<td><%=s.getEtc()%></td>
		</tr>
		<%} %>

		<% while(iter.hasNext()) { 
			Schedule s = iter.next();
		%>
		<tr>
			<td><%=s.getClock()%></td>
			<td><%=s.getPlan()%></td>
			<td><%=s.getStatus()%></td>
			<td>Iterator <%=s.getEtc()%></td>
		</tr>
		<%} %>
	</table>
</body>
</html>

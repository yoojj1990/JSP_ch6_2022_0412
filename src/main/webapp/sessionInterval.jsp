<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 유효 시간</title>
</head>
<body>
	<h2>세션의 유효 시간</h2>
	<hr>
	<%
		int session_time = session.getMaxInactiveInterval() / 60; // 세션의 유효 시간
	
		out.println(session_time + "분");
	
	%>
	<br><br>
	세션 시간 조정
	<br><br>
	<%
		session.setMaxInactiveInterval(60*50); // 50분
		
		session_time = session.getMaxInactiveInterval() / 60; 
		
		out.println(session_time + "분");
	
	%>
</body>
</html>
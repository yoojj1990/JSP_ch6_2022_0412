<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String pw = session.getAttribute("memberPw").toString();
		
		out.println(pw);
	
	%>
	<br><br>
	memberPw 세션 속성 삭제 후
	<br><br>
	<%
		session.removeAttribute("memberPw");
	
		String Pw2 =  session.getAttribute("memberPw").toString();
				
		out.println(pw);
	%>
</body>
</html>
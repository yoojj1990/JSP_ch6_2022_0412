<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 정보 확인 01</title>
</head>
<body>
	<h2>로그인 정보 확인</h2>
	<hr>
	<%
		String s_id = (String)session.getAttribute("memberId");
		String s_pw = (String)session.getAttribute("memberPw");
		
		out.println("로그인 하신 아이디 : "+s_id+"<br>");
		out.println("로그인 하신 비밀번호 : "+s_pw+"<br>");
		
		if(s_id == null)
		{
			
		
	%>
	<br><br>
	<a href="login2.jsp">로그인</a>
	<%
		}
		else
		{

	%>
	<br><br>
	<a href="sessionInfoAll.jsp">모든 세션 정보 확인</a>
	<br><br>
	<a href="logout.jsp">로그아웃</a>
	<%
	}
	%>
	<br><br>
	<a href="logout2.jsp">로그아웃2(비밀번호 속성만 삭제)</a>
	
</body>
</html>
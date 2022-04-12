<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그 아웃</title>
</head>
<body>
	<h2>로그아웃 전</h2>
	<%
		String s_id = (String)session.getAttribute("memberId");
		String s_pw = (String)session.getAttribute("memberPw");
		
		out.println("로그인 중 아이디 : "+s_id+"<br>");
		out.println("로그인 중 비밀번호 : "+s_pw+"<br>");
		
		if(request.isRequestedSessionIdValid())
		{
			out.println("세션 유효");
		}
		else
		{
			out.println("세션 무효");
		}
	%>
	
	<hr>
	<h2>로그아웃 후</h2>
	<%
		session.invalidate(); // 세션 삭제
		
		if(request.isRequestedSessionIdValid())
		{
			out.println("세션 유효");
		}
		else
		{
			out.println("세션 무효");
		}

	%>
</body>
</html>
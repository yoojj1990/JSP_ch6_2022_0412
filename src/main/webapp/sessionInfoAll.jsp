<%@ page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 세션 정보</title>
</head>
<body>
	<h2>모든 세션 정보 확인</h2>
	<hr>
	<%
		String name = "";
		String value = "";
		
		Enumeration s_name = session.getAttributeNames();
				
		while(s_name.hasMoreElements())
		{
			name = s_name.nextElement().toString();
			value = session.getAttribute(name).toString();
			
			out.println("세션의 이름 : [ "+ name + " ]<br>");
			out.println("세션의 속성값 : [ "+ value + " ]<br>");
		}
		String sessionId = session.getId(); // 브라우저별로 매칭되는 유니크한 ID
		
		out.println("세션아이디 : [ "+ sessionId +" ]<br>");
		
		
	%>
</body>
</html>
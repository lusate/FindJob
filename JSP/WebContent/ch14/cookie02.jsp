<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cookie</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		out.println("현재 설정된 쿠키의 개수 => " + cookies.length + "<br>");
		out.println("====================<br>");
		for(int i = 0; i < cookies.length; i++){
			out.println("설정된 쿠키 이름 [ " + i + " ] : " + cookies[i].getName() + "<br>");
			out.println("설정된 세션 값 [ " + i + " ] : " + cookies[i].getValue() + "<br>");
			out.println("--------------------<br>");
		}
	%>
</body>
</html>
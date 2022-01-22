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
	
	for(int i = 0; i < cookies.length; i++){
		cookies[i].setMaxAge(24 * 60 * 60);
		response.addCookie(cookies[i]);
	}
	response.sendRedirect("cookie02.jsp");
	%>
</body>
</html>
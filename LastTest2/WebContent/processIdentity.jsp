<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		Cookie ApplicationId = new Cookie("Working_ApplicationId", URLEncoder.encode(request.getParameter("ApplicationId"), "utf-8"));
		
		ApplicationId.setMaxAge(24 * 60 * 60);
		
		response.addCookie(ApplicationId);
		response.sendRedirect("personalData.jsp");
	%>
</body>
</html>
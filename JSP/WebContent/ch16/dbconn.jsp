<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

</head>
<body>
	<%
		Connection conn = null;
		
		String url = "jdbc:mysql://localhost:3306/JSPBookDB";
		String user = "root";
		String password = "dpfznlsptm1324!";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
	%>
</body>
</html>
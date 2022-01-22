<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Exception</title>
</head>
<body>
	<p> 오류가 발생하였습니다.
	<p> 예외 : <%= exception %>
	<p> toString() : <%= exception.toString() %>
	<p> getClass().getName() : <%= exception.getClass().getName() %>
	
</body>
</html>
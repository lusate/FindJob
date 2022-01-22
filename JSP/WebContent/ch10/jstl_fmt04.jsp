<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Internationalization</title>
</head>
<body>
	<jsp:useBean id="now" class="java.util.Date" />
	<p> 한국 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full" />
	<p> <fmt:timeZone value="America/New York">
	뉴욕 : <fmt:formatDate value="${now }" type = "both" dateStyle="full" timeStyle="full" />
	</fmt:timeZone>
	
	<p><fmt:timeZone value="Europe/London">
	런던 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full" />
	</fmt:timeZone>
</body>
</html>
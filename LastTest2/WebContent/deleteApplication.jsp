<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dto.Job" %>
<%@ page import="dao.JobRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

</head>
<%
	String id = request.getParameter("applicationId");
	if(id == null || id.trim().equals("")){
		response.sendRedirect("application.jsp");
		return;
	}
	
	session.invalidate();
	
	response.sendRedirect("application.jsp");
%>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Job" %>
<%@ page import="dao.JobRepository" %>
<html>
<head>
<meta charset="utf-8">
</head>

<%
	String id = request.getParameter("id");
	if(id == null || id.trim().equals("")){
		response.sendRedirect("jobs.jsp");
		return;
	}
	
	JobRepository dao = JobRepository.getInstance();
	
	Job business = dao.getJobById(id);
	if(business == null){
		response.sendRedirect("exceptionNoJobId.jsp");
	}
	
	ArrayList<Job> applicationList = (ArrayList<Job>) session.getAttribute("applicationlist");
	Job goodsQnt = new Job();
	for(int i = 0; i < applicationList.size(); i++){
		goodsQnt = applicationList.get(i);
		if(goodsQnt.getJobId().equals(id)){
			applicationList.remove(goodsQnt);
		}
	}
	
	response.sendRedirect("application.jsp");
%>
</html>
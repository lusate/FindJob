<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Job" %>
<%@ page import="dao.JobRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

<title>기업 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">기업 목록</h1>
		</div>
	</div>
	<%
		JobRepository dao = JobRepository.getInstance();
		ArrayList<Job> listOfJobs = dao.getAllJobs();
	%>
	<div class="container">
			<%
			for(int i = 0; i<listOfJobs.size(); i++){
				Job business = listOfJobs.get(i);
			%>
			<div class="row" >
			<div class="col-md-3" align="center">	
			<img src="./resources/images/<%= business.getFilename() %>" style="width: 100%">
			</div>
				<div class="col-md-8">
				<h3><%=business.getJname() %></h3>
				<p style="padding-top: 20px"> <%=business.getDescription() %>...
				<% out.println("<br>"); %>
				<% out.println("<br>"); %>
				<p><%=business.getScale() %> 
				<%=business.getBirthdate() %>
				<%=business.getRepresentative() %>
				<a href="./job.jsp?id=<%=business.getJobId() %>"
				class="btn btn-secondary float-right" role="button">상세 정보 &raquo;></a>
				</div>
			</div>
				<hr>
			<%
				}
			%>

	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
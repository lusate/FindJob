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
<%
	String applicationId = session.getId();
%>
<title>신청 내역</title>
</head>
<body>
	<jsp:include page = "menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">신청 내역</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteApplication.jsp?applicationId=<%= applicationId %>" class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="./Identity.jsp?applicationId=<%= applicationId %>" class="btn btn-success">신청하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>기업</th>
					<th>회사 규모</th>
					<th>지원 횟수</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%
					int sum = 0;
					ArrayList<Job> applicationList = (ArrayList<Job>) session.getAttribute("applicationlist");
					if(applicationList == null)
						applicationList = new ArrayList<Job>();
					
					for(int i = 0; i < applicationList.size(); i++){	//상품 리스트 하나씩 출력
						Job business = applicationList.get(i);
						int total = business.getQuantity();
						sum = sum + total;
				%>
				<tr>
					<td><%= business.getJobId() %> - <%= business.getJname() %></td>
					<td><%= business.getScale() %></td>
					<td><%= business.getQuantity() %></td>
					<td><%= total %></td>
					<td><a href="./removeApplication.jsp?id=<%= business.getJobId() %>" class="badge-danger">삭제</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총 지원 횟수</th>
					<th><%= sum %></th>
				</tr>
			</table>
			<a href="./jobs.jsp" class="btn btn-secondary"> &laquo; 지원 계속하기</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>
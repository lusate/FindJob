<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dto.Job" %>
<%@ page import="dao.JobRepository" %>
<%@ page errorPage="exceptionNoJobId.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

<title>기업 상세 정보</title>
<script type="text/javascript">
	function addToApplication() {
		if(confirm("이 기업에 지원하시겠습니까?")){
			document.addForm.submit();
		}
		else{
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">기업 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		JobRepository dao = JobRepository.getInstance();
		Job business = dao.getJobById(id);
	%>
	<div class="container">
		<div class="row">
		<div class="col-md-5">
			<img src="c:/upload/<%= business.getFilename() %>" style="width: 100%">
			<p><%= business.getDescription()%>
		</div>
		<div class="col-md-6">
			<h3>[<%= business.getJname() %>]</h3>
			<p> <b>홈페이지</b> : <%=business.getJobId() %>
			<p> <b>기업 규모</b> : <%=business.getScale() %>	
			<p> <b>대표자</b> : <%=business.getRepresentative() %>
			<p> <b>설립일</b> : <%=business.getBirthdate() %>
			<p> <b>사원 수</b> : <%=business.getPerson() %> 명
			<p> <b>매출액</b> : <%=business.getTotalsales() %> 원
			<p> <b>주요산업</b> : <%=business.getType() %>
			<p> <b>주소</b> : <%=business.getAddress() %> 
			<h5> 신입 연봉 <%= business.getSalary() %> 원</h5>
			<p> <form name="addForm" action="./addApplication.jsp?id=<%= business.getJobId() %>" method="post">
 			<p> <a href = "#" class="btn btn-info" onclick="addToApplication()"> 기업 신청 &raquo;</a>
 			<a href = "./application.jsp" class="btn btn-warning"> 신청 내역 &raquo;</a>
			<a href="./jobs.jsp" class="btn btn-secondary">기업 목록 &raquo;</a>
			</form>
		</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>
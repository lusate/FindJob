<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html>
<script type="text/javascript" src="./resources/js/validation.js"></script>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
</head>

<body>
<fmt:setLocale value='<%= request.getParameter("language") %>' />
<fmt:bundle basename="bundle.messages">
	<jsp:include page="menu.jsp"/>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3"><fmt:message key="title"/></h1>
		</div>
	</div>
<div class = "container">
<div class="text-right">
	<a href="?language=ko">Korean</a>|<a href="?language=en">English</a>
	<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
</div>
	<form name="newJob" action="./processAddJob.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
	
		<div class="form-group row">
			<label class="col-sm-2"><b><fmt:message key="jobId"/></b></label>
			<div class="col-sm-3">
				<input type="text" id="jobId" name="jobId" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="name"/></label>
			<div class="col-sm-3">
				<input type="text" id="name" name="name" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="description"/></label>
			<div class="col-sm-8">
				<textarea name="description" cols="100" rows="6"
						class="form-control" placeholder="회사에 대해 설명하세요"></textarea>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="scale"/></label>
			<div class="col-sm-5">
				<input type="radio" name="scale" value="Big">
				<fmt:message key="scale_Big"/>
				<input type="radio" name="scale1" value="Normal">
				<fmt:message key="scale_Normal"/>
				<input type="radio" name="scale2" value="Small">
				<fmt:message key="scale_Small"/>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="representative"/></label>
			<div class="col-sm-3">
				<input type="text" name="representative" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="birthdate"/></label>
			<div class="col-sm-3">
				<input type="text" name="birthdate" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="totalsales"/></label>
			<div class="col-sm-3">
				<input type="text" name="totalsales" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="person"/></label>
			<div class="col-sm-3">
				<input type="text" id="person" name="person" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="salary"/></label>
			<div class="col-sm-5">
				<input type="text" id="salary" name="salary" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="address"/></label>
			<div class="col-sm-3">
				<input type="text" id="address" name="address" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="type"/></label>
			<div class="col-sm-3">
				<input type="text" name="type" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="filename"/></label>
			<div class="col-sm-5">
				<input type="file" name="filename" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
			<input type="button" class="btn btn-primary" value="<fmt:message key="button"/>"  onclick="CheckAddJob()">
			</div>
		</div>
	</form>
</div>
</fmt:bundle>
</body>
</html>
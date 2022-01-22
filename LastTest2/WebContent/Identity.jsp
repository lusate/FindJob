<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>인적사항</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">인적사항</h1>
		</div>
	</div>
	<div class="container">
		<form action="./processIdentity.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<input type="hidden" name="ApplicationId" value="<%= request.getParameter("ApplicationId") %>" />
			
			<div class="form-group row">
				<label class="col-sm-2">이름<b style="color:red;">*</b></label>
				<div class="col-sm-3">
					<input name="Name" type="text" class="form-control" />
				</div>
				<div class="row-sm-5">
					<input type="file" name="uploadfile" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">생년월일<b style="color:red;">*</b></label>
				<div class="col-sm-3">
					<input name="Date" type="text" class="form-control" placeholder="(6자리)" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">성별<b style="color:red;">*</b></label>
				<div class="col-sm-3">
					<select name="Gender">
					<option value="남성">남성</option>
					<option value="여성">여성</option>
				</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이메일<b style="color:red;">*</b></label>
				<input type="text" name="Email1"> @ <input type="text" placeholder="직접 입력" name="Email2">
				<select name="Email3">
					<option value="">선택</option>
					<option value="naver.com">naver.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="daum.net">daum.net</option>
					<option value="nate.com">nate.com</option>
				</select>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<input name="Homenumber" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">휴대폰번호<b style="color:red;">*</b></label>
				<p> 연락처 : <select name="Phone1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
		</select> - <input type="text" maxlength="4" size="4" name="Phone2"> -
				<input type="text" maxlength="4" size="4" name="Phone3">
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-5">
					<input name="Address" type="text" class="form-control" />
 				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">학력  </label>
				<div class="col-sm-5">
					<select name="Ability">
					<option value="고등학교">고등학교</option>
					<option value="대학(2,3년)">대학(2,3년)</option>
					<option value="대학교(4년)">대학교(4년)</option>
					<option value="대학원">대학원</option>
		</select>
 				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="./application.jsp?cartId=<%= request.getParameter("applicationId") %>" class="btn btn-secondary" role="button">이전</a>
					<input type="submit" class="btn btn-primary" value="등록"/>
					<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
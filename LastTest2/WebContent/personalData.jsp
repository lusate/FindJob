<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.net.URLDecoder" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import = "dto.Job" %>
<%@ page import = "dao.JobRepository" %>
<!DOCTYPE html>
<%
		request.setCharacterEncoding("utf-8");
		
		String ApplicationId = session.getId();
		
		String Working_ApplicationId = "";
		String Working_Name = "";
		String Working_Date = "";
		String Working_Gender = "";
		String Working_Email1 = "";
		String Working_Email2 = "";
		String Working_Email3 = "";
		String Working_Homenumber = "";
		String Working_Phone1 = "";
		String Working_Phone2 = "";
		String Working_Phone3 = "";
		String Working_Address = "";
		String Working_Ability = "";
		
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null){
			for( int i = 0; i < cookies.length; i++){
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if(n.equals("Working_ApplicationId")){
					Working_ApplicationId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
				if(n.equals("Working_Name")){
					Working_Name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
				if(n.equals("Working_Date")){
					Working_Date = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
				if(n.equals("Working_Gender")){
					Working_Gender = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
				if(n.equals("Working_Email1")){
					Working_Email1 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
				if(n.equals("Working_Email2")){
					Working_Email2 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
				if(n.equals("Working_Email3")){
					Working_Email3 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
				if(n.equals("Working_Homenumber")){
					Working_Homenumber = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
				if(n.equals("Working_Phone1")){
					Working_Phone1 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
				if(n.equals("Working_Phone2")){
					Working_Phone2 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
				if(n.equals("Working_Phone3")){
					Working_Phone3 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
				if(n.equals("Working_Address")){
					Working_Address = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
				if(n.equals("Working_Ability")){
					Working_Ability = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
			}
		}
	%>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>주문 정보</title>
</head>
<body>
	<%
    int fileSize = 1024*1024*3; //3mb로 파일 크기를 제한 
    ServletContext context = getServletContext();
    String uploadPath = context.getRealPath("/save");
    %>
    업로드 경로 확인 : <%=uploadPath %><br>
    <%
    MultipartRequest multi = null;

    try{
      multi = new MultipartRequest(request, uploadPath, fileSize, "UTF-8",new DefaultFileRenamePolicy());
      
      String originalFile = multi.getOriginalFileName("uploadfile");
      String uploadFile = multi.getFilesystemName("uploadfile");
      %>
    <h1>읽어온 데이타 출력하기</h1>
    
    오리지날 파일명 : <%=originalFile %><br>
    실제 업로드된 파일명 : <%=uploadFile %><br><Br>
    <h3>업로드된 파일 불러오기</h3>
    <img src="/c:uploads/<%=uploadFile %>">
    <%
    }catch(Exception e){
    }

    %>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">이력서 저장</h1>
		</div>
	</div>
	
	<div class="container col-8 alert alert-info">
		<div class="text-center">
			<h2>인적 사항</h2>
		</div>
		<div class="row justify-content-between">
			<div class="col-6">
				성명 : <% out.println(Working_Name); %><br>
				생년월일 : <% out.println(Working_Date); %><br>
				성별 : <% out.println(Working_Gender); %> <br>
				이메일 : <% out.println(Working_Email1); %> @ <% out.println(Working_Email2); %><% out.println(Working_Email3); %> <br>
				휴대폰번호 : <% out.println(Working_Phone1); %><% out.println(Working_Phone2); %><% out.println(Working_Phone3); %> <br>
				주소 : <% out.println(Working_Address); %> <br>
			</div>
			<div class="col-4" align="right">
				<p> <em>학력 <% out.println(Working_Ability); %></em>
			</div>
		</div>
		<div>
			<table class="table table-hover">
				<tr>
					<th class="text-center">기업명</th>
					<th class="text-center">회사 규모</th>
					<th class="text-center">지원 횟수</th>
					<th class="text-center">소계</th>
				</tr>
				<%
					int sum = 0;
					ArrayList<Job> applicationList = (ArrayList<Job>) session.getAttribute("applicationlist");
					if(applicationList == null){
						applicationList = new ArrayList<Job>();
					}
					for(int i = 0; i < applicationList.size(); i++){	
						Job business = applicationList.get(i);
						int total = business.getQuantity();
						sum = sum + total;
				%>
				<tr>
					<td class="text-center"><em><%= business.getJname() %></em></td>
					<td class="text-center"><%= business.getScale() %></td>
					<td class="text-center"><%= business.getQuantity() %></td>
					<td class="text-center"><%= total %>원</td>
				</tr>
				<%
					}
				%>
				<tr>
					<td></td>
					<td></td>
					<td class="text-right"><strong>총 지원횟수: </strong></td>
					<td class="text-center text-danger"><strong><%= sum %></strong></td>
				</tr>
			</table>
			
			<a href="./Identity.jsp?cartId=<%= Working_ApplicationId %>" class="btn btn-secondary" role="button"> 이전 </a>
			<a href="./register.jsp" class="btn btn-success" role="button"> 이력서 완료 </a>
			<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
		</div>
	</div>
</body>
</html>
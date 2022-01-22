<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<%
		BookRepository dao = BookRepository.getInstance();
		ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>
	<div class="container">
			<%
			for(int i = 0; i<listOfBooks.size(); i++){
				Book book = listOfBooks.get(i);
			%>
			<div class="row" >
			<div class="col-md-3" align="center">	
			<img src="c:/upload/<%=book.getFilename()%>" style="width: 50%">
			</div>
				<div class="col-md-8">
				<h3><%=book.getName() %></h3>
				
				<a href="./book.jsp?id=<%=book.getBookId() %>"
				class="btn btn-secondary float-right" role="button">상세 정보 &raquo;></a>
				<%=book.getDescription() %>
				<% out.println("<br>"); %>
				<% out.println("<br>"); %>
				<p><%=book.getAuthor() %> | 
				<%=book.getPublisher() %> | 
				<%=book.getUnitPrice() %>원
				</div>
				<% out.println("<br>"); %>
				<% out.println("<br>"); %>
			</div>
				<hr>
			<%
				}
			%>

	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
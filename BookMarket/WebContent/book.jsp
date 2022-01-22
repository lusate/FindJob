<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

<title>도서 상세 정보</title>
<script type="text/javascript">
	function addToCart(){ //상품 주문
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
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
			<h1 class="display-3">도서 정보</h1>
		</div>
	</div>
	<%
	request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		BookRepository dao = BookRepository.getInstance();
		Book book = dao.getBookById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<img src="c:/upload/<%=book.getFilename()%>" style="width: 100%" />
			</div>
			<div class="col-md-8">
				<h3><%= book.getName() %></h3>
			<p> <%= book.getDescription2() %>
			<p> <b>도서 코드 : </b><span class="badge badge-danger"><%= book.getBookId() %></span>
			<p> <b>출판사</b> : <%=book.getPublisher() %>	
			<p> <b>저자</b> : <%=book.getAuthor() %>
			<p> <b>재고수</b> : <%=book.getUnitsInStock() %>
			<p> <b>총 페이지수</b> : <%=book.getTotalPages() %>
			<p> <b>출판일</b> : <%=book.getReleaseDate() %>
			<h4><%= book.getUnitPrice() %>원</h4>
			<p> <form name="addForm" action="./addCart.jsp?id=<%= book.getBookId() %>" method="post" >
			<p> <a href = "#" class="btn btn-info" onclick="addToCart()"> 도서 주문 &raquo;</a>
			<a href="./cart.jsp" class="btn btn-warning">장바구니</a>
			<a href="./books.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
			</form>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<html>
<head>
<meta charset="utf-8">

</head>
<body>
	<%
		String id = request.getParameter("id");
	if(id == null || id.trim().equals("")){
		response.sendRedirect("books.jsp");
		return;
	}
	
	BookRepository dao = BookRepository.getInstance();
	
	Book book = dao.getBookById(id);
	if(book == null){
		response.sendRedirect("exceptionNoBookId.jsp");
	}
	
	ArrayList<Book> goodsList = dao.getAllBooks();
	Book things = new Book();
	for(int i = 0; i < goodsList.size(); i++){
		things = goodsList.get(i);
		if(things.getBookId().equals(id)){
			break;
		}
	}
	
	ArrayList<Book> list = (ArrayList<Book>) session.getAttribute("cartlist");
	if(list == null){
		list = new ArrayList<Book>();
		session.setAttribute("cartlist", list);
	}
	
	int cnt = 0; //cnt : 주문한 도서 권 수
	Book thingsQnt = new Book();
	for(int i = 0; i < list.size(); i++){
		thingsQnt = list.get(i);
		if(thingsQnt.getBookId().equals(id)){
			cnt++;
			int orderQuantity = thingsQnt.getQuantity() + 1;
			thingsQnt.setQuantity(orderQuantity);
		}
	}
	
	if(cnt == 0){
		things.setQuantity(1);
		list.add(things);
	}
	
	response.sendRedirect("book.jsp?id=" + id);
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<html>
<head>
<meta charset="utf-8">
</head>

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
	
	ArrayList<Book> cartList = (ArrayList<Book>) session.getAttribute("cartlist");
	Book thingsQnt = new Book();
	for(int i = 0; i < cartList.size(); i++){
		thingsQnt = cartList.get(i);
		if(thingsQnt.getBookId().equals(id)){
			cartList.remove(thingsQnt);
		}
	}
	
	response.sendRedirect("cart.jsp");
%>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

</head>
<%
	String id = request.getParameter("cartId");
	if(id == null || id.trim().equals("")){
		response.sendRedirect("cart.jsp");
		return;
	}
	
	session.invalidate();	//삭제하기 버튼 누르면 주문한 도서 전부 초기화
	
	response.sendRedirect("cart.jsp");
%>
</html>
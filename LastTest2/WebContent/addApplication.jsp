<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Job" %>
<%@ page import="dao.JobRepository" %>
<html>
<head>
<meta charset="utf-8">

</head>
<body>
	<%
		String id = request.getParameter("id");
		if(id == null || id.trim().equals("")){
		response.sendRedirect("jobs.jsp");
		return;
	}
	
	JobRepository dao = JobRepository.getInstance();
	
	Job business = dao.getJobById(id);
	if(business == null){
		response.sendRedirect("exceptionNoJobId.jsp");
	}
	
	ArrayList<Job> goodsList = dao.getAllJobs();
	Job goods = new Job();
	for(int i = 0; i < goodsList.size(); i++){
		goods = goodsList.get(i);
		if(goods.getJobId().equals(id)){
			break;
		}
	}
	
	ArrayList<Job> list = (ArrayList<Job>) session.getAttribute("applicationlist");
	if(list == null){
		list = new ArrayList<Job>();
		session.setAttribute("applicationlist", list);
	}
	
	int cnt = 0;
	Job goodsQnt = new Job();
	for(int i = 0; i < list.size(); i++){
		goodsQnt = list.get(i);
		if(goodsQnt.getJobId().equals(id)){
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}
	
	if(cnt == 0){
		goods.setQuantity(1);
		list.add(goods);
	}
	
	response.sendRedirect("job.jsp?id=" + id);
	%>
</body>
</html>
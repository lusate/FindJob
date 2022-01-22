<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Job" %>
<%@ page import="dao.JobRepository" %>

<body>
	<%
		request.setCharacterEncoding("utf-8");
	
	String filename = "";
	String realFolder = "C:\\upload";	//웹 애플리케이션상의 절대 경로
	int maxSize = 5*1024*1024;	//최대 업로드될 파일의 크기 5MB
	String encType = "utf-8";	//인코딩 유형
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	String jobId = multi.getParameter("jobId");
	String name = multi.getParameter("name");
	String scale = multi.getParameter("scale");
	String description = multi.getParameter("description");
	String representative = multi.getParameter("representative");
	String birthdate = multi.getParameter("birthdate");
	String totalsales = multi.getParameter("totalsales");
	String person = multi.getParameter("person");
	String salary = multi.getParameter("salary");
	String address = multi.getParameter("address");
	String type = multi.getParameter("type");
	
int number;
	
	if(person.isEmpty())
		number = 0;
	else 
		number = Integer.valueOf(person);

	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	JobRepository dao = JobRepository.getInstance();
	
	Job newJob = new Job();
	newJob.setJobId(jobId);
	newJob.setJname(name);
	newJob.setScale(scale);
	newJob.setDescription(description);
	newJob.setRepresentative(representative);
	newJob.setBirthdate(birthdate);
	newJob.setTotalsales(totalsales);
	newJob.setPerson(number);
	newJob.setSalary(salary);
	newJob.setAddress(address);
	newJob.setType(type);
	newJob.setFilename(fileName);
	
	dao.addJob(newJob);
	response.sendRedirect("jobs.jsp");
	%>
	
</body>


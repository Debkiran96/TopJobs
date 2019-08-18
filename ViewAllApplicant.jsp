<%@page import="niit.model.Jobseeker"%>
<%@page import="java.util.ArrayList"%>
<%@page import="niit.dao.EmployeeDaoImpl"%>
<%@page import="niit.model.Jobs"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int jobid=Integer.parseInt(request.getParameter("jobid"));
System.out.println(jobid);
Jobs jobs=new Jobs();
jobs.setJobid(jobid);
EmployeeDaoImpl employeeDaoImpl=new EmployeeDaoImpl();
ArrayList<Jobseeker>alist=employeeDaoImpl.ViewApplicant(jobs);

for (Jobseeker jobseeker:alist){
%>
<div class="Applicant">
<h2>NAME:<%=jobseeker.getName()%></h2>
<h3>Email-id:<%=jobseeker.getEmail()%></h3>
<h3>Phone number:<%=jobseeker.getMobile()%></h3>
<h3>Current Location:<%=jobseeker.getClocation()%></h3>
</div>
<%
}
%>
</body>
</html>
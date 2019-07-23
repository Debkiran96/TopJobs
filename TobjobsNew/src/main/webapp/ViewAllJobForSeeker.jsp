<%@page import="niit.dao.JobseekerDaoImpl"%>
<%@page import="niit.model.Jobs"%>
<%@page import="java.util.ArrayList"%>
<%@page import="niit.model.Employee"%>
<%@page import="niit.dao.EmployeeDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.Job{
  background-color: white;
  color: black;
  margin: 20px;
  padding: 5px;
}

</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link href="css/reg.css" rel="stylesheet">
<title>Insert title here</title>
</head>

<body>

<%	
JobseekerDaoImpl jobseekerDaoImpl = new JobseekerDaoImpl();
ArrayList<Jobs> joblist = jobseekerDaoImpl.viewJobs();
for( Jobs job:joblist){
	int jobid= job.getJobid();
%>

<div class="Job">
<form action="applyjob" method="post">
<input type='hidden' name='jobid' value='<%=jobid%>'>
<h2>Job Description:<%=job.getJobDescription()%></h2>
<h3>Salary:<%=job.getSalary()%></h3>
<h3>FunctionalArea:<%=job.getFunctionalArea()%></h3>
<h3>Experience:<%=job.getExperience()%></h3>
<h3>Education:<%=job.getEducation()%></h3>
<p style=text-align:right">
<button type="submit" class="btn btn-primary">APPLY NOW</button>
</form>
</div> 


 <%
}
 %> 

</body>
</html>

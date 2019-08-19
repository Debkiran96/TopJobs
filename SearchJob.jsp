<%@page import="java.util.ArrayList"%>
<%@page import="niit.dao.JobseekerDaoImpl"%>
<%@page import="niit.model.Jobseeker"%>
<%@page import="niit.model.Jobs"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.Jobsearch{
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
// read all data given by client using request.getParameter
String itype=request.getParameter("itype");
String function_area=request.getParameter("functional_area");
String kskills=request.getParameter("kskill");
String edu=request.getParameter("edu");
String exp=request.getParameter("exp");
String loc=request.getParameter("loc");
//make Jobs object
Jobs job= new Jobs();
// set all property for jobs
		job.setIndustryType(itype);
		job.setFunctionalArea(function_area);
		job.setKeySkills(kskills);
		job.setEducation(edu);
		job.setExperience(exp);
		job.setLocation(loc);
// make object of jobseekerdaoimpl
JobseekerDaoImpl jobseekerDaoImpl = new JobseekerDaoImpl();
// call method public  ArrayList<Jobs> Searchjob(Jobs jobs)  which gives ArrayList of Jobs
ArrayList<Jobs> jlist = jobseekerDaoImpl.Searchjob(job);
System.out.println("len2:"+ jlist.size());
//using for..each loop show each job
for( Jobs j:jlist){
%>
<div class="Jobsearch">
<h3>Description:<%=j.getJobDescription()%></h3>
<h2>Industry Type:<%=j.getIndustryType()%></h2>
<h3>Functional Area:<%=j.getFunctionalArea()%></h3>
<h3>Key Skills:<%=j.getKeySkills()%></h3>
<h3>Job Role:<%=j.getRole()%> &nbsp; Category: <%=j.getRoleCategory()%></h3>
<h3>Education:<%=j.getEducation()%></h3>
<h3>Experience:<%=j.getExperience()%></h3>
<h3>Salary:<%=j.getSalary()%></h3>
<h3>Location:<%=j.getLocation()%></h3>
<p style="text-align:left">
<button type="button" class="btn btn-primary">Apply Job</button>
</div> 

<%
}
%>
</body>
</html>
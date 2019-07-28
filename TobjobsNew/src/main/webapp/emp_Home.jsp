<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

HELLO welcome to emp home page

<table>
<%
	String userid = (String)session.getAttribute("userid");
	String url="FileDownload?uid="+userid;
%>
  <tr> <Td><%=userid%></Td>
  <td><img src=<%=url%> height=100 width=100></td>
  </tr>
</table>
<a href="JobPost.html">JobPost</a>
<a href="ViewJob">View Jobs</a>
<a href="Emplrlogout">Logout</a>

</body>
</html>
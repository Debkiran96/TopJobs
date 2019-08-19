<%@page import="niit.model.Schemes"%>
<%@page import="java.util.List"%>
<%@page import="niit.dao.ScehemsDaoImpl"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>

<body>
<%
ScehemsDaoImpl scehemsDaoImpl = new ScehemsDaoImpl();

List<Schemes> slist = scehemsDaoImpl.viewSchemes();
for( Schemes j:slist){
	String url="SchemeBuy.jsp?sid="+j.getSid();
%>
<div class="col-sm-4">
<h3><%=j.getSname()%></h3>
<b>Description: </b><%=j.getDescr() %>
<br>
<b>Duration: </b><%=j.getDuration()%> Days
<br>
<b>Fee: </b><%=j.getFee()%>$
<br>
<a href="Payment.html">
<button type="button" class="btn btn-success" onclick="<%=url%>">Buy</button>
</a>
</div>
<%
}
%>
</body>
</html>

  <div class="jumbotron text-center">
  <div>
<div style="text-align: left" >
  <a href="index.html">
<IMG SRC="image/logo.png" ALT="logo" WIDTH=80 HEIGHT=80>
</a>
</div>
<%
String userid = (String)session.getAttribute("userid");
if(userid!=null){
%>
<div style="text-align: right;">
Welcome <b><%=userid%></b>
<br>
 <ul class="menu">
   <li><a class="" href="#"><i class="fa fa-home"></i> DashBoard</a>
   <ul class="sub-menu">
   <li><a href="jobseeker_profile.html">Profile</a></li>
   <li><a href="JobSeekerLogout">Logout</a></li>
   </ul>
  </li>
  </ul>
</div>

<%
}
%>
<div style="text-align: right;">
<a href="emp_login.html">EMPLOYEER ZONE </a>
</div>
&nbsp;
<div style="text-align: right;">
<a href="jobseeker_reg.html"><i class="fa fa-user"></i>REGISTER</a>
&nbsp;
<a href="jobseeker_login.html"><i class="fa fa-male"></i>LOGIN</a>
&nbsp;
</div>
</div>
</div>
  <nav>
<a id="resp-menu" class="responsive-menu" href="#"><i class="fa fa-reorder"></i> Menu</a>    
   <ul class="menu">
   <li><a class="homer" href="#"><i class="fa fa-home"></i> HOME</a>
   <ul class="sub-menu">
   <li><a href="#">Sub-Menu 1</a></li>
   <li><a href="#">Sub-Menu 2</a></li>
   <li><a href="#">Sub-Menu 3</a></li>
   <li><a href="#">Sub-Menu 4</a></li>
   <li><a href="#">Sub-Menu 5</a></li>   
   </ul>
   </li>
  <li><a  href="#"><i class="fa fa-user"></i> ABOUT</a></li>
  
  <ul class="sub-menu">
   <li><a href="#">Sub-Menu 1</a></li>
   <li><a href="#">Sub-Menu 2</a>
    <ul>
    <li><a href="#">Sub Sub-Menu 1</a></li>
   	<li><a href="#">Sub Sub-Menu 2</a></li>
	<li><a href="#">Sub Sub-Menu 3</a></li>
   	<li><a href="#">Sub Sub-Menu 4</a></li>
	<li><a href="#">Sub Sub-Menu 5</a></li>	
    </ul>
   </li>
     <li><a href="#">Sub-Menu 3</a>
    <ul>
    <li><a href="#">Sub Sub-Menu 1</a></li>
   	<li><a href="#">Sub Sub-Menu 2</a></li>
	<li><a href="#">Sub Sub-Menu 3</a></li>
   	<li><a href="#">Sub Sub-Menu 4</a></li>
	<li><a href="#">Sub Sub-Menu 5</a></li>	
    </ul>
   </li>
   </ul>
  </li>
  <li><a  href="#"><i class="fa fa-bullhorn"></i> BLOG</a></li>
    <li><a  href="#"><i class="fa fa-tags"></i> EMPLOYEE</a>
  <ul class="sub-menu">
   <li><a href="#">Sub-Menu 1</a></li>
   <li><a href="#">Sub-Menu 2</a>
    <ul>
    <li><a href="#">Sub Sub-Menu 1</a></li>
   	<li><a href="#">Sub Sub-Menu 2</a></li>
	<li><a href="#">Sub Sub-Menu 3</a></li>
   	<li><a href="#">Sub Sub-Menu 4</a></li>
	<li><a href="#">Sub Sub-Menu 5</a></li>	
    </ul>
   </li>
     <li><a href="#">Sub-Menu 3</a>
    <ul>
    <li><a href="#">Sub Sub-Menu 1</a></li>
   	<li><a href="#">Sub Sub-Menu 2</a></li>
	<li><a href="#">Sub Sub-Menu 3</a></li>
   	<li><a href="#">Sub Sub-Menu 4</a></li>
	<li><a href="#">Sub Sub-Menu 5</a></li>	
    </ul>
   </li>
   </ul>
  </li>
  
   <li><a  href="#"><i class="fa fa-tags"></i> JOBSEEKER</a>
  <ul class="sub-menu">
   <li><a href="#">Sub-Menu 1</a></li>
   <li><a href="#">Sub-Menu 2</a>
    <ul>
    <li><a href="#">Sub Sub-Menu 1</a></li>
   	<li><a href="#">Sub Sub-Menu 2</a></li>
	<li><a href="#">Sub Sub-Menu 3</a></li>
   	<li><a href="#">Sub Sub-Menu 4</a></li>
	<li><a href="#">Sub Sub-Menu 5</a></li>	
    </ul>
   </li>
     <li><a href="#">Sub-Menu 3</a>
    <ul>
    <li><a href="#">Sub Sub-Menu 1</a></li>
   	<li><a href="#">Sub Sub-Menu 2</a></li>
	<li><a href="#">Sub Sub-Menu 3</a></li>
   	<li><a href="#">Sub Sub-Menu 4</a></li>
	<li><a href="#">Sub Sub-Menu 5</a></li>	
    </ul>
   </li>
   </ul>
  </li>
  
  <li><a  href="contact.html"><i class="fa fa-envelope"></i> CONTACT</a></li>
  
  </ul>
  </nav>
 
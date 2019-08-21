<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Welcome to TopJobs</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
  
   <script>  
    var request;  
    function sendInfo(){  
    var msg=document.getElementById("msg").value;  
  //  alert('msg:'+msg);
    var url="SendMsg?msg="+msg;  
    if(window.XMLHttpRequest)  
       request=new XMLHttpRequest();  
    else if(window.ActiveXObject)
       request=new ActiveXObject("Microsoft.XMLHTTP");  
      
    try{  
    request.onreadystatechange=getInfo;  
    request.open("GET",url,true);  
    request.send();  
    }  
    catch(e){  
    alert("Unable to connect to server");
       }  
    }  
    
    function getInfo(){  
        if(request.readyState==4){  
        	var val=request.responseText;  
        	document.getElementById('statid').innerHTML=val;  }  
        }
 
    </script>  


<link href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' rel='stylesheet'/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600,700,800);

*,html,body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,label,fieldset,input,p,blockquote,th,td {
    margin: 0;
    padding: 0;
}

article,aside,figure,footer,header,hgroup,nav,section {
    display: block;
}

* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

html {
    -webkit-font-smoothing: antialiased;
}

a {
    color: #BA0707;
    text-decoration: none;
}

a:hover {
    color: #BA0707;
}

body {
    background: #e5e5e5;
    color: #374147;
    font: 14px "Open Sans",Helvetica,Arial,sans-serif;
    -webkit-font-smoothing: antialiased;
    line-height: 1;
    width: 100%;
}

nav {
    display: block;
    background: #374147;
}

.menu {
    display: block;
}

.menu li {
    display: inline-block;
    position: relative;
    z-index: 100;
}

.menu li:first-child {
    margin-left: 0;
}

.menu li a {
    font-weight: 600;
    text-decoration: none;
    padding: 20px 15px;
    display: block;
    color: #fff;
    transition: all 0.2s ease-in-out 0s;
}

.menu li a:hover,.menu li:hover>a {
    color: #fff;
    background: #9ca3da;
}

.menu ul {
    visibility: hidden;
    opacity: 0;
    margin: 0;
    padding: 0;
    width: 170px;
    position: absolute;
    left: 0px;
    background: #fff;
    z-index: 99;
    transform: translate(0,20px);
    transition: all 0.2s ease-out;
}

.menu ul:after {
    bottom: 100%;
    left: 20%;
    border: solid transparent;
    content: " ";
    height: 0;
    width: 0;
    position: absolute;
    pointer-events: none;
    border-color: rgba(255, 255, 255, 0);
    border-bottom-color: #fff;
    border-width: 6px;
    margin-left: -6px;
}

.menu ul li {
    display: block;
    float: none;
    background: none;
    margin: 0;
    padding: 0;
}

.menu ul li a {
    font-size: 12px;
    font-weight: normal;
    display: block;
    color: #797979;
    background: #fff;
}

.menu ul li a:hover,.menu ul li:hover>a {
    background: #9ca3da;
    color: #fff;
}

.menu li:hover>ul {
    visibility: visible;
    opacity: 1;
    transform: translate(0,0);
}

.menu ul ul {
    left: 169px;
    top: 0px;
    visibility: hidden;
    opacity: 0;
    transform: translate(20px,20px);
    transition: all 0.2s ease-out;
}

.menu ul ul:after {
    left: -6px;
    top: 10%;
    border: solid transparent;
    content: " ";
    height: 0;
    width: 0;
    position: absolute;
    pointer-events: none;
    border-color: rgba(255, 255, 255, 0);
    border-right-color: #fff;
    border-width: 6px;
    margin-top: -6px;
}

.menu li>ul ul:hover {
    visibility: visible;
    opacity: 1;
    transform: translate(0,0);
}

.responsive-menu {
    display: none;
    width: 100%;
    padding: 20px 15px;
    background: #374147;
    color: #fff;
    text-transform: uppercase;
    font-weight: 600;
}

.responsive-menu:hover {
    background: #374147;
    color: #fff;
    text-decoration: none;
}

a.homer {
    background: #9ca3da;
}

@media (min-width: 768px) and (max-width: 979px) {
    .mainWrap {
        width: 768px;
    }

    .menu ul {
        top: 37px;
    }

    .menu li a {
        font-size: 12px;
    }

    a.homer {
        background: #374147;
    }
}

@media (max-width: 767px) {
    .mainWrap {
        width: auto;
        padding: 50px 20px;
    }

    .menu {
        display: none;
    }

    .responsive-menu {
        display: block;
    }

    nav {
        margin: 0;
        background: none;
    }

    .menu li {
        display: block;
        margin: 0;
    }

    .menu li a {
        background: #fff;
        color: #797979;
    }

    .menu li a:hover,.menu li:hover>a {
        background: #9ca3da;
        color: #fff;
    }

    .menu ul {
        visibility: hidden;
        opacity: 0;
        top: 0;
        left: 0;
        width: 100%;
        transform: initial;
    }

    .menu li:hover>ul {
        visibility: visible;
        opacity: 1;
        position: relative;
        transform: initial;
    }

    .menu ul ul {
        left: 0;
        transform: initial;
    }

    .menu li>ul ul:hover {
        transform: initial;
    }
}

@media (max-width: 480px) {
}

@media (max-width: 320px) {
}

.testimonials {
	margin-top: 5px;
	margin-bottom: 5px;
	position: relative;
	display: block;
	width: 100%;
	min-height: 250px;
}

.testimonials ul {
	list-style: none;
	padding: 0;
}

.testimonials li {
	display: inline-block;
	background-color: white;
	margin: 50px 10px 10px 10px;
	width: calc((100% - 55px) / 2);
	height: 200px;
	border: solid 1px #bdbdbd;
	position: relative;
	transition: ease-in-out .3s;
}

.testimonials li img {
	height: 70px;
	width: 70px;
	left: 50%;
	transform: translate(-50%, -50%);
	position: absolute;
	border-radius: 50%;
	box-shadow: 0px 0px 0px 15px #fff;
	background-color: #fff;
	transition: box-shadow 0.3s linear;
}

.testimonials li p {
	position: absolute;
	width: 70%;
	text-align: center;
	top: 50px;
	left: 50%;
	transform: translatex(-50%);
	font-size: 15px;
}

.testimonials li h1 {
	position: absolute;
	text-decoration: bold;
	bottom: 10px;
	left: 50%;
	transform: translatex(-50%);
	font-size: 17px;
}

.testimonials li:hover {
	background-color: #212121;
	color: #fff;
}

.testimonials li:hover img {
	box-shadow: 0px 0px 0px 2px #fff;
}

@media only screen and (max-width: 860px) {
	.testimonials li {
		width: 70%;
		margin: auto;
		display: block;
		margin-top: 70px;
	}
	
	.testimonials li:first-child {
		margin-top: 50px;
	}

    </style>
    <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the chat form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup chat - hidden by default */
.chat-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width textarea */
.form-container textarea {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
  resize: none;
  min-height: 200px;
}

/* When the textarea gets focus, do something */
.form-container textarea:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/send button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>

<style type="text/css">
element.style {
}
@media screen and (min-width: 768px)

.jumbotron {
    /* padding-top: 48px; */
    /* padding-bottom: 48px; */
}
<style>
.jumbotron {
    padding: 15px;
    /* margin-bottom: 30px; */
    color: inherit;
    background-color: #eee;
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
</head>

<body>
 <jsp:include page="menu.jsp"></jsp:include>
  <script src='jquery.min.js'></script>
    <script  src="js/index.js"></script>
	
	<div id="carousel-example" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example" data-slide-to="1"></li>
    <li data-target="#carousel-example" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner">
    <div class="item active">
      <a href="#"><img src="image/banner1.jpg" /></a>
      <div class="carousel-caption">
        <h3>banner1</h3>
      </div>
    </div>
    <div class="item">
      <a href="#"><img src="image/banner2.jpg" /></a>
      <div class="carousel-caption">
      <h3>banner2</h3>
      </div>
    </div>
    <div class="item">
      <a href="#"><img src="image/banner3.jpg" /></a>
      <div class="carousel-caption">
        <h3>banner3</h3>
      </div>
    </div>
  </div>

  <a class="left carousel-control" href="#carousel-example" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>

 <%@ include file="SearchJob.html" %>

 <%
String status= (String)request.getAttribute("status");
if(status!=null){
%>
<center><%=status%></center>
<%	
}
 %>
<jsp:include page="ViewAllJobForSeeker.jsp"></jsp:include>


<div class="jumbotron text-center">
			<h1 > ABOUT US</h1>
			<br>
			<p style="text-align: center;">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
            It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br></p>
            <a href="about_us.html">READ MORE...</a>
		</div>
 
 <div class="jumbotron text-center" style="background-color: #FADBD8  ">
 <h1>Testimonials:</h1>
	<div class = "testimonials">
		<ul>
			<li>
				<img src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkSflTI9DIJAstZ8fesrSz70HR8oH9BN_d8w0cjGEtiZyqDcs8">
				<p>"Integer in cursus massa. Curabitur viverra, libero sed eleifend pellentesque, metus quam commodo lorem, ut laoreet ipsum metus ac augue."</p>
				<h1>Martin Kovaks</h1>
			</li>
			<li>
				<img src = "https://i.pinimg.com/236x/2d/e5/7f/2de57f8025bd64dffd554de0f080ee7f--my-pinterest-pinterest-board.jpg?b=t">
				<p>"Sed vitae augue arcu. In pharetra ultricies mi eget interdum. Donec feugiat, orci at mattis laoreet, mauris mauris interdum arcu, ac viverra nibh purus a eros."</p>
				<h1>Adrea Glauber</h1>
			</li>
		</ul>
 </div>
 </div>

 

<button class="open-button" onclick="openForm()">Chat</button>

<div class="chat-popup" id="myForm">
  <form action="MessagePost" method="post" class="form-container">
    <h1>Chat</h1>

    <label for="msg"><b>Message</b></label>
    <textarea placeholder="Type message.." name="msg" id="msg" required></textarea>
    <div id="statid"></div>
    <button type="button" value="ShowTable" onClick="sendInfo()" class="btn">Send</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>

</body>

</html>

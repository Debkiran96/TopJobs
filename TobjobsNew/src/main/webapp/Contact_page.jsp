<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<meta charset="UTF-8">
  <title>Responsive Contact Form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css'>

      <link rel="stylesheet" href="css/style.css">
	  <style>
	  
* {
	margin:0px;
	padding:0px;
}
*, *:after, *:before { -webkit-box-sizing: border-box; -moz-box-sizing: border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing: border-box; }

.clearfix:before, .clearfix:after { display: table; content: ''; }
.clearfix:after { clear: both; }


body {
	background: #ffffff;
	color: #333;
	font-weight: normal;
	font-size: 1em;
	font-family: 'Roboto', Arial, sans-serif;
}

input:focus, textarea:focus, keygen:focus, select:focus {
	outline: none;
}
::-moz-placeholder {
	color: #666;
	font-weight: 300;
	opacity: 1;
}

::-webkit-input-placeholder {
	color: #666;
	font-weight: 300;
}


/* Contact Form Styling */
.container {
	padding: 0 50px 70px;
}
.textcenter {
	text-align: center;
}
.section1 {
	text-align: center;
	display: table;
	width: 100%;
}
.section1 .shtext {
	display: block;
	margin-top: 20px;
}
.section1 .seperator {
	border-bottom:1px solid #a2a2a2;
	width: 35px;
	display: inline-block;
	margin: 20px;
}

.section1 h1 {
	font-size: 40px;
	color: #A44DD8;
	font-weight: normal;
}

.section2 {
    width: 1200px;
    margin: 25px auto;
}
.section2 .col2 {
	width: 48.71%;
}
.section2 .col2.first {
	float: left;
}
.section2 .col2.last {
	float: right;
}
.section2 .col2.column2 {
	padding: 0 30px;
}
.section2 span.collig {
	color: #a2a2a2;
	margin-right: 10px;
	display: inline-block;
}
.section2 .sec2addr {
	display: block;
	line-height: 26px;
}
.section2 .sec2addr p:first-child {
	margin-bottom: 10px;
}
.section2 .sec2contactform input[type="text"], 
.section2 .sec2contactform input[type="email"],
.section2 .sec2contactform textarea {
    padding: 18px;
    border: 0;
    background: #EDEDED;
    margin: 7px 0;
}
.section2 .sec2contactform textarea {
	width: 100%;
	display: block;
	color: #666;
  resize:none;
}
.section2 .sec2contactform input[type="submit"] {
	padding: 15px 40px;
    color: #fff;
    border: 0;
    background: #A44DD8;
    font-size: 16px;
    text-transform: uppercase;
    margin: 7px 0;
    cursor: pointer;
}
.section2 .sec2contactform h3 {
	font-weight: normal;
    margin: 20px 0;
    margin-top: 30px;
    border-bottom: 1px solid #ddd;
    padding-bottom: 19px;
    color: #A44DD8;
}

/* @media querries */

@media only screen and (max-width: 1266px) {
	.section2 {
		width: 100%;
	}
}
@media only screen and (max-width: 960px) {
	.container {
		padding: 0 30px 70px;
	}
	.section2 .col2 {
		width: 100%;
		display: block;
	}
	.section2 .col2.first {
		margin-bottom: 10px;
	}
	.section2 .col2.column2 {
		padding: 0;
	}
	body .sec2map {
		height: 250px !important;
	}
}
@media only screen and (max-width: 768px) {
	.section2 .sec2addr {
		font-size: 14px;
	}
	.section2 .sec2contactform h3 {
		font-size: 16px;
	}
	.section2 .sec2contactform input[type="text"], .section2 .sec2contactform input[type="email"], .section2 .sec2contactform textarea {
		padding: 10px;
		margin:3px 0;
	}
	.section2 .sec2contactform input[type="submit"] {
		padding: 10px 30px;
		font-size: 14px;
	}
}
@media only screen and (max-width: 420px) {
	.section1 h1 {
		font-size: 28px;
	}	
}
	  </style>
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
<jsp:include page="menu2.jsp"></jsp:include>

<div class="container">
		<div class="innerwrap">
		
			<section class="section1 clearfix">
				<div class="textcenter">
					<span class="shtext">Contact Us</span>
					<span class="seperator"></span>
					<h1>Drop Us a Mail</h1>
				</div>
			</section>
		
			<section class="section2 clearfix">
				<div class="col2 column1 first">
					<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div class="sec2map" style='overflow:hidden;height:550px;width:100%;'><div id='gmap_canvas' style='height:100%;width:100%;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="http://freedirectorysubmissionsites.com/">free web directories</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>function init_map(){var myOptions = {zoom:14,center:new google.maps.LatLng(19.075314480255834,72.88153973865361),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(19.075314480255834,72.88153973865361)});infowindow = new google.maps.InfoWindow({content:'<strong>My Location</strong><br>mumbai<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
				</div>
				<div class="col2 column2 last">
					<div class="sec2innercont">
						<div class="sec2addr">
							<p>45 BC, a Latin professor at Hampden-Sydney College in Virginia</p>
							<p><span class="collig">Phone :</span> +91 976885083</p>
							<p><span class="collig">Email :</span> vivek.mengu016@gmail.com</p>
							<p><span class="collig">Fax :</span> +91 9768850839</p>
						</div>
					</div>
					<div class="sec2contactform">
						<h3 class="sec2frmtitle">Want to Know More?? Drop Us a Mail</h3>
						<form action="">
							<div class="clearfix">
								<input class="col2 first" type="text" placeholder="FirstName">
								<input class="col2 last" type="text" placeholder="LastName">
							</div>
							<div class="clearfix">
								<input  class="col2 first" type="Email" placeholder="Email">
								<input class="col2 last" type="text" placeholder="Contact Number">
							</div>
							<div class="clearfix">
								<textarea name="textarea" id="" cols="30" rows="7">Your message here...</textarea>
							</div>
							<div class="clearfix"><input type="submit" value="Send"></div>
						</form>
					</div>

				</div>
			</section>
		
		</div>
	</div>
</body>
  
  

    <script  src="js/index.js"></script>



</body>
</html>
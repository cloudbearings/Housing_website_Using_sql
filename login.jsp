<%-- 
    Document   : login
    Created on : 26 Apr, 2015, 1:56:35 AM
    Author     : ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
<link href="images/favicon.jpg" type="image" rel="icon"/>

<title>Housing</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<!-- Waterwheel Carousel -->
<script type="text/javascript" src="layout/scripts/carousel/jquery.waterwheelCarousel.min.js"></script>
<script type="text/javascript" src="layout/scripts/carousel/jquery.waterwheelCarousel.setup.js"></script>
<!-- / Waterwheel Carousel -->
</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div class="fl_left">

<h1><a href="index.html">Housing</a></h1>
<p style="indent:20">- making life simpler..</p>

    </div>
      <div class="fl_right"><a href="#"><img src="images/demo/logo.jpg" alt="" /></a></div>
    <br class="clear" />
  </div>
  
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li class="active"><a href="index.html">Home</a></li>
        <li><a href="https://housing.com/about">About-Us</a></li>
        <li><a href="https://housing.com/blog">Blog</a></li>
		<li><a href="#">Services <b>&#8681<b></a>
          <ul>
            <li><a href="login.jsp">Seller</a></li>
            <li><a href="visitor.jsp">Buyer</a></li>
          </ul>
        </li>

       
        <li class="last"><a href="contact.html">Contact-Us</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
        <form method="post" action="login1.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Seller Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Seller Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="reg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
  <hr color="grey">
<!-- ####################################################################################################### -->
<div class="wrapper col6">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved</p>
    <p class="fl_right"> Made by Hunters...</p> 
    <br class="clear" />
  </div>
</div>
</body>
</html>

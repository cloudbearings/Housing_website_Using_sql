<%@ page import ="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="images/favicon.jpg" type="image" rel="icon"/>

<title>Welcome</title>

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
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=convertToNull","root","sathish");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("seller.jsp");
    } else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
%>
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

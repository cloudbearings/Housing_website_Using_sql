<%-- 
    Document   : sellmaster
    Created on : 25 Apr, 2015, 5:03:34 PM/
    Author     : satish r
--%>

<%@page import="java.io.InputStream"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
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
    <script language="javascript">
function check()
{
document.grade.action="./navi.jsp";
document.grade.submit();
}
</script>
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
        <form name="sell">
            <%String sty=request.getParameter("sty");
              String sno=request.getParameter("sno");
              String sstr=request.getParameter("sstr");
              String area=request.getParameter("area");
              String city=request.getParameter("city");
              String state=request.getParameter("state");
              String school=request.getParameter("school");
              String bus=request.getParameter("bus");
              String rest=request.getParameter("rest");
              String atter=request.getParameter("atter");
             // InputStream inputStream = null;  
             // Part filePart = request.getPart("img");  
%>
        <%;
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=convertToNull","root","sathish");
PreparedStatement pst=conn.prepareStatement("insert into seller values(?,?,?,?,?,?,?,?,?,?)");
pst.setString(1,sty);
pst.setString(2,sno);
pst.setString(3,sstr);
pst.setString(4,area);
pst.setString(5,city);
pst.setString(6,state);
pst.setString(7,school);
pst.setString(8,bus);
pst.setString(9,rest);
pst.setString(10,atter);
//pst.setBlob(11, inputStream); 
pst.executeUpdate();
%>

<hr>

<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br>
<center>
    <font color="#00CC33"><%out.println("DATA INSERTED");%></font></b>
<br><br>
<a href="seller.jsp"> Back </a>
 <hr color="grey">
</center>
 </form>
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

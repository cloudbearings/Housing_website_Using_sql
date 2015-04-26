<%-- 
    Document   : visitormaster
    Created on : 25 Apr, 2015, 8:56:23 PM
    Author     : satish r
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>


<HTML>
   <head>
<link href="images/favicon.jpg" type="image" rel="icon"/>

<title>Fetching data from database</title>

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

     <script language="javascript">
function check()
{
document.grade.action="./navi.jsp";
document.grade.submit();
}
</script>
        <H1>Fetching Data From a Database</H1>
         <TABLE BORDER="1">
            <TR>
               <TH>Area</TH>
               <TH>City</TH>
               <TH>State</TH>
               <TH>School</TH>
               <TH>bus</TH>
               <Th> Restaurants</Th>
               <th> Attractions </th>
           </TR>
           
        <% 
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=convertToNull","root","sathish");
PreparedStatement pst=conn.prepareStatement("insert into seller values(?,?,?,?,?,?,?)");

            Statement statement = conn.createStatement();  
            //ResultSet resultset = statement.executeQuery("select * from Publishers where pub_id = '" + id + "'") ;
            
            //String state = request.getParameter("state"); 
             String area = request.getParameter("area"); 
           ResultSet rs = statement.executeQuery("select * from seller where area = '" +area + "'"); 
            //ResultSet rs = statement.executeQuery("SELECT area, city, state, school,bus, rest,  atter FROM seller");
           // ResultSet rs = statement.executeQuery("SELECT * FROM seller");
            while(rs.next())
{%>
       <tr>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>
<td><%=rs.getString(10)%></td>

</tr>
<% }%>
</table>
<br><br><input type="submit" value="BACK" style="width:80;height:20;border: 1px solid #0000FF" onClick="history.back()">
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

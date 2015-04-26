<%-- 
    Document   : seller
    Created on : 25 Apr, 2015, 11:07:43 PM
    Author     : Shashikumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
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

      <script type="text/javascript">

// State lists
var states = new Array();

states['Karnataka'] = new Array('Bangalore','Mysore','Mangalore');
states['Tamilnadu'] = new Array('Salem','Chennai','Pondicherry');
states['Andhra Pradesh'] = new Array('Hyderabad','Tirupati','Vizag');


// City lists
var cities = new Array();

cities['Karnataka'] = new Array();
cities['Karnataka']['Bangalore']          = new Array('Malleshwaram','Kormangla');
cities['Karnataka']['Mysore'] = new Array('Kushal nagar','Vasanth nagar');
cities['Karnataka']['Mangalore']          = new Array('Indira nagar','Rajajinagar');

cities['Tamilnadu'] = new Array();
cities['Tamilnadu']['Salem'] = new Array('Anna nagar','Mettur');
cities['Tamilnadu']['Chennai']       = new Array('Subramanya Palya','MGR nagar');
cities['Tamilnadu']['Pondicherry']         = new Array('Lawspet','Brindavan Nagar');

cities['Andhra Pradesh'] = new Array();
cities['Andhra Pradesh']['Hyderabad'] = new Array('Kaziguda','Karim nagar');
cities['Andhra Pradesh']['Tirupati']    = new Array('Ranigunta','Chandragiri');
cities['Andhra Pradesh']['Vizag']   = new Array('Gandhi nagar','Kanlum gudda');


function setStates() {
  cntrySel = document.getElementById('country');
  stateList = states[cntrySel.value];
  changeSelect('state', stateList, stateList);
  setCities();
}

function setCities() {
  cntrySel = document.getElementById('country');
  stateSel = document.getElementById('state');
  cityList = cities[cntrySel.value][stateSel.value];
  changeSelect('city', cityList, cityList);
}

function changeSelect(fieldID, newOptions, newValues) {
  selectField = document.getElementById(fieldID);
  selectField.options.length = 0;
  for (i=0; i<newOptions.length; i++) {
    selectField.options[selectField.length] = new Option(newOptions[i], newValues[i]);
  }
}

function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}

addLoadEvent(function() {
  setStates();
});
</script>
    </head>
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
        <li><a href="about.html">About-Us</a></li>
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
<form action="./sellmaster.jsp" name="grade">
          <br>  <h2 style="color:#A5066D">SELLER DETAILS</h2><br>
        <table border="1">
            <tr> <td> Site Type</td>
                <td>  
                    <select name="sty">
                         <option id="r1" value="rent">Site</option>
  <option id="v1" value="villa">Villa</option>
  <option id="a1" value="villa">Apartment</option>
                    </select>
                </td> 
</tr> 
            <tr> <td> Site No </td>
                <td> <input type="text" name="sno"> </td>
            </tr>
            <tr> <td> Street Name </td>
                <td> <input type="text" name="sstr"> </td>
            </tr>
         
<tr>
<td style="text-align: left;">State</td>
<td style="text-align: left;">
<select name="state" id="country" onchange="setStates();">
  <option value="Karnataka">Karnataka</option>
  <option value="Tamilnadu">Tamilnadu</option>
  <option value="Andhra Pradesh">Andhra Pradesh</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">City</td>
<td style="text-align: left;">
<select name="city" id="state" onchange="setCities();">
  <option value="">Please select a Country</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">Area</td>
<td style="text-align: left;">
<select name="area"  id="city">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>
        
            <td>Near By </td>
            <tr> <td> School </td>
                <td><select name="school">
  <option value="1-2KM">1-2KM</option>
  <option value="3-4km">3-4KM</option>
   <option value="5KM">5KM</option>
                </td> 
            </tr>
            <tr> <td> Bus stand </td>
                <td><select name="bus">
 <option value="1-2KM">1-2KM</option>
  <option value="3-4km">3-4KM</option>
   <option value="5KM">5KM</option>
                </td> 
            </tr>
            <tr> <td> Restaurants</td>
                <td><select name="rest">
 <option value="1-2KM">1-2KM</option>
  <option value="3-4km">3-4KM</option>
   <option value="5KM">5KM</option>
                </td> 
            </tr>
             <tr> <td> Attractions</td>
                <td> <input type="text" name="atter" required="required" > </td>
            </tr>
             
        </table> 
  
   <input type="submit" value="SAVE" style="width: 80; height: 20; border: 1px solid #0000FF">
  
        </form>
 <hr color="grey">
<!-- ####################################################################################################### -->

 <footer>
  <div class="wrapper col6">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved</p>
    <p class="fl_right"> Made by Hunters...</p> 
    <br class="clear" />
  </div>
</div>
</footer> 
</body>
</html>

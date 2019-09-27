<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Dynalight_400.font.js" type="text/javascript"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>
<title>login page</title>
</head>
<body id="page6">
<!--==============================header=================================-->
<header>
  <div class="row-top">
    <div class="main">
      <div class="wrapper">
      <h1><a href="#">CookBook<span>.com</span></a></h1>
        <nav>
          <ul class="menu">
            <li><a href="MyJsp.jsp">Close</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </div>
  <div class="row-bot">
    <div class="row-bot-bg">
      <div class="main">
       <h2>Health requires <span>healthy food!!</span></h2>
      </div>
    </div>
  </div>
</header>
<!--==============================content================================-->
<section id="content">
  <div class="main">
    <div class="wrapper">
      <article class="col-1">
        <div class="indent-left">
     <a href="#"><img class="img-border" src="images/pic-a.jpg" alt="" width="280" height="140"></a>
    <a href="#"><img class="img-border" src="images/pic-b.jpg" alt="" width="280" height="140"></a> 
        </div>
      </article>
      <article class="col-2">
        
     <form action="Login">   
 
    <br />
    <br />
           
    <div style="height: 38px; width: 142px; font-weight: bold; font-size: large; color: #ff3300;
         margin-left: 6cm;">
       <label for="username" >Username:</label> </br>
		<input type="text" name="username" autocomplete = "off"/>
    </div>


    <br />
    <br />
       

    <div style="height: 38px; width: 142px; font-weight: bold; font-size: large; color: #ff3300;
        margin-left: 6cm;">
       <label for="password" >Password:</label> </br>
		<input type="password" name="password" autocomplete = "off" />
    </div>
         
    <br />
    <br />
    <br />
         
    <p>
        <input type="submit" value="Login" style="height: 33px; width: 82px; font-weight: bold;
            font-size: large; color: #f0dea9; background-color: #ff3300; margin-left: 9cm;" />
    </p> 
    


</form>
      </article>
    </div>
  </div>
</section>


    
<!--==============================footer=================================-->
<footer>
  <div class="main">
    <div class="aligncenter"></div>
  </div>
</footer>

</body>
</html>
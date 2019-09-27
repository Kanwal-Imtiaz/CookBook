<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen">
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Dynalight_400.font.js" type="text/javascript"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>
<script>  
var request=new XMLHttpRequest();  
function searchInfo(){  
var name=document.vinform.name.value;  
var url="searchRecipe.jsp?val="+name;  
  
try{  
request.onreadystatechange=function(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('mylocation').innerHTML=val;  
}  
}//end of function  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
</script>  


<link rel="stylesheet" 
  href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">


<title>login page</title>

</head>
<body id="page6">
	<!--==============================header=================================-->
	
	<header>
	<div class="row-top">
		<div class="main">
			<div class="wrapper">
				<h1>
					<a href="#">CookBook<span>.com</span></a>
				</h1>
				<nav>
				<ul class="menu">
					<li><a href="profile.jsp">Home</a></li>
					<li><a href="MyJsp.jsp">Logout</a></li>
				</ul>
				</nav>
			</div>
		</div>
	</div>
	<div class="row-bot">
		<div class="row-bot-bg">
			<div class="main">
				<h2>
					Health requires <span>healthy food!!</span>
				</h2>
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
				<a href="#"><img class="img-border" src="images/pic-a.jpg"
					alt="" width="280" height="140"></a> <a href="#"><img
					class="img-border" src="images/pic-b.jpg" alt="" width="280"
					height="140"></a>
			</div>
			</article>
			<article class="col-2">

			<form action="Search" method="get">

				<br /> <br />

				<div
					style="height: 38px; width: 142px; font-weight: bold; font-size: large; color: #ff3300; margin-left: 3cm;">
					<label for="r_name">Recipe Name:</label> </br> <input type="text" name="name" onkeyup="searchInfo()">  
						<span id="mylocation"></span>  
				</div>
 


				<input type="submit" value="Search" 
					style="height: 33px; width: 82px; font-weight: bold; font-size: large; color: #f0dea9; background-color: #ff3300; margin-left: 8cm;" />

				<br /> <br /> <br />
				

				<ul class="price-list p2">
					<li style="margin-left: 3cm;"><a href="ShowRecipe.jsp">Searched
							Recipe Name</a></li>
				</ul>
				

			</form>
			</article>
		</div>
	</div>
	</section>

<%@ page import="java.sql.*" %>  
<%  
String name=request.getParameter("val");  
if(name==null||name.trim().equals("")){  
out.print("<p>Please enter name!</p>");  
}else{  
try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");  
PreparedStatement ps=con.prepareStatement("select * from emp911 where name like '"+name+"%'");  //place our query here
ResultSet rs=ps.executeQuery();  
  
if(!rs.isBeforeFirst()) {      
 out.println("<p>No Record Found!</p>");   
}else{  
out.print("<table border='1' cellpadding='2' width='100%'>");  
out.print("<tr><th>Id</th><th>Name</th><th>Email</th><th>Address</th><th>City</th><th>State</th><th>Country</th></tr>");  
while(rs.next()){  
out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td>  <td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td>  <td>"+rs.getString(7)+"</td></tr>");  
}  
out.print("</table>");  
}//end of else for rs.isBeforeFirst  
con.close();  
}catch(Exception e){out.print(e);}  
}//end of else  
%>  

	<!--==============================footer=================================-->
	<footer>
	<div class="main">
		<div class="aligncenter"></div>
	</div>
	</footer>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.cookbook.MyBook"%>
<%@ page import="java.util.ArrayList"%>
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
<title>My Book page</title>
<script type="text/javascript">
	$(document).ready(function() {
		$('#slider').bxSlider({
			pager : true,
			controls : false,
			moveSlideQty : 1,
			displaySlideQty : 3
		});
	});
</script>
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



				<img class="img-border" src="images/food5.jpg" alt="" width="280"
					height="140"> <img class="img-border" src="images/pic-a.jpg"
					alt="" width="280" height="140"> <img class="img-border"
					src="images/food2.jpg" alt="" width="280" height="140"> <img
					class="img-border" src="images/food3.jpg" alt="" width="280"
					height="140"> <img class="img-border" src="images/pic-b.jpg"
					alt="" width="280" height="140"> <img class="img-border"
					src="images/food1.jpg" alt="" width="280" height="140"> <img
					class="img-border" src="images/food7.jpg" alt="" width="280"
					height="140"> <img class="img-border" src="images/picx.jpg"
					alt="" width="280" height="140"> <img class="img-border"
					src="images/food6.jpg" alt="" width="280" height="140">
			</div>
			</article>
			<article class="col-2">
			<h3>Recipes</h3>
			<ul class="price-list p2">
			
			
				<%
 					MyBook r= new MyBook();
			        ArrayList<MyBook> recipeList = r.getRecipesFromDB();
				%>





				<% for(int i = 0; i < recipeList.size(); i+=1) { %>
				<li><span> <a style="color: #b3e67f"
						onMouseOver="this.style.color='#ff3300'"
						onmouseout="this.style.color='#b3e67f'" href="#">Remove from MyBook</a>
				</span><a href="ShowRecipe.jsp"><%= recipeList.get(i).getRecipe_name() %></a></li>
				<% } %>
			
			
				
				
				
			</ul>


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
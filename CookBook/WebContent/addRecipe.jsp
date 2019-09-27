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
<title>Add recipe page</title>
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
      
    <br />
    <br />     
    <br />
    <br />
     <br />
        
        <form action="AddRecipe">   
    
       <input type='file' name="url" id="url" />
         <img id="myImg" src="#" alt="your image" width="380" height="240" />
      
      <br />
     <br />
       <div style="height: 38px; width: 142px; font-weight: bold; font-size: large; color: #ff3300;
         margin-left: 0cm;">
       <label for="img_url" >Image url:</label> </br>
		<input type="text" id="img_url" name="img_url" autocomplete = "off"/>
    </div>
      
      </article>
      <article class="col-2">
        
     
    <br />
    <br />
           
    <div style="height: 38px; width: 142px; font-weight: bold; font-size: large; color: #ff3300;
         margin-left: 6cm;">
       <label for="r_name" >Recipe Name:</label> </br>
		<input type="text" name="r_name" autocomplete = "off"/>
    </div>


    <br />
       
    <div style="height: 38px; width: 142px; font-weight: bold; font-size: large; color: #ff3300;
        margin-left: 6cm;">
       <label for="recipe" >Recipe:</label> </br>
		<textarea rows="35" cols="50" name="recipe" autocomplete = "off" form="AddRecipe">
         </textarea>
		
    </div>
         
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
     <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
         
    <p>
        <input type="submit" value="Add Recipe" style="height: 33px; width: 120px; font-weight: bold;
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
<script type="text/javascript">
$(function () {
    $(":file").change(function () {
        if (this.files && this.files[0]) {
            var reader = new FileReader();
            reader.onload = imageIsLoaded;
            reader.readAsDataURL(this.files[0]);
            var filename = document.getElementById('url').value;
            if (filename.substring(3,11) == 'fakepath' )    { 
                filename = filename.substring(12); 
            }// remove c:\fake at beginning from localhost chrome
            document.getElementById('img_url').value=filename;
            //alert(filename);
        }
    });
});

function imageIsLoaded(e) {
    $('#myImg').attr('src', e.target.result);
};
</script>

</body>
</html>
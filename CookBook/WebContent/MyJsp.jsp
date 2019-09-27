<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CookBook</title>
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">

<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Dynalight_400.font.js" type="text/javascript"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>
<script src="js/tms-0.3.js" type="text/javascript"></script>
<script src="js/tms_presets.js" type="text/javascript"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
<script src="js/jquery.equalheights.js" type="text/javascript"></script>
<!--[if lt IE 9]><script type="text/javascript" src="js/html5.js"></script><![endif]-->

</head>
<body id="page1">
<!--==============================header=================================-->
<header>
  <div class="row-top">
    <div class="main">
      <div class="wrapper">
        <h1><a href="#">CookBook<span>.com</span></a></h1>
        <nav>
          <ul class="menu">
            <li><a href="login.jsp">Login </a></li>
            <li><a href="signUp.jsp">SignUp</a></li>
            
          </ul>
        </nav>
      </div>
    </div>
  </div>
  <div class="row-bot">
    <div class="row-bot-bg">
      <div class="main">
        <h2>Health requires <span>healthy food!!</span></h2>
        <div class="slider-wrapper">
          <div class="slider">
            <ul class="items" >
              <li> <img src="images/slider-img1.jpg" alt="" /> </li>
              <li> <img src="images/slider-img2.jpg" alt="" /> </li>
              <li> <img src="images/slider-img3.jpg" alt="" /> </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>

<!--==============================content================================-->
<section id="content">
  <div class="main">
    <div class="wrapper img-indent-bot">
      <article class="col-1"> <a href="#"><img class="img-border" src="images/pic-a.jpg" alt="" width="280" height="140"></a> </article>
      <article class="col-1"> <a href="#"><img class="img-border" src="images/pic-b.jpg" alt="" width="280" height="140"></a> </article>
      <article class="col-2"> <a href="#"><img class="img-border" src="images/picx.jpg" alt="" width="280" height="140"></a> </article>
    </div>
    </div>
    </section>
    
<!--==============================footer=================================-->
<footer>
  <div class="main">
    <div class="aligncenter"></div>
  </div>
</footer>
<script type="text/javascript">Cufon.now();</script>
<script type="text/javascript">
$(window).load(function () {
    $('.slider')._TMS({
        duration: 1000,
        easing: 'easeOutQuint',
        preset: 'slideDown',
        slideshow: 7000,
        banners: false,
        pauseOnHover: true,
        pagination: true,
        pagNums: false
    });
});
</script>

</body>
</html>
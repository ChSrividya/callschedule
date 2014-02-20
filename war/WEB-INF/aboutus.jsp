<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.util.List" %>
    <%@page import="com.ex.cs.callschedule" %>
<!DOCTYPE html>
<html lang="en">
 
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	/* $('.carousel').carousel('cycle'); */
	/* $('.carousel').carousel({interval:2000}); */ 
	$("#myCarousel").carousel();
})();


</script>
</head>
<body>
<div class="container">
<div class="row">
<div class="span6 well">
<div id="myCarousel" class="carousel slide" data-interval="60">

<div class="carousel-inner" >



<div class="active item" ><img src="ms.png"></div>
<div class="item"><img src="csthree.jpg"></div>
<!-- <div class="item"><img src="cs.jpg" style="width:1250px;height:362px;"></div> -->


</div>

<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>

</div>


</div>
</div>
</div>



<script src="js/carousel.js"></script>

</body>
</html>
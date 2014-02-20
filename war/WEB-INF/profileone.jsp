<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List" %>
    <%@page import="com.ex.cs.callschedule" %>
  <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.ico">

   
    
    
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sigin.css" rel="stylesheet">
    

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
  </head>

  <body style="background-color:white;">

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background-color:#428bca;">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><b><span style="color:white">WELCOME SCHEDULER!!!</span></b></a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav pull-right">
           
             
           
             <li class="logout"><a href="login.html"><b><span style="color:white">LOGOUT</span></b></a></li>
             
          </ul>
        </div><!--/.nav-collapse -->
        
      </div>
    </div>
  
    <br>
    <br>
    <br>

    <div class="container">
  <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title" align="center"><b>Schedule Call Here</b></h3>
			 	</div>
			  	<div class="panel-body">
      <form class="form-signin" name="formone" action="schedule.html" method="post">
      
   <%--  <div class="form-group">
      <label >Select Staff:</label>
        <%
 
		if(request.getAttribute("customer")!=null){
 
			List<callschedule> call = 
                           (List<callschedule>)request.getAttribute("customer");
 
			if(!call.isEmpty()){%>
				<select class="form-control" name="name">
			<%  for(callschedule c : call){
 
		%>
	
     <!--  <input type="text"  name="name" id="name" class="form-control" placeholder="Enter Name" required autofocus> -->
      
      
      <option ><%=c.getName()%></option>
     

      <%}%>
			</select> <%}} %>
			</div>
    --%>
   
     
      
    <!-- <div class="form-group"> -->
   <!--  <label >Select Service:</label>
      <label for="Select Service">Select Service</label>
      <select  class="form-control" name="service">
        <option value="-1"><b>SELECT</b></option>
        <option value="apollo"><b>APOLLO</b></option>
        <option value="medwin"><b>MEDWIN</b></option>
       
        </select> -->
        <div class="form-group">
        <label>Select Name:</label>
         <%
 
		if(request.getAttribute("customerone")!=null){
 
			List<callschedule> call = 
                           (List<callschedule>)request.getAttribute("customerone");
 
			if(!call.isEmpty()){%>
				<select class="form-control" name="name">
			<%  for(callschedule c : call){
 
		%>
	
     <!--  <input type="text"  name="name" id="name" class="form-control" placeholder="Enter Name" required autofocus> -->
      
      
      <option><%=c.getName() %></option>
     

      <%}%>
			</select> <%}} %>
			</div>
			
			
			<div>
      <label >Select Service:</label>
        <%
 
		if(request.getAttribute("customerone")!=null){
 
			List<callschedule> call = 
                           (List<callschedule>)request.getAttribute("customerone");
 
			if(!call.isEmpty()){%>
				<select class="form-control" name="service">
			<%  for(callschedule c : call){
 
		%>
	
     <!--  <input type="text"  name="name" id="name" class="form-control" placeholder="Enter Name" required autofocus> -->
      
      
      <option ><%=c.getService() %></option>
     

      <%}%>
			</select> <%}} %>
			</div>
			<br/>
			<div>
      <label >Select Date:</label>
        <%
 
		if(request.getAttribute("customerone")!=null){
 
			List<callschedule> call = 
                           (List<callschedule>)request.getAttribute("customerone");
 
			if(!call.isEmpty()){%>
				<select class="form-control" name="dateone">
			<%  for(callschedule c : call){
 
		%>
	
     <!--  <input type="text"  name="name" id="name" class="form-control" placeholder="Enter Name" required autofocus> -->
      
      
      <option ><%=c.getDate() %></option>
     

      <%}%>
			</select> <%}} %>
			</div>
			
			
        
    <!-- <div class="form-group">
      <label >Enter Date:</label>
      <input type="date"   name="dateone" class="form-control" placeholder="Enter Date"> 
    </div>
  -->
    <br/>
    <br/>
    
    <button type="submit" class="btn btn-primary" >Submit</button>
 
   
      </form>
	

    </div> 
 
    </div>
    </div>
    </div>
 
    


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
  </body>
</html>
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
   
   
    
    
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sigin.css" rel="stylesheet">
    

   
  </head>

  <body style="background-color:white;">

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background-color:#428bca;">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="#"><b><span style="color:white">WELCOME SCHEDULER!!!</span></b></a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav pull-right">
           
             
           
             <li class="logout"><a href="login.html"><b><span style="color:white">LOGOUT</span></b></a></li>
             
          </ul>
        </div><!--/.nav-collapse -->
        
      </div>
    </div>
      <!-- <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar" >
          <ul class="nav nav-sidebar">
          <br>
          <br>
          <h7><B>HOSPITALITY SERVICES</B></h7>
          <br>
          <br>
            <li class="active"><a href="apollo.html"><b>APOLLO</b></a></li>
            <br>
            <li><a href="medwin.html"><b>MEDWIN</b></a></li>
            <br>
            <li><a href="care.html"><b>CARE</b></a></li>
            <br>
            <li><a href="sunshine.html"><b>SUNSHINE</b></a></li>
            <br>
          </ul>
          
        </div>      
        <br>                      
           <br>  
              <br>  
                 <br>  -->      
                  <div>
          <ul class="thumbnails">
          <li class="span5">
          <div class="thumbnail" style="width:250px;height:825px;margin-left:-38px;margin-top:-5px;">
         <ul class="nav nav-pills nav-stacked">
      <img src="hsptl.jpg" style="margin-left:27px">
         <BR>
         
       <li class="active"><a href="apollo.html"><b>APOLLO</b></a></li>
          <br>
            <li class="active"><a href="medwin.html"><b>MEDWIN</b></a></li>
           <br>
            <li class="active"><a href="care.html"><b>CARE</b></a></li>
           <br>
            <li class="active"><a href="sunshine.html"><b>SUNSHINE</b></a></li>
          </ul>
          
          </div>
          </li>
          </ul>
          </div>
             <div class="container" >
                        <div class="row feature_wrapper">
                <!-- Features Row -->
                <div class="features_op1_row">
                    <!-- Feature -->
                  
                    <div class="col-sm-4 feature first" style="margin-top:-830px;margin-left:350px;">
                        <div class="img_box">
                            <a href="apollo.html">
                           
                               <center><img src="apollo.jpg" class="img-circle" width="130px" height="130px"></center>
                              
                               
                            </a>
                        </div>
                        <div class="text" style="text-align:center">
                            <!-- <h6>Responsive theme</h6>
                            <p>
                                There are many variations of passages of generators on the  embarrassing hidden in   content here making it look like.
                            </p> -->
                             
                             <h6>Email: MyEmail@servidor.com</h6>
                             
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>                    
    <div class="container" style="margin-left:20px;">
  <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default" style="margin-top:-665px;margin-left:-10px;margin-right:6px;">
			  	<div class="panel-heading">
			    	<h3 class="panel-title" align="center"><b>Schedule Call Here</b></h3>
			 	</div>
			  	<div class="panel-body">
      <form class="form-signin" name="formone" action="apolloone.html" method="post">
      
    <div class="form-group">
      <label >Select Staff:</label>
        <%
 
		if(request.getAttribute("customerone")!=null){
 
			List<callschedule> call = 
                           (List<callschedule>)request.getAttribute("customerone");
 
			if(!call.isEmpty()){%>
				<select class="form-control" name="name">
			<%  for(callschedule c : call){
 
		%>
	
     <!--  <input type="text"  name="name" id="name" class="form-control" placeholder="Enter Name" required autofocus> -->
      
      
      <option ><%=c.getName()%></option>
     

      <%}%>
			</select> <%}} %>
			</div>
   
   
     

    
    <button type="submit" class="btn btn-primary" >Submit</button>
 
   
      </form>
	

    </div> 
 
    </div>
    </div>
    </div>
 </div>

 
 
 
 

  


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
  </body>
</html>
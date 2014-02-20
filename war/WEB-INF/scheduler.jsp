
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

  <body style="background-color:white">

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background-color:#428bca;">
      <div class="container">
        <div class="navbar-header">
          
          <a class="navbar-brand" href="#"><b><span style="color:white">WELCOME SCHEDULER!!!</span></b></a>
        </div>
        <div class="collapse navbar-collapse pull-right">
          <ul class="nav navbar-nav">
           
             
           
             <li class="logout"><a href="login.html"><b><span style="color:white">LOGOUT</span></b></a></li>
             
          </ul>
        </div><!--/.nav-collapse -->
        
      </div>
    </div>
    
         <div>
          <ul class="thumbnails">
          <li class="span5">
          <div class="thumbnail" style="width:250px;height:825px;margin-left:-38px;margin-top:-5px;">
         <ul class="nav nav-pills nav-stacked">
      <img src="hsptl.jpg" class="img-circle" style="margin-left:27px">
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
    <div id="showcase">
        <div class="container" >
                        <div class="row feature_wrapper">
                <!-- Features Row -->
                <div class="features_op1_row">
                    <!-- Feature -->
                  
                    <div class="col-sm-4 feature first" style="margin-top:-760px;margin-left:260px;">
                        <div class="img_box">
                            <a href="apollo.html">
                           
                               <center><img src="apollo.jpg" class="img-circle" width="150px" height="150px"></center>
                              
                               
                            </a>
                        </div>
                        <div class="text" style="text-align:center">
                            <!-- <h6>Responsive theme</h6>
                            <p>
                                There are many variations of passages of generators on the  embarrassing hidden in   content here making it look like.
                            </p> -->
                             <h3><b>APOLLO</b></h3>
                             <h6>Dilsukhnagar</h6>
                             <h6>Hyderabad</h6>
                             <h6>Old: 1 Year</h6>
                             <h6><a href="#">More... </a></h6>
                        </div>
                    </div>
             
                    <!-- Feature -->
                    <div class="col-sm-4 feature" style="margin-top:-760px;margin-left:740px;">
                        <div class="img_box">
                            <a href="medwin.html">
                                <center><img src="medwinone.jpg" class="img-circle" width="150px" height="150px"></center>
                                
                            </a>
                        </div>
                        <div class="text" style="text-align:center">
                            <h3><b>MEDWIN</b></h3>
                             <h6>Ameerpet</h6>
                             <h6>Hyderabad</h6>
                             <h6>Old: 1 Year</h6>
                             <h6><a href="#">More... </a></h6>
                        </div>
                    </div>
                    <!-- Feature -->
                     <div class="col-sm-4 feature last" style="margin-top:-420px;margin-left:260px;">
                        <div class="img_box">
                            <a href="care.html">
                             <center><img src="care.jpg" class="img-circle" width="150px" height="150px"></center>   
                                
                            </a>
                        </div>
                        <div class="text" style="text-align:center">
                            <h3><b>CARE</b></h3>
                             <h6>Kukatpally</h6>
                             <h6>Hyderabad</h6>
                             <h6>Old: 1 Year</h6>
                             <h6><a href="#">More... </a></h6>
                        </div>
                    </div>
                    <!-- Feature -->
                     <div class="col-sm-4 feature last" style="margin-top:-420px;margin-left:740px;">
                        <div class="img_box">
                            <a href="sunshine.html">
                             <center>  <img src="sunshine.jpg" class="img-circle" width="150px" height="150px"></center> 
                                
                            </a>
                        </div>
                        <div class="text" style="text-align:center">
                          <h3><b>SUNSHINE</b></h3>
                             <h6>Dilsukhnagar</h6>
                             <h6>Hyderabad</h6>
                             <h6>Old: 1 Year</h6>
                             <h6><a href="#">More... </a></h6>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
      
   
   
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>


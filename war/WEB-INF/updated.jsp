<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%--     pageEncoding="ISO-8859-1"%> --%>
 
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
<!-- <form action="../update.html" method="POST"> -->
<!-- <table cellpadding="2" width="20%" bgcolor="whitesmoke" align="center" cellspacing="2" align="center"> -->

<!-- <tr> -->
<!-- <td>Name:</td> -->
<%-- <td><input type="text" name="name" id="name" size="20" value=<%=c.getName() %>></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<!-- <td>mobile:</td> -->
<%-- <td><input type="text" name="mobile"  size="20" value=<%=c.getMobile() %>></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<!-- <td>Email:</td> -->
<%-- <td><input type="text" name="email"  size="20" value=<%=c.getEmail() %>></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<!-- <td>FromTime:</td> -->
<%-- <td><input type="text" name="fromtime"  size="20" value=<%=c.getFromTime() %>></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<!-- <td>ToTime:</td> -->
<%-- <td><input type="text" name="totime"  size="20" value=<%=c.getToTime() %>></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<!-- <td>Date:</td> -->
<%-- <td><input type="text" name="date"  size="20" value=<%=c.getDate() %>></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<!-- <td colspan="2" align="center"><input type="submit" value="UPDATE" ></td> -->
<!-- </tr> -->

<!-- </table> -->
<!-- </form> -->
<!-- </body> -->
<!-- </html> -->
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
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

   
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/sigin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
   <script type="text/javascript">
   function func()
   {
	  
	   if(document.formone.mobile.value.length != 10)
		   {
		   window.alert("Mobile Number cannot be less than 10 digits")
		   document.formone.mobile.focus();
		   return false;
		   
		   }
   }
  </script>
  </head>
<%
 
 		if(request.getAttribute("disp")!=null){ 
 
			List<callschedule> calls = (List<callschedule>)request.getAttribute("disp"); 
 
		if(!calls.isEmpty()){ 
  				 for(callschedule c : calls){
 
		%>
  <body style="background-color:whitesmoke;">
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background-color:#428bca;">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><b><span style="color:white">WELCOME ADMIN!!!</span></b></a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav pull-right">
            <li class="active"><a href="../pf.html" style="background-color:#428bca;"><b><span style="color:white">CREATE SCHEDULE</span></b></a></li>
             <li class="active"><a href="../eschedule.html" style="background-color:#428bca;"><b><span style="color:white">DELETE SCHEDULE</span></b></a></li>
           
             <li class="logout"><a href="../login.html" style="background-color:#428bca;"><b><span style="color:white">LOGOUT</span></b></a></li>
             
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
			    	<h3 class="panel-title" align="center"><b>Update Staff Here</b></h3>
			 	</div>
			  	<div class="panel-body">
      <form class="form-signin" role="form" action="../update.html" method="POST" name="formone">
       
       
    <div class="form-group">
      <label >Name:</label>
      <input type="text"  name="name" id="name" value=<%=c.getName() %> class="form-control" placeholder="Name" required autofocus>
    </div>
    <div class="form-group">
      <label > Email:</label>
      <input type="text"   name="email" id="email" class="form-control" placeholder="Email" value=<%=c.getEmail() %> required autofocus>
    </div>
    <div class="form-group">
      <label for="disabledTextInput">Mobile:</label>
      <input type="text"  class="form-control"  id="mobile" name="mobile"  size="20" value=<%=c.getMobile() %> placeholder="Mobile" required autofocus>
    </div>
    
    <div class="form-group">
      <label >Date:</label>
      <input type="text"   name="date" class="form-control" placeholder="Date" value=<%=c.getDate() %> required autofocus>
    </div>
    <div class="form-group">
      <label>Reserved From Time:</label>
      <input type="text" name="fromtime"  value=<%=c.getFromTime() %> class="form-control" placeholder=" RESERVED FROM" required autofocus>
    </div>
    <div class="form-group">
      <label>Reserved To Time:</label>
      <input type="text"   name="totime"  size="20" value=<%=c.getToTime() %> class="form-control" placeholder="RESERVED TO" required autofocus>
    </div>

    
    <button type="submit" class="btn btn-primary" onClick="return func()">UPDATE</button>

      </form>
	
    </div> <!-- /container -->
    </div>
    </div>
    </div>
    </div>
    
  


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
  <%
  				 }
		}
 		}
  
  %>
  </html>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
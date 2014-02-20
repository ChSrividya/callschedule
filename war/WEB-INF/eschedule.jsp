<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List" %>
    <%@page import="com.ex.cs.callschedule" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="eschedule" method="POST">
<table cellpadding="2" width="30%" bgcolor="whitesmoke" align="center" cellspacing="2" align="center">
<thead>
<tr>
<td><b>Name</b></td>
<td><b>Service</b></td>
<td><b>Mobile</b></td>
<td><b>Email</b></td>
<td><b>Date</b></td>
<td><b>Reserved From</b></td>
<td><b>Reserved To</b></td>
</tr>
</thead>
<%
 
		if(request.getAttribute("cust")!=null){
 
			List<callschedule> calls = 
                           (List<callschedule>)request.getAttribute("cust");
 
			if(!calls.isEmpty()){
				 for(callschedule c : calls){
 
		%>
<tr>
<td><input type="text" name="name" value=<%=c.getName() %>></td>

<td><input type="text" name="service" value=<%=c.getService() %>> </td>
<td><input type="text" name="mobile" value=<%=c.getMobile() %>></td>
<td><input type="text" name="email" value=<%=c.getEmail() %> ></td>

<td><input type="text" name="date" value=<%=c.getDate() %> ></td>

<td><input type="text" name="reservedfrom" value=<%=c.getFromTime() %> > </td>
<td><input type="text" name="reservedto" value=<%=c.getToTime() %> ></td>
<td><input type="hidden" name="hidden" value=<%=c.getDate() %> > </td>
<td><a href="update/<%=c.getDate()%>.html">UPDATE</a></td>
<td><a href="delete/<%=c.getDate() %>.html">DELETE</a></td>
</tr>
<% 
} 
				 } 
			} 
			%>

</table>
</form>
</body>
</html> --%>
<%@page import="java.util.List" %>
<%@page import="com.ex.cs.callschedule" %>
<!DOCTYPE html>   
<html lang="en">   
<head>   
 

<meta name="description" content="Creating a Zebra table with Twitter Bootstrap. Learn with example of a Zebra Table with Twitter Bootstrap.">  
<link href="css/bootstrap.css" rel="stylesheet">   
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
        <div class="collapse navbar-collapse" >
          <ul class="nav navbar-nav pull-right" >
           
             <li class="active"><a href="eschedule.html" style="background-color:#428bca;" ><b><span style="color:white">EDIT SCHEDULE</span></b></a></li>
              <li class="active"><a href="pf.html" style="background-color:#428bca;" ><b><span style="color:white">CREATE SCHEDULE</span></b></a></li>
             <li class="logout"><a href="login.html" style="background-color:#428bca;" ><b><span style="color:white">LOGOUT</span></b></a></li>
             
             
          </ul>
        </div><!--/.nav-collapse -->
        
      </div>
    </div>
    <br>
    <br>
    <br>
<form action="eschedule" method="POST">
<table class="table table-striped"  >  
        <thead>  
       
          <tr>  
            <th style="color:#428bca;">Name</th>  
            <th style="color:#428bca;">Service</th>  
            <th style="color:#428bca;">Mobile</th>  
            <th style="color:#428bca;">Email</th>  
            <th style="color:#428bca;">Date</th>  
            <th style="color:#428bca;">Reserved From</th>  
            <th style="color:#428bca;">Reserved To</th>  
          </tr>  
        </thead>  
         <%
 
		if(request.getAttribute("cust")!=null){
 
			List<callschedule> calls = 
                           (List<callschedule>)request.getAttribute("cust");
 
			if(!calls.isEmpty()){
				 for(callschedule c : calls){
 
		%>
        <tbody>  
          <tr>  
<td><input type="text" name="name" value=<%=c.getName() %>></td>

<td><input type="text" name="service" value=<%=c.getService() %>> </td>
<td><input type="text" name="mobile" value=<%=c.getMobile() %>></td>
<td><input type="text" name="email" value=<%=c.getEmail() %> ></td>

<td><input type="text" name="date" value=<%=c.getDate() %> ></td>

<td><input type="text" name="reservedfrom" value=<%=c.getFromTime() %> > </td>
<td><input type="text" name="reservedto" value=<%=c.getToTime() %> ></td>
<td><input type="hidden" name="hidden" value=<%=c.getDate() %> > </td>
<td><a href="update/<%=c.getDate()%>.html">UPDATE</a></td>
<td><a href="delete/<%=c.getDate() %>.html">DELETE</a></td>
          </tr>  

      </tbody> 
                <% 
} 
				 } 
			} 
			%> 
      </table>  
      </form>
      
</body>  
</html>  

















  



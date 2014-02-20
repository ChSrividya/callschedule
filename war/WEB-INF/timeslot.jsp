<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
    <%@ page import="com.ex.cs.callschedule" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function func()
{
	/* alert("plz"); */
	 var mytime=new Array();
	 
	var ff=document.formone.ft.value;
	 var tt=document.formone.tt.value;
		mytime[1]=document.formone.name1.value;
		mytime[2]=document.formone.name2.value;
		mytime[3]=document.formone.name3.value;
		mytime[4]=document.formone.name4.value;
		mytime[5]=document.formone.name5.value;
		mytime[6]=document.formone.name6.value;
		mytime[7]=document.formone.name7.value;
		mytime[8]=document.formone.name8.value;
		mytime[9]=document.formone.name9.value; 
		
		for(var i=0;i<10;i++)
			{
			if(ff==mytime[i])
				{
				for(var j=i;j<9;j++)
					{
					document.getElementById("name"+j).style.backgroundColor="red";
					if(tt == mytime[j])
			           {
					break;
						}
					}
					
					}
				
				
				}
			
			
			
			}
		</script>
</head>
<body>
<%
		if(request.getAttribute("customer")!=null){
 
			List<callschedule> calls = (List<callschedule>)request.getAttribute("customer");
			System.out.println(calls);
 
			if(!calls.isEmpty()){
				 for(callschedule c : calls){
					 String ft=c.getFromTime();
					 String tt=c.getToTime();
					 System.out.println(ft);
					 System.out.println(tt);
					
						
%>
	
		<form name="formone">
    <table border="2" cellpadding="2" width="20%" bgcolor="whitesmoke" cellspacing="2" align="left" >
		<thead>
			<tr>
			<td><b><%=c.getName()%>&nbsp; &nbsp;<%=c.getDate() %></b></td>
		    </tr>
		</thead>
<tr>
<td><input type="text" name="name1" id="name1" value="10AM"></td>
		</tr>
		<tr>
		<td><input type="text" name="name2" id="name2" value="11AM"></td>
		<tr>
		<td><input type="text" name="name3" value="12AM" id="name3"></td>
		</tr>
		<tr>
		<td><input type="text" name="name4" value="1PM" id="name4"></td>
		</tr>
		<tr>
		<td><input type="text" name="name5" value="2PM" id="name5"></td>
		</tr>
		<tr>
		<td><input type="text" name="name6" value="3PM" id="name6"></td>
		</tr>
		<tr>
		<td><input type="text" name="name7" value="4PM" id="name7"></td>
		</tr>
		<tr>
		<td><input type="text" name="name8" value="5PM" id="name8"></td>
		</tr>
		<tr>
	<td><input type="text" name="name9" value="6PM" id="name9"></td>
	</tr>
	<tr>
	<td><input type="text" name="ft" value="<%=c.getFromTime() %>"></td>
	</tr>
	<tr>
	<td><input type="text" name="tt" value="<%=c.getToTime() %>"></td>
	</tr>
	
	<tr>
	<td><input type="button" onClick="func()" value="Check Availability"></td>
	</tr> 
	
		
		
		

</table>

</form>
<%
 }
			}
			}
%>
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
    <script type="text/javascript">
function func()
{
	/* alert("plz"); */
	 var mytime=new Array();
	 
	var ff=document.formone.ft.value;
	 var tt=document.formone.tt.value;
		mytime[1]=document.formone.name1.value;
		mytime[2]=document.formone.name2.value;
		mytime[3]=document.formone.name3.value;
		mytime[4]=document.formone.name4.value;
		mytime[5]=document.formone.name5.value;
		mytime[6]=document.formone.name6.value;
		mytime[7]=document.formone.name7.value;
		mytime[8]=document.formone.name8.value;
		mytime[9]=document.formone.name9.value; 
		
		for(var i=0;i<10;i++)
			{
			if(ff==mytime[i])
				{
				for(var j=i;j<9;j++)
					{
					document.getElementById("name"+j).style.backgroundColor="lightblue";
					if(tt == mytime[j])
			           {
					break;
						}
					}
					
					}
				
				
				}
			
			
			
			}
		</script>
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
          <a class="navbar-brand" href="#"><b><span style="color:white;">WELCOME SCHEDULER!!!</span></b></a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav pull-right">            
         
             <li class="logout"><a href="login.html"><b><span style="color:white;">LOGOUT</span></b></a></li>         
           </ul>
        </div><!--/.nav-collapse -->
        
      </div>
    </div>
    <br>
    <br>
    <br> 	
    <form   name="formone">
<table class="table table-striped"  >  
     <%
		if(request.getAttribute("customer")!=null){
 
			List<callschedule> calls = (List<callschedule>)request.getAttribute("customer");
			System.out.println(calls);
 
			if(!calls.isEmpty()){
				 for(callschedule c : calls){
					 String ft=c.getFromTime();
					 String tt=c.getToTime();
					 System.out.println(ft);
					 System.out.println(tt);
					
						
%>
        <thead>  
         <tr>  
            
            <th><h4><b><span style="color:#428bca;margin-left:20px;"><%=c.getName()%></span><br/><span style="color:#428bca;margin-left:20px;"><%=c.getDate() %></span></b></h4></th>
          </tr>  
        </thead>  
     
          <tbody>  
          <tr>  
<td><input type="text" name="name1" id="name1" value="10AM"></td>
</tr>
<tr>
<td><input type="text" name="name2" id="name2" value="11AM"></td>
</tr>
<tr>
<td><input type="text" name="name3" id="name3" value="12AM"></td>
</tr>
<tr>
<td><input type="text" name="name4" id="name4" value="1PM"></td>
</tr>
<tr>
<td><input type="text" name="name5" id="name5" value="2PM"></td>
</tr>
<tr>
<td><input type="text" name="name6" id="name6" value="3PM"></td>
</tr>
<tr>
<td><input type="text" name="name7" id="name7" value="4PM"></td>
</tr>
<tr>
<td><input type="text" name="name8" id="name8" value="5PM"></td>
</tr>
 <tr>
<td><input type="text" name="name9" id="name9" value="6PM"></td>
</tr>
 <tr>
	<td><input type="hidden" name="ft" value="<%=c.getFromTime() %>"></td>
	</tr>
	<tr>
	<td><input type="hidden" name="tt" value="<%=c.getToTime() %>"></td>
	</tr>
	
	<tr>
	<td><input type="button" onClick="func()" value="Check Availability"></td>
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
        
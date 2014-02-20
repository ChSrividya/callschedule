<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sigin.css" rel="stylesheet">



   
    
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

  </head>

  <body>

    <div class="container">

      <form class="form-signin" name="formone" action="pf.html" method="post">
       
    <div class="form-group">
      <label >Enter Name:</label>
      <input type="text"  name="name" id="name" class="form-control" placeholder="Enter Name" required autofocus>
    </div>
    <div class="form-group">
      <label >Enter Email:</label>
      <input type="email"   name="email" id="email" class="form-control" placeholder="Enter Email" required autofocus>
    </div>
    <div class="form-group">
      <label for="disabledTextInput">Enter Mobile:</label>
      <input type="tel"  class="form-control" name="mobile" id="mobile" placeholder="Enter Mobile" required autofocus>
    </div>
    <div class="form-group">
      <label for="Select Service">Select Service</label>
      <select  class="form-control" name="service">
      <option value="-1">Select</option>
        <option value="APOLLO">APOLLO</option>
        <option value="MEDWIN">MEDWIN</option>
        
      </select>
    </div>
    <div class="form-group">
      <label >Enter Date:</label>
      <input type="date"   name="date1" class="form-control" placeholder="Enter Date">
    </div>
    <div class="form-group">
      <label for="Select Reserved From">Reserved From:</label>
      <select  class="form-control" name="reservedfromtime1">
        <option value="-1">Select</option>
<option value="9AM">09AM</option>
<option value="10AM">10AM</option>
<option value="11AM">11AM</option>
<option value="12AM">12AM</option>
<option value="1PM">01PM</option>
<option value="2PM">02PM</option>
<option value="3PM">03PM</option>
<option value="4PM">04PM</option>
<option value="5PM">05PM</option>
</select>
 </div>
<div class="form-group">
<label for="Select Reserved To">Reserved To:</label>
<select  class="form-control" name="reservedtotime1">
<option value="-1">Select</option>
<option value="10AM">10AM</option>
<option value="11AM">11AM</option>
<option value="12AM">12AM</option>
<option value="1PM">01PM</option>
<option value="2PM">02PM</option>
<option value="3PM">03PM</option>
<option value="4PM">04PM</option>
<option value="5PM">05PM</option>
<option value="6PM">06PM</option>
</select>
</div>
    
   <!--  <input type="submit" class="btn btn-primary" align="center"></button> -->
     <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>

      </form>
	
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
  </html> --%>
  
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
<script type="text/javascript">
function func()
{
var mbl=document.formone.mobile.value;

 if(  isNaN(mbl)  ) 
		{
		window.alert( "Please provide a Mobile No in Numbers" );
		document.formone.mobile.focus() ; 	
		return false; 
	} 
	 else if(document.formone.mobile.value.length != 10)
			{
			window.alert("please provide Mobile No length of 10");
			document.formone.mobile.focus(); 	
			return false; 
			} 
		else if(document.formone.service.value == -1)
			{
			
			window.alert("please provide service");
			document.formone.service.focus(); 	
			return false; 
			}
		else if(document.formone.reservedfromtime1.value == -1)
			{
			window.alert("please provide from time");
			document.formone.reservedfromtime1.focus(); 	
			return false;
			}
		else if(document.formone.reservedtotime1.value == -1)
		{
		window.alert("please provide to time");
		document.formone.reservedtotime1.focus(); 	
		return false;
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
         <a class="navbar-brand" href="#" class="active"><b> <strong><span style="color:white">WELCOME ADMIN!!!</span></strong></b></a> 
         
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav pull-right">
           
             <li ><a href="eschedule.html"><b><span style="color:white;"> EDIT SCHEDULE</span></b></a></li>
           
             <li class="logout "><a href="login.html"><b><span style="color:white;"> LOGOUT</span></b></a></li>
             
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
			    	<h3 class="panel-title" align="center"><b>Please Register Staff Here</b></h3>
			 	</div>
			  	<div class="panel-body">
      <form class="form-signin" name="formone" action="pf.html" method="post">
    <div class="form-group">
      <label >Enter Name:</label>
      <input type="text"  name="name" id="name" class="form-control" placeholder="Enter Name" required autofocus>
    </div>
    <div class="form-group">
      <label >Enter Email:</label>
      <input type="email"   name="email" id="email" class="form-control" placeholder="Enter Email" required autofocus>
    </div>
    <div class="form-group">
      <label for="disabledTextInput">Enter Mobile:</label>
      <input type="tel"  class="form-control" name="mobile" id="mobile" placeholder="Enter Mobile" required autofocus>
    </div>
    <div class="form-group">
      <label for="Select Service">Select Service</label>
      <select required autofocus class="form-control" name="service" >
      <option value="-1">Select</option>
        <option value="APOLLO">APOLLO</option>
        <option value="MEDWIN">MEDWIN</option>
        <option value="CARE">CARE</option>
        <option value="SUNSHINE">SUNSHINE</option>
        
      </select>
    </div>
    <div class="form-group">
      <label >Enter Date:</label>
      <input type="date"   name="date1" class="form-control" placeholder="Enter Date" required autofocus>
    </div>
    <div class="form-group">
      <label for="Select Reserved From">Reserved From:</label>
      <select  required autofocus class="form-control" name="reservedfromtime1" >
        <option value="-1">Select</option> 
        <option value="10AM">10AM</option>
<option value="11AM">11AM</option>
<option value="12AM">12AM</option>
<option value="1PM">01PM</option>
<option value="2PM">02PM</option>
<option value="3PM">03PM</option>
<option value="4PM">04PM</option>
<option value="5PM">05PM</option>
</select>
 </div>
<div class="form-group">
<label for="Select Reserved To">Reserved To:</label>
<select  required autofocus class="form-control" name="reservedtotime1" >
<option value="-1">Select</option> 
<option value="11AM">11AM</option>
<option value="12AM">12AM</option>
<option value="1PM">01PM</option>
<option value="2PM">02PM</option>
<option value="3PM">03PM</option>
<option value="4PM">04PM</option>
<option value="5PM">05PM</option>
<option value="6PM">06PM</option>
</select>
</div>
    
   <!--  <input type="submit" class="btn btn-primary" align="center"></button> -->
     <button class="btn btn-lg btn-primary btn-block" type="submit" onClick=" return func()">Submit</button>

      </form>
	

    </div><!-- /.container -->
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
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.example.demo.model.Employee"%>
<!DOCTYPE html>
<html>
<head>
<title>ADDED EMP!</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>

#home1
{
	text-align: center;
}

#img
{
	margin-left: 35%;
	height : 250px;
	width : 250px;
}
</style>
</head>



<body id ="body">



	<div class="container">
		<h2>EMPLOYEE DETAILS</h2>
			<br>
		
			<div class=" panel panel-default">
			<div class="row">
			<div class ="col-6" style="width:50%; float: left">
					<div style="width:50%; margin-left: 30%" class="panel-body">EMPLOYEE ID : ${emp_id}</div>
					<div style="width:50%; margin-left: 30%" class="panel-body">EMPLOYEE NAME : ${emp_name}</div>
					<div style="width:50%; margin-left: 30%" class="panel-body">EMPLOYEE PHONE : ${emp_phn}</div>
					<div style="width:50%; margin-left: 30%" class="panel-body">EMPLOYEE ADDRESS : ${emp_add}</div>
					<div style="width:50%; margin-left: 30%" class="panel-body">EMPLOYEE ROLE : ${emp_role}</div>
			</div>

				
				<div class="col-2" style="width:50%; float: right;">
					<img id="img" alt="WELCOME TO THE PAGE BUDDY"
						src="https://static8.depositphotos.com/1003938/910/v/600/depositphotos_9108376-stock-illustration-funny-cartoon-office-worker.jpg">

				</div>
			</div>
		</div>


		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
</body>


</html>
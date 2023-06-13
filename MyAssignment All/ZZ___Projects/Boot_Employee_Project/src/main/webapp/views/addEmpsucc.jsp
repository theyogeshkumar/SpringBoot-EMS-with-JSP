<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADDED EMP!</title>
<style>

#home1
{
	text-align: center;
}

#img
{
	margin-left: 40%;
}
</style>
</head>


<body id ="body">
<br>

<br>
<br>

<div class="alert alert-primary" role="alert" id="div1" style="width: 50%; margin-left: 25%; height: 60px;">
  <h2 id="home1" styl>EMPLOYEE SUCCESSFULLY ADDED</h2>
</div>

	
	<div id = "img">
	<img alt="WELCOME TO THE PAGE BUDDY" src="https://i.pinimg.com/originals/ba/9f/d1/ba9fd18b416ed2b9207fda4b8a09e5d1.png">
	</div>
	
	<div class="container">
		<h3 style="text-align: center; color: navy;">Hey HR, ${emp_name} has been added to our Community!!</h3>
	</div>
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
</body>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Home</title>

<style type="text/css">

#div1
{
height: 60px;
}
</style>
</head>
<body id ="body">

<div class="container text-center">
		<h2>Please Register yourself!</h2>
	</div>
	<div class="container">
		<form action="reg_success" >
		
			<div class="mb-3" id="div1">
				<label for="name" class="form-label">HR Name
				</label> <input type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" name="hr_name" required="required">
			</div>

			
			<div class="mb-3" id="div1">
				<label for="name" class="form-label">HR UserName
				</label> <input type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" name="hr_uname" required="required">
			</div>
			
		
			
			<div class="mb-3" id="div1">
				<label for="password" class="form-label">Set HR Password</label>
				<input type="password" class="form-control"
					id="exampleInputPassword1" name="hr_password" required="required">
			</div>

			<button type="submit" class="btn btn-info">Submit</button>
		</form>
	</div>
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
</body>
</html>
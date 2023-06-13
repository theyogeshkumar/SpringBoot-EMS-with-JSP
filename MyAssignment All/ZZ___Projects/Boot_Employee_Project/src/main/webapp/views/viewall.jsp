<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@page import="java.util.List"%>
	<%@page import="com.example.demo.model.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Add Employee</title>

<style type="text/css">
#div1 {
	height: 60px;
}
</style>
</head>
<body id="body">

	<div class="container text-center">
		<h2>VIEW ALL EMPLOYEE</h2>
		<br>
		<table class="table table-hover table-dark">
		<thead>
			<tr style="border: 1px solid black;">
				<td scope="col"">Employee ID</td>
				<td scope="col"">Employee Name</td>
				<td scope="col"">Employee Phone</td>
				<td scope="col"">Employee Address</td>
				<td scope="col"">Employee Role</td>
			</tr>
			</thead>	
			<%
				List<Employee> empp = (List<Employee>)request.getAttribute("listemp");
				for(Employee e : empp){
				int id = e.getEmp_id();
				String name = e.getEmp_name();
				long phone = e.getEmp_phone();
				String address = e.getEmp_address();
				String role = e.getEmp_role();
			
			%>
			<tbody>
			<tr>
<th scope="row"><% out.print(id);%></th>
<td><% out.print(name);%></td>
<td><% out.print(phone);%></td>
<td><% out.print(address);%></td>
<td><% out.print(role);%></td>
</tr>
</tbody>
<% }
%>
	</table>
	</div>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>


</body>
</html>
<%@page import="com.tech.carproject.dto.Car"%>
<%@page import="com.tech.carproject.dto.CarException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ include file="nav.jsp" %>	

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Vehicle</title>
</head>
<body>
<!--form-->
	<section id="form"></section>
	<div class="regform">
		<h1>View Vehicle</h1>
	</div>
	<div class="main">
		<form action="./ViewDetails" method="post">
			<h3 class="name">Enter Car_ID</h3>
			<input class="Id" type="text" name="car_Id" placeholder="Enter Vehicle ID" required>
			<button class="button" type="submit">View Details</button>
		</form>
	</div>
	<!--form end-->

</body>
</html>
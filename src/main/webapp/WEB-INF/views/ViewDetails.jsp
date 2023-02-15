<%@page import="com.tech.carproject.dto.Car"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="nav.jsp" %>
   	 <% Car car = (Car) request.getAttribute("car"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Details</title>
</head>
<body>
<%
		if (car != null) {
	%>
<section id="form"></section>
	<div class="regform">
		<h1>Vehicle Details</h1>
	</div>
	<div class="main">
		<form>
			<div>
				<img alt="" src="<%=car.getCar_Image()%>">
			</div>	
		
			<div id="name">
				<h3 class="name">Name</h3>
				<input class="firstname" type="text" name="car_Name" value="<%= car.getCar_Name() %>" ><br>
				<label class="firstlabel">Car Name</label> 
				<input class="lastname" type="text" name="car_Company" value="<%= car.getCar_Company()%>">
				<label class="lastlabel">Company Name</label>
			</div>
			<input class="Id" type="hidden" name="car_Id" value="<%= car.getCar_Id()%>">

			<h3 class="name">Fuel Type</h3>
			<input class="fuel" type="text" name="car_FuelType" value="<%= car.getCar_FuelType()%>">

			<h3 class="name">Break System</h3>
			<input class="Break" type="text" name="car_BreakSystem" value="<%= car.getCar_BreakSystem() %>">
			<div id="proprice">
				<h3 class="name">Price</h3>
				<input class="Showroom" type="text" name="car_ShowPrice" value="<%= car.getCar_ShowPrice()%>"><br> 
				<label class="Showroomlabel">show room price</label> 
				<input class="road" type="text" name="car_OnroadPrice" value="<%= car.getCar_OnroadPrice()%>">
				<label class="roadlabel">On road price</label>
			</div>

			<h3 class="name">Seating capacity</h3>
			<input class="seat" type="text" name="car_SeatingCapacity" value="<%=car.getCar_SeatingCapacity() %>">

			<h3 class="name">Mileage</h3>
			<input class="Mileage" type="text" name="car_Mileage" value="<%= car.getCar_Mileage()%>">

			<h3 class="name">Engine Capacity</h3>
			<input class="Engine" type="text" name="car_EngineCapacity" value="<%= car.getCar_EngineCapacity()%>">

			<h3 class="name">Gear Type</h3>
			<input class="gear" type="text" name="car_GearType" value="<%= car.getCar_GearType()%>">

			<h3 class="name">power steering</h3>
			<input class="gear" type="text" name="car_PowerSteering" value="<%= car.getCar_PowerSteering()%>">
		</form>	
		</div>	
	<%} %>	
</body>
</html>
<%@page import="com.tech.carproject.dto.Car"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<% List<Car> car = (List<Car>) request.getAttribute("car"); 
		String msg=(String) request.getAttribute("msg");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%if(msg!=null){ %>
<h1><%= msg %></h1>
<%} %>
	<form action="./visit" method="post">
		<table>
			<tr>
				<td><input type="text" name="search"></td>
				<td><input type="submit" value="search" /></td>
			</tr>
		</table>
	</form>
	<% if(car!=null){ %>
	<%
	for (Car car2 : car) {
	%>
	<h1>----------------------</h1>
	<img alt="" src="<%= car2.getCar_Image() %>">
	<h1>
		Name :
		<%=car2.getCar_Name()%></h1>
	<h1>
		Company :
		<%=car2.getCar_Company()%></h1>
	<h1>
		Car fuel type :
		<%=car2.getCar_FuelType()%></h1>
	<h1>
		Power Steering :
		<%=car2.getCar_PowerSteering()%></h1>
	<h1>
		Break System :
		<%=car2.getCar_BreakSystem()%></h1>
	<h1>
		Showroom price :
		<%=car2.getCar_ShowPrice()%></h1>
	<h1>
		Onroad price :
		<%=car2.getCar_OnroadPrice()%></h1>
	<h1>
		Seating Capacity :
		<%=car2.getCar_SeatingCapacity()%></h1>
	<h1>
		Mileage :
		<%=car2.getCar_Mileage()%></h1>
	<h1>
		Engine capacity :
		<%=car2.getCar_EngineCapacity()%></h1>
	<h1>
		Gear type :
		<%=car2.getCar_GearType()%></h1>
	<%
	}
	%>
	<%
	}
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="nav.jsp"%>
<%
	String msg = (String) request.getAttribute("msg");
String errorMsg = (String) request.getAttribute("errorMsg");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Remove Vehicle</title>
</head>
<body>
	<%
		if (msg != null) {
	%>
	<center><h1 style="color: green;"><%=msg%></h1></center>
	<%
		}
	%>
	
	<%
		if (errorMsg != null) {
	%>
	<center><h1 style="color: red;"><%=errorMsg%></h1></center>
	<%
		}
	%>
	

	<!--form-->
	<section id="form"></section>
	<div class="regform">
		<h1>Delete Car Details</h1>
	</div>
	<div class="main">
		<form action="./delete" method="post">
			<!-- <div id="name">
				<h3 class="name">Name</h3>
				<input class="firstname" type="text" name="car_Name" placeholder="please enter Vehicle name"><br>
			</div>
 -->
			<h3 class="name">Enter the id</h3>
			<input class="Id" type="text" name="car_Id" placeholder="Please enter Car ID" required>
			<button class="button" type="submit">Delete</button>
		</form>
	</div>
	<!--form end-->
</body>
</html>
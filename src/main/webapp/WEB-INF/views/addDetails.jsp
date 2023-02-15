<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="nav.jsp"%>
<% String msg =(String) request.getAttribute("msg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add car details</title>
</head>
<body>
<%if(msg!=null){ %>
<h1><%= msg %></h1>
<%} %>
   <!--form-->
   <section id="form"></section>
     <div class="regform"><h1>Add Car Details</h1></div>
     <div class="main">
         <form action="./addDetails" method="post">
        <div id="name">     
         <h3 class="name">Name</h3>
         <input class="firstname" type="text" name="car_Name" placeholder="Vehicle name" required><br>
        <label class="firstlabel">Car Name</label>
         <input class="lastname" type="text" name="car_Company" placeholder="Made by Company" required>
         <label class="lastlabel">Company Name</label>
     </div>
       <!--  <h3 class="name">Enter ID</h3>
        <input class="Id" type="text" name="company_fuel"> -->
     
         <h3 class="name">Fuel Type</h3>
         <input class="fuel" type="text" name="car_FuelType" placeholder="Petrol/CNG/Diesel" required>

         <h3 class="name">Break System</h3>
         <input class="Break" type="text" name="car_BreakSystem" placeholder="ABS/Disc/Combi" required>


         <div id="proprice">     
            <h3 class="name">Price</h3>
            <input class="Showroom" type="text" name="car_ShowPrice" placeholder="off-road price" required><br>
            <label class="Showroomlabel">show room price</label>
            <input class="road" type="text" name="car_OnroadPrice" placeholder="on-road price" required>
            <label class="roadlabel">On road price</label>
        </div> 
         
        <h3 class="name">Seating capacity</h3>
         <input class="seat" type="text" name="car_SeatingCapacity" required>

         <h3 class="name">Mileage</h3>
         <input class="Mileage" type="text" name="car_Mileage" placeholder="Please enter mileage in number" required>

         <h3 class="name">Engine Capacity</h3>
         <input class="Engine" type="text" name="car_EngineCapacity" placeholder="Please enter engine CC" required>

         <h3 class="name">Gear Type</h3>
         <input class="gear" type="text" name="car_GearType"  placeholder="Manual/Automatic" required>
          
         <h3 class="name">image link</h3>
        <input class="image" type="text" id="myfile" name="car_Image" required>

		<h3 class="name">power steering</h3>
        <input class="gear" type="text"  name="car_PowerSteering" placeholder="Yes/No" required>
        <button class="button" type="submit">ADD</button> 
         </form>
    </div>
</section>
   <!--form end-->
   <%if(msg!=null) {%>
   <h4 style="color: green;"><%= msg %></h4>
   <%} %>
</body>
</html>
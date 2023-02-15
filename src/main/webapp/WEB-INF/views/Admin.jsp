<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="nav.jsp" %>
    <% String msg = (String)request.getAttribute("msg"); 
    	String message = (String)request.getAttribute("message");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Automotive.com</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
    <link rel="stylesheet" href="bootstrap-4.6.0-dist/css/bootstrap-reboot.min.css">
   <!--form end-->
   <%if(msg!=null) {%>
   <h1 style = "color: green;"><%= msg %></h1>
   <%} %>
   <%if(message!=null) {%>
   <h4 style="color: green;"><%= message %></h4>
   <%} %>
   
</body>
</html>
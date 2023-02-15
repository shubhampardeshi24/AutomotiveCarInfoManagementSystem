<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	    <%
    String msg = (String)request.getAttribute("msg");
	String message = (String)request.getAttribute("message");
    %>
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Automotive.com</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
<link rel="stylesheet" href="Admin.css">

<link rel="stylesheet"
	href="bootstrap-4.6.0-dist/css/bootstrap-reboot.min.css">

<style>
#header{
	display:flex;
	align-items: center;
	justify-content: space-between;
	padding: 15px 70px;
	background:#222;
	box-shadow: 0 5px 15px rgba(0,0,0,0.06);
	z-index: 999;
	position: sticky;
	top: 0;
	left: 0;
	
   }

#navbar{
 display:flex;
 align-items: center;
 justify-content: center;
 

}  

#navbar li{
  list-style: none;
  padding: 0 20px;
  padding-top: 10px;
  position: relative ;
}




#navbar li a{
  text-decoration: none;
  font-size: 16px;
  font-weight: 600;
  line-height: 50px;
  color:rgb(209, 175, 175);
  transition: 0.3s ease;
}

#navbar li a:hover,
#navbar li a.active{
 color:rgba(207, 68, 68, 0.842);
} 

#navbar li a.active::after
#navbar li a:hover::after {
  content: "";
  width: 30%;
  height: 2px;
  background:black;
  position: absolute;
  bottom: -4px;
  left: 20px;
}

#logo{
    color:rgba(207, 68, 68, 0.842);
    text-shadow: -2px 2px 0 rgb(241, 238, 238),
                          2px 2px 0 rgb(246, 246, 246),
                         2px -2px 0 rgb(255, 255, 255),
                      
  }
  h2{
    font-size: 38px;
    line-height: 48px;
    font-family: apple chancery;
 }

  
*{
	margin: 0;
	padding:0;
	
}
#form{
	background-color: rosybrown;
	margin-top: 40px;
} 

body{
	
	background-position: center;
	background-size: cover;
	font-family: sans-serif;
}
.regform{
	margin-top: 100px;
	margin-bottom: 100px;
	width:800px;
	background-color: rgba(0, 0, 0, 0.233);
	margin:auto;
	color: rgba(85, 27, 27, 0.842);
	padding: 10px 0px 10px 0px;
	text-align: center;
	border-radius: 15px 15px 0px 0px;

}
.main{
	background-color: rgba(0, 0, 0, 0.075);
	width: 800px;
	margin: auto;
}
  form{
	  padding:10px;
  }
  #name{
	  width:100%;
	  height:100px;
  }

.name{
	margin-left: 25px;
	margin-top: 10px;
	width: 125px;
	color: rgba(85, 27, 27, 0.842);
	font-size : 18px;
	font-weight: 700;

}
.firstname{
	position: relative;
	margin-top: 10px;
	left:200px;
	top:-37px;
	line-height: 40px;
	border-radius: 6px;
	padding: 0 22px;
	font-size:16px;
}
.lastname{
	position: relative;
	
	left:417px;
	top:-80px;
	line-height: 40px;
	border-radius: 6px;
	padding: 0 22px;
	font-size:16px;
	color:#555;
}
.firstlabel{
	position: relative;
	color:black;
	text-transform: capitalize;
	font-size: 14px;
	left:203px;
	top:-45px;

}
.lastlabel{
    position: relative;
	color:black;
	text-transform: capitalize;
	font-size: 14px;
	left:185px;
	top:-45px;

}
.fuel{
	position: relative;
	margin-top: 10px;
	color:black;
	border-radius: 6px;
	font-size: 16px;
	left:200px;
	top:-37px;
	line-height: 40px;
	width:514px;
	padding: 0 22px;
}
.Id{
	position: relative;
	
	color:black;
	border-radius: 6px;
	font-size: 16px;
	left:200px;
	top:-37px;
	line-height: 40px;
	width:514px;
	padding: 0 22px;
}
.Break{
	position: relative;
	margin-top: -50px;
	color:black;
	border-radius: 6px;
	font-size: 16px;
	left:200px;
	top:-37px;
	line-height: 40px;
	width:514px;
	padding: 0 22px;
}


#proprice{
	width:100%;
	height:100px;
}

.price{
  margin-left: 25px;
  margin-top: 30px;
  width: 125px;
  color: black
  font-size 18px;
  font-weight: 700;

}
.Showroom{
  position: relative;
  left:200px;
  top:-37px;
  line-height: 40px;
  border-radius: 6px;
  padding: 0 22px;
  font-size:16px;
}
.road{
  position: relative;
  left:380px;
  top:-80px;
  line-height: 40px;
  border-radius: 6px;
  padding: 0 22px;
  font-size:16px;
  color:#555;
}
.Showroomlabel{
  position: relative;
  color:black;
  text-transform: capitalize;
  font-size: 14px;
  left:203px;
  top:-45px;

}
.roadlabel{
  position: relative;
  color:black;
  text-transform: capitalize;
  font-size: 14px;
  left:185px;
  top:-45px;

}
.seat{
	position: relative;
	margin-top: -60px;
	color:black;
	border-radius: 6px;
	font-size: 16px;
	left:200px;
	top:-37px;
	line-height: 40px;
	width:514px;
	padding: 0 22px;
}
.Mileage{
	position: relative;
	margin-top: -60px;
	color:black;
	border-radius: 6px;
	font-size: 16px;
	left:200px;
	top:-37px;
	line-height: 40px;
	width:514px;
	padding: 0 22px;
}
.Engine{
	position: relative;
	margin-top: -60px;
	color:black;
	border-radius: 6px;
	font-size: 16px;
	left:200px;
	top:-37px;
	line-height: 40px;
	width:514px;
	padding: 0 22px;
}.gear{
	position: relative;
	margin-top: -60px;
	color:black;
	border-radius: 6px;
	font-size: 16px;
	left:200px;
	top:-37px;
	line-height: 40px;
	width:514px;
	padding: 0 22px;
}
.image{
	position: relative;
	margin-top: -60px;
	color:black;
	border-radius: 6px;
	font-size: 16px;
	left:180px;
	top:-37px;
	line-height: 40px;
	width:514px;
	padding: 0 22px;
}
.button{
	position: relative;
	left: 280px;
	background-color:rgb(251, 217, 217);
	display: block;
	margin: 20px 60px 0px 20px;
	padding: 14px 80px;
	outline: none;
	color: rgb(24, 23, 23);
    text-decoration: none;
	text-align: center;
	border-radius: 9px;
	border:2px solid #222
	
	
	
}
.button:hover{
	background-color:rgb(221, 100, 100);
}
</style>
</head>
<body>
<%if(msg!=null){ %>
	<h1> <%= msg %> </h1>
<%} %>
	<!--Navbar-->
	<section id="header">
		<h2 id="logo">Automotive</h2>
         <div>
             <ul id="navbar">
                 <li><a class="active" href="./home">Home</a></li>
<!--                  <li><a href="./index.jsp">About us</a></li>
                 <li><a href="./index.jsp">Cars</a></li> 
                 <li><a href="./index.jsp">Contact</a></li> -->
                 <li><a href="./login">Admin Login</a></li>
                 <li><a href="./register">Admin Registration</a></li>
               <!--   <li>
                     <form class="d-flex">
                    <input class="form-control me-2" type="search"  placeholder="Search" aria-label="Search" id="searchbar"/>
                    <a href="cars.html"><i class="fa-solid fa-magnifying-glass"></i></a>
                    </form>
                 </li>  -->
             </ul>
         </div>
	</section>
	<!--Navbar End-->
	
	
	
	<!--form-->
<section id="form"></section>
     <div class="regform"><h1>Registration</h1></div>
     <div class="main">
        <form action="./register" method="post">
        <div id="name">     
         <h3 class="name">Name</h3>
         <input class="firstname" type="text" name="firstName" placeholder="First Name" required><br> 
         <label class="firstlabel">First Name</label>
        <input class="lastname" type="text" name="lastName" placeholder="Last Name" required>
         <label class="lastlabel">Last Name</label>
        
     </div>
        <h3 class="name">Email id</h3>
        <input class="Id" type="text" name="email" required>
    
         <h3 class="name">Password</h3>
         <input class="fuel" type="password" name="password" required>

	<button class="button" type="submit">Register</button>
     </form>
    </div>
   
	<!--form end-->
	
   <%if(message!=null) {%>
   <h4 style="color: green;"><%= message %></h4>
   <%} %>
	<script src="script.js"></script>
</body>
</html>
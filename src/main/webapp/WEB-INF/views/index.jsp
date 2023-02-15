<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	String msg = (String) request.getAttribute("msg");
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
<link rel="stylesheet"
	href="F:\sur\Automotive\src\main\webapp\WEB-INF\views\style.css">
<link rel="stylesheet"
	href="bootstrap-4.6.0-dist/css/bootstrap-reboot.min.css">
<style>
#footer{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    
    width: 100%;
    height: 60vh;
    background-size: cover;
    background-position: center;
   
}
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Spartan', sans-serif;
}

h1 {
	font-size: 60px;
	line-height: 64px;
	color: black;
}

h2 {
	font-size: 46px;
	line-height: 54px;
	color: #222;
}

h3 {
	font-size: 38px;
	line-height: 48px;
	font-family: apple chancery;
}

h4 {
	font-size: 20px;
	color: black;
}

h6 {
	font-size: 12px;
	font-weight: 700;
}

p {
	font-size: 16px;
	color: #465b52;
	margin: 15px 0 20px 0;
}

.section-p1 {
	padding: 40px 80px;
}

.section-m1 {
	margin: 40px 0;
}

body {
	width: 100%;
}

#logo {
	color: rgba(207, 68, 68, 0.842);
	text-shadow: -2px 2px 0 rgb(241, 238, 238), 2px 2px 0 rgb(246, 246, 246),
		2px -2px 0 rgb(255, 255, 255),
}

/*header start*/
#header {
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 15px 70px;
	background: #222;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.06);
	z-index: 999;
	position: sticky;
	top: 0;
	left: 0;
}

#navbar {
	display: flex;
	align-items: center;
	justify-content: center;
}

#navbar li {
	list-style: none;
	padding: 0 20px;
	padding-top: 10px;
	position: relative;
}

#navbar li a {
	text-decoration: none;
	font-size: 16px;
	font-weight: 600;
	line-height: 50px;
	color: rgb(209, 175, 175);
	transition: 0.3s ease;
}

#navbar li a:hover, #navbar li a.active {
	color: rgba(207, 68, 68, 0.842);
}

#navbar li a.active::after
 #navbar li a:hover::after {
	content: "";
	width: 30%;
	height: 2px;
	background: black;
	position: absolute;
	bottom: -4px;
	left: 20px;
}

/*Home page*/
#Hero {
	background-image: url("https://wallpaperaccess.com/full/3964713.jpg");
	height: 90vh;
	width: 100%;
	background-size: cover;
	background-position: top 25% right 0;
	padding: 0 80px;
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	justify-content: center;
}

/*about us*/

/*cars*/
#product1 {
	text-align: center;
}

#product1 .pro-container {
	display: flex;
	justify-content: space-between;
	padding-top: 20px;
	flex-wrap: wrap;
}

#product1 .pro {
	width: 32%;
	min-width: 250px;
	padding: 10px 12px;
	border: 1px solid #cce7d0;
	border-radius: 25px;
	cursor: pointer;
	box-shadow: 20px 20px 30px rgba(0, 0, 0, 0.02);
	margin: 15px 0;
	transition: 0.2s ease;
	position: relative;
	text-align: end;
}

#product1 .pro:hover {
	box-shadow: 20px 20px 10px rgba(0, 0, 0, 0.06);
}

#product1 .pro img {
	width: 100%;
	border-radius: 20px;
}

#product1 .pro .des {
	text-align: start;
	padding: 10px 0;
}

#product1 .pro .des span {
	color: rgb(8, 8, 8);
	font-size: 20px;
}

#banner {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	text-align: center;
	background-image: url("https://machineswithsouls.com/wp-content/uploads/2019/05/bmw-440i-convertible-sunset-e1575926112389-1536x845.jpg");
	width: 100%;
	height: 60vh;
	background-size: cover;
	background-position: center;
}

#banner p {
	padding-top: 2%;
	padding-left: 10%;
	padding-right: 10%;
	font-size: 20px;
	font-weight: 600;
	color: whitesmoke;
}

/*contact */
/*Admin page*/
#product {
	text-align: center;
}
</style>
</head>
<body>
	<%
		if (msg != null) {
	%>
	<h1>
		<%=msg%>
	</h1>
	<%
		}
	%>



	<!--Navbar-->
	<section id="header">
		<h3 id="logo">Automotive</h3>
		<div>
			<ul id="navbar">
				<li><a class="active" href="./home">Home</a></li>
				<li> <a href="#product1"> cars </a></li>
				<li><a href="#banner">About us</a></li>
				<li><a href="#footer">Contact us</a></li>
				<li><a href="./login">Login</a></li>
				<li><a href="./register">Registration</a></li>
				<!-- <li>
					<form class="d-flex">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search" id="searchbar" /> <a
							href="cars.html"><i class="fa-solid fa-magnifying-glass"></i></a>
					</form>
				</li> -->
			</ul>
		</div>
	</section>
	<!--Navbar End-->

	<!--Background-->
	<section id="Hero">
		<h4>Find your used car!</h4>
		<h1>New cardealer in</h1>
		<h1>Town!</h1>

	</section>
	<!--Background End-->


	<!--cars-->

	<section id="product1" class="section-p1 ">

		<h2>Featured Cars</h2>
		<p>Cars available for sale</p>
		<div class="pro-container">
			<div class="pro">
				<img src="https://imgd.aeplcdn.com/664x374/n/cw/ec/54399/exterior-right-front-three-quarter-10.jpeg?q=75" alt="">
				<div class="des">
					<span>Swift</span>
					<h5>Maruti Suzuki</h5>
					<div id="speed">
						<i class="fa-solid fa-gauge-simple"> 30,000km </i> <i
							class="fa-solid fa-cube">1800cc </i> <i class="fa-solid fa-gear">manual
						</i>
					</div>
				</div>
			</div>

			<div class="pro">
				<img src="https://cdn-usedcars.autoportal.com/media/image/0c597af4b94f62f534fba7c6f3931bea5c632684/original_image/fe2593ac860e52a39b08f171ff350f2f374f2cd2.jpg" alt="">
				<div class="des">
					<span>Polo</span>
					<h5>Volkswagen</h5>
					<div id="speed">
						<i class="fa-solid fa-gauge-simple"> 30,000km </i> <i
							class="fa-solid fa-cube">1800cc </i> <i class="fa-solid fa-gear">manual
						</i>

					</div>
				</div>
			</div>

			<div class="pro">
				<img src="https://imgd.aeplcdn.com/640X480/cw/ucp/stockApiImg/HQTNVYW_cab3488821984921903720880966ad37_1_23140582.jpg?q=75" alt="">
				<div class="des">
					<span>XUV</span>
					<h5>Mahindra and Mahindra</h5>
					<div id="speed">
						<i class="fa-solid fa-gauge-simple"> 30,000km </i> <i
							class="fa-solid fa-cube">1800cc </i> <i class="fa-solid fa-gear">manual
						</i>

					</div>
				</div>
			</div>

			<div class="pro">
				<img src="https://fastly-production.24c.in/hello-ar/dev/uploads/730d4147-0ba5-422c-9cbd-08ddb2f07752/464c4dab-2a13-4189-9923-a4f8065159ad/43.jpg?w=1248&h=704&auto=format" alt="">
				<div class="des">
					<span>i20 Magna</span>
					<h5>Hyundai</h5>
					<div id="speed">
						<i class="fa-solid fa-gauge-simple"> 30,000km </i> <i
							class="fa-solid fa-cube">1800cc </i> <i class="fa-solid fa-gear">manual
						</i>

					</div>
				</div>
			</div>

			<div class="pro">
				<img src="https://fastly-production.24c.in/hello-ar/dev/uploads/bcf9648f-93b0-4c5f-b24e-6158eced29b8/f5296381-cd07-4801-a759-694e0fddeac1/46.jpg?w=1248&h=704&auto=format" alt="">
				<div class="des">
					<span>2015 BMW 3 Series 320D LUXURYLINE</span>
					<h5>BMW</h5>
					<div id="speed">
						<i class="fa-solid fa-gauge-simple"> 30,000km </i> <i
							class="fa-solid fa-cube">1800cc </i> <i class="fa-solid fa-gear">manual
						</i>

					</div>
				</div>
			</div>

			<div class="pro">
				<img src="https://fastly-production.24c.in/hello-ar/dev/uploads/5b6b1230-1ae4-4abe-9974-1c9d68f6ede9/cce47799-6822-40e0-864e-b957ea577239/42.jpg?w=1248&h=704&auto=format" alt="">
				<div class="des">
					<span>2018 Hyundai Verna 1.6 SX VTVT</span>
					<h5>Hyundai</h5>
					<div id="speed">
						<i class="fa-solid fa-gauge-simple"> 30,000km </i> <i
							class="fa-solid fa-cube">1800cc </i> <i class="fa-solid fa-gear">manual
						</i>
					</div>
				</div>
			</div>

		</div>
	</section>
	<!--cars end-->

	<!--about us-->
	0
	<section id="banner" class="section-m1">
		0
		<h2>About us</h2>
		<p id="para">Automotive takes the risk out of buying a pre-owned car to offer you peace of mind with zero compromises. Our multi-step filtering ensures that you always get to choose from a pool of highest quality certified second hand cars. When you buy a Spinny Assured car, you get a used car that is non-accidental, non-meter tampered, has clean records and has been thoroughly tested against a stringent 200 point inspection checklist. Any used car can get certified. It takes perfection to be Spinny Certified. Experience a simple & fully transparent way of buying used cars with Spinny. Find your perfect match from our wide range of fully inspected & certified used cars at the best prices. All Spinny Assured cars come with hassle-free paperwork, free RC transfer, and used car finance options with low-interest rates starting from only 12.5%. With Spinny, pre-owned is better than new. Get the savings of a pre-owned with the quality of a new car. All this through a transparent, convenient and trustworthy process, to make sure you buy a car you'll love, guaranteed.</p>

	</section>

	<!--about us End-->
	<!--Footer-->
       <footer id="footer" class="section-p1">
           <div class="col">
               <h4>Contact Us</h4>
               <p><strong>Address :</strong>Shubham Automotive, B T Kawade Road, Ghorpadi Gaon, Pune 411001</p>
               <p><strong>Phones :</strong>+91 9561263012</p>
               <p><strong>Hours :</strong> 09:00 Am to 06:00 PM</p>
                <div class="follow">
                    <h4>Follow us</h4>
                    <a href="https://youtu.be/214uYSMUoyo" class="btn btn-primary m-1" role="button"
                rel="nofollow" target="_blank">
                <i class="fab fa-youtube"></i>
              </a>
              <a href="https://www.facebook.com/Shubham24.pardesie/?ref=pages_you_manage" class="btn btn-primary m-1" role="button" rel="nofollow"
                target="_blank">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="https://twitter.com/AmbushhP" class="btn btn-primary m-1" role="button" rel="nofollow"
                target="_blank">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="https://github.com/shubhampardeshi" class="btn btn-primary m-1" role="button" rel="nofollow"
                target="_blank">
                <i class="fab fa-github"></i>
                </div>
          
            <!-- Copyright -->
           <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);" id="contact">
            © 2021 Copyright : <a class="text-warning" href="./index">Automotive.com</a>
            <!-- <a class="text-dark" href="./Trial2.html">yatra.com</a> -->
          </div>
          <!-- Copyright -->    
           </div>
       </footer>
     <!--Footer end-->
	<script src="script.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insertion</title>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">

<style>
@charset "ISO-8859-1";
<%@include file="/css/footer.css" %>
<%@include file="/css/home.css" %>

body * {
    box-sizing: border-box;
    font-family: 'Open Sans', sans-serif
}

body {
    background: url('https://www.ppt-backgrounds.net/thumbs/light-gold-templates.jpeg') no-repeat center center fixed;
    background-size: cover
}

.conn {
    width: 100%;
    padding-top: 60px;
    padding-bottom: 100px
}

.forgot {
    text-decoration: underline
}

th, td {
  padding: 15px;
  text-align: center;
}

.center {
  margin-left: auto;
  margin-right: auto;
  margin-top: auto;
  margin-bottom: auto;
  background-color: rgba(255, 255, 255, .4);
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 10px 100px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 12px;
}
button:hover {
  background-color:pink;
  color:blue;
}

.box56 {
    height: 720px;
    width: 430px;
   	background-color: rgba(255, 255, 255, .4);
    background-size: cover;
    margin-left: auto;
    margin-right: auto;
    border-top: solid 1px rgba(255, 255, 255, .5);
    border-radius: 5px;
    box-shadow: 0px 2px 7px rgba(0, 0, 0, 0.2);
    overflow: hidden;
    transition: 0.25s;
    color: #ffffff;
    padding: 40px
}

.box56 input[type="text"],
.box56 input[type="password"] {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #3498db;
    padding: 10px 10px;
    width: 250px;
    outline: none;
    color: black;
    border-radius: 24px;
    transition: 0.25s
}

.box56 h2 {
    color: black;
    font-weight: 500
}

.box56 input[type="text"]:focus,
.box56 input[type="password"]:focus {
    width: 300px;
    border-color: #2ecc71
}

.box56 input[type="submit"] {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #2ecc71;
    padding: 14px 40px;
    outline: none;
    color: black;
    border-radius: 24px;
    transition: 0.25s;
    cursor: pointer
}

.box56 input[type="submit"]:hover {
    background: #F0E68C
}

.pclass12{
	text-align: center;
	font-weight: 900;
	font-size: 25px;
}

.box56 p{
	color : black;
}
</style>
</head>
<body>
	<div id="grad1">
		<table width="110%";>
			<tr><td>
					<img src="https://image.flaticon.com/icons/png/128/901/901425.png" >
			</td>
			<td>
			<div class="head">
			<h1>Ceylon <span>Bank</span></h1>
			</div>
			</td>
	
			</tr>
			</table>
	</div>
		<nav>
			<div class="menu-icon">
			<span class="fas fa-bars"></span></div>
			<div class="logo">
			Smart Banking Better Living</div>
			<div class="nav-items">
			<li><a href="Index.jsp">Home</a></li>
			<li><a href="#">Account</a></li>
			<li><a href="transaction.jsp">Transaction</a></li>
			<li><a href="#">Payment</a></li>
			<li><a href="#">Loan</a></li>
			</div>
			<div class="search-icon">
			<span class="fas fa-search"></span></div>
			<div class="cancel-icon">
			<span class="fas fa-times"></span></div>
			<form action="#">
			<input type="search" class="search-data" placeholder="Search" required>
			<button type="submit" class="fas fa-search"></button>
			</form>
			</nav>
	
	

	<table class="center">
	<c:forEach var="trans" items="${accountDetails}">
	<c:set var="acountID" value="${trans.acountID}"/>
	<c:set var="holderName" value="${trans.holderName}"/>
	<c:set var="accountNo" value="${trans.accountNo}"/>
	<c:set var="NIC" value="${trans.NIC}"/>
	<c:set var="balance" value="${trans.balance}"/>
	<br><br>

	 <p class="pclass12">Money Receiver Details </p>
	
	<tr>
		<td>Receiver Name</td>
		<td>${trans.holderName}</td>
	</tr>
	<tr>
		<td>Receiver AccountNo</td>
		<td>${trans.accountNo}</td>
	</tr>
	</c:forEach>
	</table>
	
	
		<div class="conn">
                <form action="transactionDetails" method="post" class="box56">
                    <h2 align="center" style="font-family:Arial, Helvetica,">Enter Sender Details</h2><br/><br/>
                    <p style="text-align:center; font-family:Verdana;"> Re-Enter Receiver Account Number</p> 
                    <input type ="text" name="receiverAcoountNo">
                    <p style="text-align:center; font-family:Verdana"> Enter Sender Name</p> 
                    <input type ="text" name="senderName">
                    <p style="text-align:center; font-family:Verdana"> Enter Sender NIC</p> 
                    <input type ="text" name="NIC">
                    <p style="text-align:center; font-family:Verdana"> Enter Amount</p> 
                    <input type ="text" name="amount">
                    
                    
                    <input type="submit" name="submit" value="Submit" >
                </form>
            </div>
<BR>
	<!-- Footer -->
	<footer class="footer-distributed">

			<div class="footer-left">
				<h3>Ceylon<span>Bank</span></h3>

				<p class="footer-links">
					<a href="#">Home</a>
					|
					<a href="#">Blog</a>
					|
					<a href="#">About</a>
					|
					<a href="#">Contact</a>
				</p>

				<p class="footer-company-name">© 2021 Ceylon Bank Pvt. Ltd.</p>
			</div>

			<div class="footer-center">
				<div>
					<i class="fa fa-map-marker"></i>
					  <p><span>Malabe,</span>
						SLIIT, Sri Lanka - 400710</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+9476 0012641</p>
				</div>
				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:support@eduonix.com">support@grocerymania.com</a></p>
				</div>
			</div>
			<div class="footer-right">
				<p class="footer-company-about">
					<span>About the company</span>
					We offer best banking experience all over the world. Your happy is our wish.</p>
					<div class="footer-icons">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-instagram"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-youtube"></i></a>
				</div>
			</div>
		</footer>

</body>
</html>
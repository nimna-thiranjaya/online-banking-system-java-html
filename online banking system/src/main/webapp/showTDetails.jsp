<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Display Transaction</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
<style>

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

.redirect{

    align-items: center;

    margin-bottom: auto;

}

.redirect button{

    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #2ecc71;
    padding:  5px 15px;
    outline: none;
    color:black;
    border-radius: 14px;
    transition: 0.25s;
    cursor: pointer   

}
.redirect button:hover{
		background:#FFDF00
}

.redirect1{

    align-items: center;

    margin-bottom: auto;

}

.redirect1 button{
    border: 0;
    background: none;
    display: block;
    margin: 1px auto;
    text-align: center;
    border: 2px solid #2ecc71;
    padding: 5px 15px;
    outline: none;
    color:black;
    border-radius: 14px;
    transition: 0.25s;
    cursor: pointer   
}


.redirect1 button:hover{
		background: #F0E68C
}

th, td {
  padding: 15px;
  text-align: center;
}

.pclass12{
	text-align: center;
	font-weight: 900;
	font-size: 25px;
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
	
	
<BR>

	
	<table class="center">
	<c:forEach var="trans" items= "${transactionDetails}">
	<c:set var="transactionID" value="${trans.transactionID}"/>
	<c:set var="senderName" value="${trans.senderName}"/>
	<c:set var="NIC" value="${trans.NIC}"/>
	<c:set var="receiverAcoountNo" value="${trans.receiverAcoountNo}"/>
	<c:set var="amount" value="${trans.amount}"/>
	
	<p class="pclass12">Transaction Details</p>
	
	<tr>
		<td>Transaction id</td>
		<td>${trans.transactionID}</td>
	</tr>
	<tr>
		<td>Sender Name</td>
		<td>${trans.senderName}</td>
	</tr>
		<tr>
		<td>Sender NIC Number</td>
		<td>${trans.NIC}</td>
	</tr>
		<tr>
		<td>Receiver Account Number</td>
		<td>${trans.receiverAcoountNo}</td>
	</tr>
		<tr>
		<td>Transaction Amount</td>
		<td>${trans.amount}</td>
	</tr>
	</c:forEach>
	</table>
	
	
	
	<c:url value = "updateTransactionDetails.jsp" var="trasaction">
	<c:param name="transactionID" value="${transactionID}"/>
	<c:param name="senderName" value="${senderName}"/>
	<c:param name="NIC" value="${NIC}"/>
	<c:param name="receiverAcoountNo" value="${receiverAcoountNo}"/>
	<c:param name="amount" value="${amount}"/>
	</c:url>

	<br>
	<div class="redirect1">
	<a href="${trasaction}">
	<button  name="sub4"> Update Transaction Details</button>
	</a>
	</div>
	
	<br>


	<div class="redirect1">
	<a href="senderDetails.jsp">
	<button name="sub2">Back</button>
	</a>
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
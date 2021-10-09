<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Transaction Cancel Successful</title>
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">

<style>
	<%@include file="/css/footer.css" %>
	
	body * {
    box-sizing: border-box;
    font-family: 'Open Sans', sans-serif
	}
	
	body {
	    background: url('https://www.ppt-backgrounds.net/thumbs/light-gold-templates.jpeg') no-repeat center center fixed;
	    background-size: cover
	}
		
		
	    .payment
		{
			border:1px solid #f2f2f2;
			height:280px;
	        border-radius:20px;
	        background:#fff;
		}
	   .payment_header
	   {
		   background:rgb(255, 62, 62);
		   padding:20px;
	       border-radius:20px 20px 0px 0px;
		   
	   }
	   
	   .check
	   {
		   margin:0px auto;
		   width:50px;
		   height:50px;
		   border-radius:100%;
		   background:#fff;
		   text-align:center;
	   }
	   
	   .check i
	   {
		   vertical-align:middle;
		   line-height:50px;
		   font-size:30px;
	   }
	
	    .content 
	    {
	        text-align:center;
	    }
	
	    .content  h1
	    {
	        font-size:25px;
	        padding-top:25px;
	    }
	
	    .content a
	    {
	        width:200px;
	        height:35px;
	        color:#fff;
	        border-radius:30px;
	        padding:5px 10px;
	        background:rgb(255, 62, 62);
	        transition:all ease-in-out 0.3s;
	    }
	
	    .content a:hover
	    {
	        text-decoration:none;
	        background:#000;
	    }
		.conn {
	    width: 100%;
	    padding-top: 60px;
	    padding-bottom: 100px
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
	

	<div class="conn">
	   
	      <div class="col-md-6 mx-auto mt-5">
	         <div class="payment">
	            <div class="payment_header">
	               <div class="check"><i class="fa fa-check" aria-hidden="true"></i></div>
	            </div>
	            <div class="content">
	               <h1>Your Transaction Cancel !</h1>
	               <p>Your Transaction Canceling Successful..Thanks For Dealing With Us...! </p>
	               <a href="Index.jsp">Go to Home Page</a>
	            </div>
	            
	         </div>
	      </div>
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Advisor a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<!-- Default-JavaScript-File -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
<!-- //Default-JavaScript-File -->
	
<!-- default css files -->
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- default css files -->
	
<!--web font-->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Khula:300,400,600,700,800&amp;subset=devanagari,latin-ext" rel="stylesheet">
<!--//web font-->
	
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
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


#grad1 {
	background-size:cover;
	height: 120px;
	background-color:rgba(0,0,0,0.7);
}

#grad1 img{
	width:100px;
	height:100px
}

#grad1 table td{
	text-align:left;
}

.head h1{
	color: #ffffff;
	font: normal 50px 'Cookie', cursive;
	margin: 0;
}

.head h1 span{
	color: #e0ac1c;
	font: normal 50px 'Cookie', cursive;
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

<!-- banner -->
	<div class="banner">
		<div class="agileinfo-dot">
			<div class="header">
				<div class="container">
					<div class="header-left">
						<div class="w3layouts-logo grid__item">
							<h1>
								<a href="#"><span class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>Ceylon Bank</a>
							</h1>
						</div>
					</div>
					<div class="top-nav">
						<nav class="navbar navbar-default">
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						
					<div class="clearfix"> </div>						
							</div>	
						</nav>
						
				</div>		
					</div>
					
			</div>
			<div class="w3l-banner-grids">
					<div class="container">
						<div class="col-md-8 slider">
							<div class="callbacks_container">
								<ul class="rslides" id="slider4">
									<li>
										<div class="w3ls-text">
											<h3>Investment in a major Purchase</h3>
											<p>Aenean ultrices lacus sit amet sodales posuere. In vehicula sagittis venenatis. 
												Quisque sit amet augue lectus. Vestibulum convallis sapien consectetur turpis viverra iaculis. 
												Nunc ut volutpat nisi.</p>
												<div class="readmore-w3">
													<a class="readmore" href="#" data-toggle="modal" data-target="#myModal1">View More</a>
												</div>
										</div>
									</li>
									<li>
										<div class="w3ls-text">
											<h3>Looking for loans with low interest</h3>
											<p> Vestibulum convallis sapien consectetur turpis viverra iaculis. 
												Nunc ut volutpat nisi.Aenean ultrices lacus sit amet sodales posuere. In vehicula sagittis venenatis. 
												Quisque sit amet augue lectus</p>
												<div class="readmore-w3">
													<a class="readmore" href="#" data-toggle="modal" data-target="#myModal1">View More</a>
												</div>
										</div>
									</li>
									<li>
										<div class="w3ls-text">
											<h2>Professional Business Services</h2>
											<p>Aenean ultrices lacus sit amet sodales posuere. In vehicula sagittis venenatis. 
												Quisque sit amet augue lectus. Vestibulum convallis sapien consectetur turpis viverra iaculis. 
												Nunc ut volutpat nisi.</p>
												<div class="readmore-w3">
													<a class="readmore" href="#" data-toggle="modal" data-target="#myModal1">View More</a>
												</div>
										</div>
									</li>
									<li>
										<div class="w3ls-text">
											<h3>30 years of successful business</h3>
											<p> Vestibulum convallis sapien consectetur turpis viverra iaculis. 
												Nunc ut volutpat nisi.Aenean ultrices lacus sit amet sodales posuere. In vehicula sagittis venenatis. 
												Quisque sit amet augue lectus</p>
												<div class="readmore-w3">
													<a class="readmore" href="#" data-toggle="modal" data-target="#myModal1">View More</a>
												</div>
										</div>
									</li>
								</ul>
							</div>
							<script src="js/responsiveslides.min.js"></script>
							<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider4").responsiveSlides({
									auto: true,
									pager:true,
									nav:false,
									speed: 500,
									namespace: "callbacks",
									before: function () {
									  $('.events').append("<li>before event fired.</li>");
									},
									after: function () {
									  $('.events').append("<li>after event fired.</li>");
									}
								  });
							
								});
							 </script>
							<!--banner Slider starts Here-->
						</div>
					
						<div class="clearfix"></div>
					</div>

		</div>
	</div>
	</div>
<!-- //banner -->
<!-- banner-bottom -->
<div class="bannerbottom" id="about">
	<div class="container">
		<div class="serviceicons">
			<div class="col-md-3">
				<div class="service1">
					<span class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>
					<h3>Account</h3>
				</div>
			</div>
			<a href="transaction.jsp">
			<div class="col-md-3">
				<div class="service1">
					<span class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>
					<h3>Transaction</h3>
					
				</div>
			</div>
			</a>
			<div class="col-md-3">
				<div class="service1">
					<span class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>
					<h3>Bill Payment</h3>
				</div>
			</div>
			<div class="col-md-3">
				<div class="service1">
					<span class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>
					<h3>Loan</h3>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="servicetext">
			<h3>Online banking made simple</h3>
			<p> ComBank Digital lets you experience a whole new dimension of modern Banking Technology equipped with convenience and security. You can carry out all your basic banking needs without the hassle of handling cash via this new Online Banking platform. Be Safe Go Digital with ComBank Digital. </p>
			<div class="readmore-w3">
				<a class="readmore" href="#" data-toggle="modal" data-target="#myModal1">Know More</a>
			</div>
		</div>
	</div>
</div>

						<!-- modal popup -->
						<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
							<!-- Modal1 -->
							<div class="modal-dialog">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4><span class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span> Advisor</h4>
										<img src="images/banner1.jpg" alt=" " class="img-responsive">
										<h5>Lorem Ipsum</h5>
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting.</p>
									</div>
								</div>
							</div>
						</div>
						<!-- //Modal1 -->
						<!-- modal popup -->
<!-- choice -->
<div class="choice">
	<div class="col-md-6 choice-left">
	<h3>Check your flexibility to invest your Interest plan</h3>
	<p><span class="glyphicon glyphicon-check" aria-hidden="true"></span> Building a strategic development</p>
	<p><span class="glyphicon glyphicon-compressed" aria-hidden="true"></span> We offer loan with low interest</p>
	<p><span class="glyphicon glyphicon-erase" aria-hidden="true"></span> Make early payment without interest</p>
	<p><span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span> Increase loan payment with onine</p>
	<p><span class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span> Better Human Resources Planning</p>
	</div>
	<div class="col-md-6 choice-right">
		<img src="images/money.jpg" alt="" />
	</div>
	<div class="clearfix"></div>
</div>





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
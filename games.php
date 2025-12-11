<?php include 'connection.php';?>
<!DOCTYPE html>
<html lang="eng">
<head>
	<title>EndGam - Gaming Magazine Template</title>
	<meta charset="UTF-8">
	<meta name="description" content="EndGam Gaming Magazine Template">
	<meta name="keywords" content="endGam,gGaming, magazine, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="iconfav.png" rel="shortcut icon"/>

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i,900,900i" rel="stylesheet">


	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="css/magnific-popup.css"/>
	<link rel="stylesheet" href="css/animate.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/content.css"/>


	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="header-warp">
			<div class="header-social d-flex justify-content-end">
				<p>Follow us:</p>
				<a href="https://www.instagram.com/steam_games_official/?hl=en"><i class="fa fa-instagram" style="color:#cd156e;"></i></a>
				<a href="https://web.facebook.com/Steam/?_rdc=1&_rdr#"><i class="fa fa-facebook" style="color:#0037FF;"></i></a>
				<a href="https://twitter.com/steam_support/with_replies"><i class="fa fa-twitter" style="color:#52DCFF"></i></a>
				<a href="https://www.youtube.com/@Steam"><i class="fa fa-youtube-play" style="color:red"></i></a>
			</div>
			<div class="header-bar-warp d-flex" style=" align-content: center;">
				<!-- site logo -->
				<a href="index.php" class="site-logo">
					<img src="./img/icon2.png" alt="mainlogo" class="pict1">
				</a>
				<nav class="top-nav-area w-100">
					<div class="user-panel">
						<a href="signin.php">Sign In</a>/<a href="login.php">Log In</a>
					</div>
					<div class="navbarcontent">
						<!-- Menu -->
						<ul class="main-menu primary-menu">
							<li><a href="games.php">Games</a></li>
							<li><a href="pointstore.php">Points Store</a></li>
							<li><a href="about.html">About</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Page top section -->
	<section class="page-top-section set-bg" data-setbg="img/elden.jpg">
		<div class="page-info">
			<h2>Games</h2>
			<div class="site-breadcrumb">
				<a href="index.php">Home</a>  /
				<span>Games</span>
			</div>
		</div>
	</section>
	<!-- Page top end-->




	<!-- Games section -->
	<section class="games-section">
		<div class="gallery-container">
			<?php
			$query="SELECT * FROM pict"; //retrieve data from database
			$result=mysqli_query(mysql: $connection, query:$query);
			while ($row = mysqli_fetch_assoc(result: $result)){
				echo"
				<div class='book'>
				 	<h3 class='title'>{$row['pict_title']}</h3>
					<h4 class='dev'>{$row['dev']}</h4>
					</br>
					<p class='desc'>{$row['pict_desc']}</p>
					<p class='desc'>{$row['rel_date']}</p>
					<p class='price'>\${$row['price']}</p>
					<div class='cover'>
						<img src='img/{$row['pict_pict']}' alt='{$row['pict_title']}' class='cover_img'>
					</div>
				</div>
				";
			}
			?>
        </div>
        <br>
			<div class="row">
				<div class="col-xl-7 col-lg-8 col-md-7">
					<div class="row">
						
					<!-- <div class="site-pagination">
						<a href="#" class="active">01.</a>
						<a href="#">02.</a>
						<a href="#">03.</a>
					</div> -->
				</div>
				<!-- <div class="sidebar game-page-sideber">
					<div id="stickySidebar">
						<div class="widget-item">
							<div class="categories-widget">
								<h4 class="widget-title">categories</h4>
								<ul>
									<li><a href="">Games</a></li>
									<li><a href="">Gaming Tips & Tricks</a></li>
									<li><a href="">Online Games</a></li>
									<li><a href="">Team Games</a></li>
									<li><a href="">Community</a></li>
									<li><a href="">Uncategorized</a></li>
								</ul>
							</div>
						</div>
						<div class="widget-item">
							<div class="categories-widget">
								<h4 class="widget-title">platform</h4>
								<ul>
									<li><a href="">Xbox</a></li>
									<li><a href="">X box 360</a></li>
									<li><a href="">Play Station</a></li>
									<li><a href="">Play Station VR</a></li>
									<li><a href="">Nintendo Wii</a></li>
									<li><a href="">Nintendo Wii U</a></li>
								</ul>
							</div>
						</div>
						<div class="widget-item">
							<div class="categories-widget">
								<h4 class="widget-title">Genre</h4>
								<ul>
									<li><a href="">Online</a></li>
									<li><a href="">Adventure</a></li>
									<li><a href="">S.F.</a></li>
									<li><a href="">Strategy</a></li>
									<li><a href="">Racing</a></li>
									<li><a href="">Shooter</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div> -->
			</div>
		</div>
	</section>
	<!-- Games end-->


	<!-- Featured section -->
	<section class="featured-section">
		<div class="featured-bg set-bg" data-setbg="./img/silksong.webp"></div>
		<div class="featured-box">
			<div class="text-box">
				<div class="top-meta">04.09.25 /  in <a href="">Games</a></div>
				<h3>The indie game you’ve been waiting  for is out now!</h3>
				<p>Hollow Knight: Silksong is a Metroidvania sequel starring the nimble warrior Hornet, taking players to the new kingdom of Pharloom to explore, fight new insectoid enemies with acrobatic maneuvers and a new quest system, and craft items. It retains Hollow Knight's challenging gameplay and nonlinear design but introduces Hornet's unique silk-based abilities for combat and healing, as well as a new currency and a detailed journal to track wishes and discoveries.</p>
				<a href="https://hollowknightsilksong.com/" class="read-more">Learn More <img src="img/icons/double-arrow.png" alt="#"/></a>
			</div>
		</div>
	</section>
	<!-- Featured section end-->


	<!-- Footer section -->
	<footer class="footer-section">
		<div class="container">
			<div class="footer-left-pic">
				<img class="footer-left-style"src="./img/doomslayer.png" alt="doom">
			</div>
			<div class="footer-right-pic">
				<img class="footer-right-style"src="./img/kratos.webp" alt="gow">
			</div>
			<a href="index.php" class="footer-logo">
				<div class="logofooter"> 
					<img src="./img/icon2.png" alt="logo" class="pict2">
				</div>
			</a>
			<ul class="main-menu footer-menu">
				<li><a href="games.php">Games</a></li>
				<li><a href="pointstore.php">Point Store</a></li>
				<li><a href="signin.php">Sign In/Log In</a></li>
				<li><a href="about.html">About Us</a></li>
			</ul>
			<div class="footer-social d-flex justify-content-center">
				<a href="#"><i class="fa fa-instagram" style="color:#cd156e;"></i></a>
				<a href="#"><i class="fa fa-facebook" style="color:#0037FF;"></i></a>
				<a href="#"><i class="fa fa-twitter" style="color:#52DCFF"></i></a>
				<a href=""><i class="fa fa-youtube-play" style="color:red"></i></a>
			</div>
			<div class="copyright"><a href="">Joltech</a> 2025 @ All rights reserved</div>
		</div>
	</footer>
	<!-- Footer section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.sticky-sidebar.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>

	</body>
</html>

<?php include 'connection.php';?>
<!DOCTYPE html>
<html lang="zxx">
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

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="css/test.css"/>
	<link rel="stylesheet" href="css/style.css"/>

</head>
<body>
    <h1>Test Image Gallery</h1>
    <div class="gallery-container">
    <?php
    $query="SELECT * FROM pict"; //retrieve data from database
    $result=mysqli_query(mysql: $connection, query:$query);
    while ($row = mysqli_fetch_assoc(result: $result)){
        echo"
         <div class='book'>
		 	<p>{$row['pict_desc']}</p>
			<div class='cover'>
        		<img src='img/{$row['pict_pict']}' alt='{$row['pict_title']}'>
			</div>
        </div>
        ";
    }
    ?>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.sticky-sidebar.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>

	</body>
</html>
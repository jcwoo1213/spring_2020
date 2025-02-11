<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<style>
.img{
	display: block;
    max-width: 50%;
    height: auto;
    max-height: 300px;
}
</style>
<head>
<title>Tasty Food a Hotel Category Flat Bootstrap Responsive Website Template | About :: w3layouts</title>
<!--mobile apps-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tasty Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	Smartphone Compatible web template, free Webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--mobile apps-->
<!--Custom Theme files -->
<link href="../../resources/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="../../resources/css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- //Custom Theme files -->
<!-- js -->
<script src="../../resources/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!--web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Stint+Ultra+Condensed' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
<!--animate-->
<link href="../../resources/css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="../../resources/js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- start-smooth-scrolling-->
<script type="text/javascript" src="../../resources/js/move-top.js"></script>
<script type="text/javascript" src="../../resources/js/easing.js"></script>
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!--//end-smooth-scrolling-->
</head>
<body>
	<!--banner-->
	<div class="banner about-banner">
		<div class="container">
			<!--header-->
			<div class="header">
				<div class="logo">
					<h1 class="wow zoomIn animated" data-wow-delay=".5s"><a href="/jcw/">Exercise story</a></h1>
				</div>
				<div class="top-nav">
					<span class="menu"><img src="../../resources/img/menu.png" alt=""/></span>
					<ul>
						<li class="wow slideInDown animated" data-wow-delay=".5s"><a href="/jcw/">Home</a></li>
						<li class="wow slideInDown" data-wow-delay=".6s"><a class="active" href="/jcw/about">About</a></li>
						<li class="wow slideInDown" data-wow-delay=".7s"><a href="/jcw/notice/list">notice</a></li>
						<li class="wow slideInDown" data-wow-delay=".8s"><a href="/jcw/board/list">Board</a></li>
						<li class="wow slideInDown" data-wow-delay=".9s"><a href="/jcw/contact/index">Contact</a></li>
						<li class="wow slideInDown" data-wow-delay=".9s"><a href="/customLogout">logout</a></li>
					</ul>
					<!-- script-for-menu -->
					<script>
						$("span.menu").click(function(){
							$(".top-nav ul").slideToggle("slow" , function(){
							});
						});
					</script>
					<!-- script-for-menu -->
				</div>
				<div class="clearfix"> </div>
			</div>
			<!--//header-->
			<div class="bnr-text wow slideInLeft animated" data-wow-delay=".7s">
				<h2 class="bnr-title agileinfo">Traditional baking of food</h2>
			</div>
		</div>
	</div>
	<!--//banner-->
	<!--about-page-->
	<!--about-info-->
	<div class="about">
		<div class="container">
			<h3 class="title wow fadeInDown animated" data-wow-delay=".5s">About Us</h3>
			<div class="about-info w3agile-info">
				<div class="col-md-6 about-left wow fadeInLeft animated" data-wow-delay="1s">
					<img src="../../resources/img/about.jpg" width="100px" alt="" class="img"/>
				</div>
				<div class="col-md-6 about-right wow fadeInRight animated" data-wow-delay="1s">
					<h4>자기소개</h4>
					<ul>
						<li>이름:정찬우</li>
						<li>소속:영남이공대 컴퓨터 정보과</li>
						<li>2021년 2월 졸업예정</li>
						
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--//about-info-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-info w3agile">
				<div class="col-md-12 footer-grids footer-address">
					<h3 class="wow fadeInDown animated" data-wow-delay=".5s">Contact Us:</h3>
					<ul>
						<li class="wow slideInLeft animated" data-wow-delay=".5s"><i class="glyphicon glyphicon-send"></i> 170 Hyeonchung-ro Nam-gu <span> Daegu ,Korea </span></li>
						<li class="wow slideInLeft animated" data-wow-delay=".5s"><i class="glyphicon glyphicon-phone"></i> +11 222 3333 <span> +00 1111 222 </span></li>
						<li class="wow slideInLeft animated" data-wow-delay=".5s"><i class="glyphicon glyphicon-envelope"></i> jcwoo1213@naver.com</li>
					</ul>
				</div>


				<div class="clearfix"> </div>
			</div>
			<div class="footer-copy wow slideInUp animated" data-wow-delay=".5s">
				<p>© 2016 Tasty Food. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
			</div>
		</div>
	</div>
	<!--//footer-->
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
		$(document).ready(function() {

			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear'
			};

			$().UItoTop({ easingType: 'easeOutQuart' });

		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->
	<!--scrolling js-->
	<script src="../../resources/js/jquery.nicescroll.js"></script>
	<script src="../../resources/js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../resources/js/bootstrap.js"></script>
</body>
</html>

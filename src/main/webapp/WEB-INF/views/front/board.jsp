<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<style>
	.layer{
  position:absolute;
  left:50%;
  transform:translate(-50%,-100%);
	}
</style>
<head>
<title>Tasty Food a Hotel Category Flat Bootstrap Responsive Website Template | Blog :: w3layouts</title>
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
						<li class="wow slideInDown animated" data-wow-delay=".5s"><a class="active" href="/jcw/">Home</a></li>
						<li class="wow slideInDown" data-wow-delay=".6s"><a href="/jcw/about">About</a></li>
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
			<div class="bnr-text wow slideInLeft animated" data-wow-delay=".9s">
				<h2 class="bnr-title">Traditional baking of food</h2>
			</div>
		</div>
	</div>
	<!--//banner-->
	<!--blog-->
	<div class="blog">
		<div class="container">
			<h3 class="title wow slideInDown animated" data-wow-delay=".5s">Our Blog</h3>

				<c:forEach items="${list}" var="board">
					
					<div class="blog wow slideInRight animated" data-wow-delay=".5s">
						<div class="blog-img">
							<c:if test="${board.img != null}">
								<a><img src="/resources/upload/${board.img}" class="img-responsive zoom-img" id=" thumb_${i}" ></a>
							</c:if>
							<c:if test="${board.img == null}">
								<a><img src="/resources/img/empty-icons.jpg" class="img-responsive zoom-img" id=" thumb_${i}" ></a>
							</c:if>
						</div>
						<div class="blog-text">
							<h2 class="wow fadeInDown animated" data-wow-delay=".5s"><a class='move' href="<c:out value="${board.idx}" />"><c:out value="${board.title}" /></a></h2>
							<p class="wow fadeInDown animated" data-wow-delay=".5s">
								writer:<c:out value="${board.writer}" /><br/>
								작성:<fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}" /><br/>
								조회수:<c:out value="${board.count} "/>
							</p>
							
						</div>
					</div>

				</c:forEach>

		</div>
	</div>

	<div class='layer'>
		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<li class="paginate_button previous"><a href="${pageMaker.startPage -1}">Previous</a></li>
			</c:if>
			
			<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
				<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
					<a href="${num}">${num}</a>
				</li>
			</c:forEach>
			
			<c:if test="${pageMaker.next}">
				<li class="paginate_button next"><a href="${pageMaker.endPage +1 }">Next</a></li>
			</c:if>

		</ul>
	</div>
				<!-- 페이징 Form 시작 -->
	<form id='actionForm' action="list" method='get'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
	</form>
				<!-- 페이징 Form 끝 -->
	
	<div class="container">
	<h1><a href="create"><span class="label label-default col-md-12">write</span></a></h1>
	</div>
	<!--//blog-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-info w3agile">
				<div class="col-md-12 footer-grids footer-address">
					<h3 class="wow fadeInDown animated" data-wow-delay=".5s">Contact Us:</h3>
					<ul>
						<li class="wow slideInLeft animated" data-wow-delay=".5s"><i class="glyphicon glyphicon-send"></i> 123 San Sebastian <span> New York City USA. </span></li>
						<li class="wow slideInLeft animated" data-wow-delay=".5s"><i class="glyphicon glyphicon-phone"></i> +11 222 3333 <span> +00 1111 222 </span></li>
						<li class="wow slideInLeft animated" data-wow-delay=".5s"><i class="glyphicon glyphicon-envelope"></i> <a href="mailto:example@mail.com"> mail@example.com</a></li>
					</ul>
				</div>


				<div class="clearfix"> </div>
			</div>
			<div class="footer-copy wow slideInUp animated" data-wow-delay=".5s">
				<p>Â© 2016 Tasty Food. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
			</div>
		</div>
	</div>
	<!--//footer-->
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">

		$(document).ready(function() {
			var actionForm = $("#actionForm");
			$(".paginate_button a").on("click", function(e) {
				
				 e.preventDefault();
				 console.log('click');
				 actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				 actionForm.submit();
			});

			$(".move").on("click",function(e) {
				e.preventDefault();
				actionForm.append("<input type='hidden' name='idx' value='" + $(this).attr("href")	+ "'>");
				actionForm.attr("action", "/jcw/board/view");
				actionForm.submit();
			});
			
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

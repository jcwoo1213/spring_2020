<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<style>
	.box{
		height:700px;
	}
	.layer{
  position:absolute;
  left:50%;
  transform:translate(-50%,-100%);
	}
</style>

<head>
<title>Tasty Food a Hotel Category Flat Bootstrap Responsive Website Template | Contact :: w3layouts</title>
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
				<h2 class="bnr-title wthree-title">Traditional baking of food</h2>
			</div>
		</div>
	</div>
	<!--//banner-->
	<!--contact-->
	<div class="address"><!--address-->
		<div class="container">
			<h3 class="title wow fadeInDown animated" data-wow-delay=".5s">Contact</h3>
			<div class="address-row" id="wrapper">
				<div class="col-md-6 address-left wow agile fadeInLeft animated " data-wow-delay=".5s">
					<div class="address-grid box">
						<h4 class="wow fadeIndown animated" data-wow-delay=".5s">DROP TO MESSAGE</h4>
						<form method="post" action="/jcw/contact/create">
							<input class="wow fadeIndown animated" data-wow-delay=".6s" type="text" placeholder="writer" id="writer" name="writer" required="" value="<sec:authentication property="principal.username"/>" readonly>
							<input class="wow fadeIndown animated" data-wow-delay=".6s" type="text" placeholder="title" id="title" name="title" required="" value="">
							<textarea class="wow fadeIndown animated" data-wow-delay=".8s" placeholder="Message" required="" id="content" name="content"></textarea>
							<input type="hidden"name="${_csrf.parameterName}" value="${_csrf.token}" />
							<input class="wow fadeIndown animated" data-wow-delay=".9s" type="submit" value="SEND">
							<input class="wow fadeIndown animated" data-wow-delay=".9s" type="reset" value="reset">
						</form>
					</div>
				</div>
				<div class="col-md-6 address-right wow agile fadeInLeft animated box">
					<div class="address-info wow fadeInRight animated box" data-wow-delay=".5s">
						<h4>My Message</h4>
					
						<table class="table">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody id="list">
							</tbody>
						</table>
						<div class="pagebar"></div>
					</div>
					
				</div>
				
			</div>
		</div>

	</div>
	
	<!--//contact-->
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
				<p>© 2016 Tasty Food. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
			</div>
		</div>
	</div>
	<!--//footer-->
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
	
	function getList(param, callback, error) {
		console.log("getList reply..............");
		
		var writer = '<sec:authentication property="principal.username"/>';
		var page = param.page || 1; // param.page 가 null 이면 1로 설정 
		
		$.getJSON("/jcw/contact/listmessage/" + page + ".json", function(data) {
			if (callback) {
				//callback(data); // 댓글 목록만 가져오는 경우 
	            callback(data.replyCnt,data.list); //댓글 숫자와 목록을 가져오는 경우
	            //console.log("data========"+data); 
			}
		}).fail(function(xhr, status, err) {
			if (error) {
				error(xhr.responseText, xhr.status);
			}
		});
	}
	var pageNum=1;
	function displayTime(timeValue) {

		var today = new Date();
		var gap = today.getTime() - timeValue;
		var dateObj = new Date(timeValue);
		var str = "";
		if (gap < (1000 * 60 * 60 * 24)) {
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi,
					':', (ss > 9 ? '' : '0') + ss ].join('');
		} else {
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1; // getMonth() is zero-based
			var dd = dateObj.getDate();
			return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/',
					(dd > 9 ? '' : '0') + dd ].join('');
		}
	}
	function showReplyPage(replyCnt) {
		
		var replyPageFooter = $(".pagebar");
		var endNum = Math.ceil(pageNum / 10.0) * 10;
		var startNum = endNum - 9;
		var prev = startNum != 1;
		var next = false;
		if (endNum * 10 >= replyCnt) {
			endNum = Math.ceil(replyCnt / 10.0);
		}
		console.log("endNum" + endNum);
		if (endNum * 10 < replyCnt) {
			next = true;
		}
		var str = "<ul class='pagination layer'>";

		if (prev) {
			str += "<li class='paginate_button '><a  href='"
					+ (startNum - 1)
					+ "'>previous</a></li>";
		}
		for (var i = startNum; i <= endNum; i++) {
			var active = pageNum == i ? "active" : "";

			str += "<li class='paginate_button "+active+"' ><a  href='"+i+"'>"
					+ i + "</li>";
		}
		if (next) {
			str += "<li class='paginate_button '><a  href='"
					+ (endNum + 1) + "'>Next</a></li>"
		}
		str += "</ul></div>";
		replyPageFooter.html(str);
		$(".paginate_button a").on("click",function(e){
			console.log($(this).attr("href"));
			e.preventDefault();
			
			showList($(this).attr("href"));
		});
	}
	function showList(page) {
		pageNum=page;
		getList(
						{
							page : page || 1
						},function(replyCnt, list) {
							commentCount = replyCnt;
							if (page == -1) {
								pageNum = Math.ceil(replyCnt / 10.0);
								showList(pageNum);
								return;
							}
							var str = "";
							if (list == null|| list.length == 0) {
								replyUL.html("");
								return;
							}
							for (var i = 0, len = list.length || 0; i < len; i++) {
								str += "<tr><td>"+list[i].idx+"</td>";
								str += "<td><a href='view?idx="+list[i].idx+"'>"+list[i].title+"</a></td>";
								str += "<td>"+ list[i].writer+ "</td>";
								str += "<td>"+ displayTime(list[i].regdate)+ "</td></tr>";
							}
							$("#list").html(str);
							showReplyPage(replyCnt);
						});//end function

	}//end showList 

	
		$(document).ready(function() {

			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear'
			};
			$().UItoTop({ easingType: 'easeOutQuart' });
			showList(1);
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

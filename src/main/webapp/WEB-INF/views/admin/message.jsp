<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.*" %>    
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Glance Design Dashboard an Admin Panel Category Flat Bootstrap Responsive Website Template | Inbox :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Glance Design Dashboard Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- Bootstrap Core CSS -->
<link href="../../resources/admin/css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link href="../../resources/admin/css/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link href="../../resources/admin/css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons CSS -->

 <!-- side nav css file -->
 <link href='../../resources/admin/css/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css'/>
 <!-- side nav css file -->

 <!-- js-->
<script src="../../resources/admin/js/jquery-1.11.1.min.js"></script>
<script src="../../resources/admin/js/modernizr.custom.js"></script>

<!--webfonts-->
<link href="http://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!--//webfonts-->

<!-- Metis Menu -->
<script src="../../resources/admin/js/metisMenu.min.js"></script>
<script src="../../resources/admin/js/custom.js"></script>
<link href="../../resources/admin/css/custom.css" rel="stylesheet">
<!--//Metis Menu -->

</head>
<body class="cbp-spmenu-push">
	<div class="main-content">
	<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
		<!--left-fixed -navigation-->
		<aside class="sidebar-left">
      <nav class="navbar navbar-inverse">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1><a class="navbar-brand" href="index.html"><span class="fa fa-area-chart"></span> Glance<span class="dashboard_text">Design dashboard</span></a></h1>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="sidebar-menu">
              <li class="header">MAIN NAVIGATION</li>
              <li class="treeview">
                <a href="/admin/member/list">
                <i class="fa fa-laptop"></i> <span>회원관리</span>
                </a>
              </li>
              <li class="treeview">
                <a href="/admin/notice/list">
                <i class="fa fa-edit"></i> <span>공지사항</span>
                </a>
              </li>

              <li class="treeview">
                <a href="/admin/board/list">
                <i class="fa fa-table"></i> <span>게시글 관리</span>
                </a>
              </li>
              <li class="treeview">
                <a href="/admin/message/list">
                <i class="fa fa-envelope"></i> <span>Message</span>
                </a>
              </li>
               <li class="treeview">
                <a href="/customLogout">
                <i class="fa fa-envelope"></i> <span>logout</span>
                </a>
              </li>

            </ul>
          </div>
          <!-- /.navbar-collapse -->
      </nav>
    </aside>
	</div>
          <!-- /.navbar-collapse -->
      </nav>
    </aside>
	</div>
		<!--left-fixed -navigation-->

		<!-- header-starts -->
		<div class="sticky-header header-section ">
			
			<div class="header-right">




				<div class="profile_details">
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">
									
									<div class="user-name">
										<sec:authentication property="principal"  var="pinfo"  />
											<sec:authorize access="isAuthenticated()" >
												<p>Admin Name:<c:out value="${pinfo.member.userName }"/></p>
												<span>login id:<c:out value="${pinfo.username }"/></span>
											</sec:authorize>
									</div>
									
								</div>
							</a>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<h2 class="title1">message</h2>
				<div class="blank-page widget-shadow scroll" id="style-2 div1">
          <table class="table">
            <thead>
              <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성일</th>
                <th>작성자</th>

              </tr>
            </thead>
            <tbody>
              <c:forEach items="${list}" var="message">
						<tr>
							<td><c:out value="${message.idx}"/></td>
							<td><a class='move' href='<c:out value="${message.idx}" />'><c:out value="${message.title}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${message.regdate}" /></td>
							<td><c:out value="${message.writer} "/></td>

						</tr>
					</c:forEach>
            </tbody>
          </table>
          <div class="container">
					           <div class="paging">
           <ul class="pageMove">
           	<c:if test="${pageMaker.prev}">
							<a class="pageMove" href="${pageMaker.startPage -1}">Previous</a>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
							
								<a class="pageMove" href="${num}">${num}</a>
							
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<a class="pageMove" href="${pageMaker.endPage +1 }">Next</a>
						</c:if>
						
          	</ul>
          </div>
          <form id='actionForm' action="list" method='get'>
					<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
					<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
			</form>
				<!-- 페이징 Form 시작 -->

				<!-- 페이징 Form 끝 -->
	</div>
				</div>
			</div>

		</div>
		</div>
		<!--footer-->
		<div class="footer">
		   <p>&copy; 2018 Glance Design Dashboard. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts</a></p>
	   </div>
        <!--//footer-->
	</div>

	<!-- side nav js -->
	<script src='../../resources/admin/js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
      $('.sidebar-menu').SidebarNav()
    </script>
	<!-- //side nav js -->

	<!-- Classie --><!-- for toggle left push menu script -->
		<script src="../../resources/admin/js/classie.js"></script>
		<script>

			$(document).ready(function(){
				var actionForm = $("#actionForm");
				var operForm = $("#operForm" );
				$(".pageMove a").on("click", function(e) {
					 e.preventDefault();
					 console.log('click');
					 actionForm.find("input[name='pageNum']").val($(this).attr("href"));
					 actionForm.submit();
				});
				$(" button[data-oper='del']").on("click" , function(e) {
					
					operForm.find("input[name='userid']").val($(this).val());
					operForm.attr("action" , "del" ).submit();

				});
				$(".move").on("click",function(e) {
					e.preventDefault();
					actionForm.append("<input type='hidden' name='idx' value='" + $(this).attr("href")	+ "'>");
					actionForm.attr("action", "/admin/message/view");
					actionForm.submit();
				});
				})
		</script>
	<!-- //Classie --><!-- //for toggle left push menu script -->

	<!--scrolling js-->
	<script src="../../resources/admin/js/jquery.nicescroll.js"></script>
	<script src="../../resources/admin/js/scripts.js"></script>
	<!--//scrolling js-->

	<!-- Bootstrap Core JavaScript -->
   <script src="../../resources/admin/js/bootstrap.js"> </script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
<title>Glance Design Dashboard an Admin Panel Category Flat Bootstrap Responsive Website Template | Blank Page :: w3layouts</title>
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
		<!--left-fixed -navigation-->

		<!-- header-starts -->
<div class="sticky-header header-section ">
			<div class="header-left">
				<!--notification menu end -->
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">


				<!--search-box-->


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
									
									<div class="clearfix"></div>
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
		       
		        <div class="col-md-6 panel-grids">
		         <h2 class="title1">메시지 보기</h2>
		          <div class="panel panel-default">
		          	<div class="panel-heading">
		              <h3 class="panel-title">${message.title}</h3>
		            </div>
		            <div class="panel-body">
		              ${message.content}
		            </div>
		            <div class="panel-heading">
		             	<h3>writer:${message.writer}</h3>
		             </div>
		             <sec:authentication property="principal"  var="pinfo"  />

					<button data-oper='list'  class="btn btn-default" >list</button>
					<form id='listForm'  action="/admin/notice/list"  method="get" >
						<input type='hidden'  name='pageNum'  value='<c:out value=" ${cri.pageNum}" />' > 
						<input type='hidden'  name='amount'  value='<c:out value=" ${cri.amount}" />' >
					</form>					
		          </div>
		        </div>
		        <div class="col-md-6 panel-grids">

		         <c:if test="${answer !=null}">
		         	 <h2 class="title1">답장</h2>
		          <div class="panel panel-default">
		          	<div class="panel-heading">
		              <h3 class="panel-title">${answer.title}</h3>
		            </div>
		            <div class="panel-body">
		              ${answer.content}
		            </div>
		            <div class="panel-heading">
		             	<h3>writer:${answer.writer}</h3>
		             </div>
		         </c:if>
		       	<c:if test="${answer ==null}">
		         	 <h2 class="title1">답장하기</h2>
		          
		          	 <form class="form-horizontal" action="create" method="post">
            			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            			<input type="hidden" name="message_idx" value="${message.idx}"/>
            			<input type="hidden" name="writer" value="<sec:authentication property="principal.username"/>">
            			<div class="panel panel-default">
            			
             	 <div class="panel-heading ">
             	 <label for="txtarea1" class="col-sm-2 control-label">제목</label>
             	 <div class="col-sm-8">
                  <input  type="text" class="form-control1" id="title" name="title" placeholder="Title:">
                </div>
                
                
              </div>

              <div class="form-group">
                <label for="txtarea1" class="col-sm-2 control-label">내용</label>
                <div class="col-sm-8">
                  <textarea name="content" id="txtarea1" cols="20" rows="20" class="form-control1"></textarea>
                </div>
              </div>

				<div class="panel-heading ">
                   <button type="submit" class="btn btn-default">Submit</button>
                   <button type="reset" class="btn btn-default">reset</button>
				</div>
            </div>
            </form>
		             </div>
		         </c:if>
		            
		             


					<form id='listForm'  action="/admin/notice/list"  method="get" >
						<input type='hidden'  name='pageNum'  value='<c:out value=" ${cri.pageNum}" />' > 
						<input type='hidden'  name='amount'  value='<c:out value=" ${cri.amount}" />' >
					</form>					
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

		<script type="text/javascript">
		$(document).ready(function(){
			
			var operForm=$("#operForm");
			$(" button[data-oper='list']" ).on("click", function(e) {

				$("#listForm" ).submit();

			});
			$("button[data-oper='modify']").on(
					"click" ,
					function(e) {
						operForm.attr("action" , "modify_form" )
								.submit();

					});
							
			$(" button[data-oper='del']").on("click" , function(e) {

				operForm.attr("action" , "del" ).submit();

			});
			})
			
		</script>
		<c:if test='${answer_result == "success"}'>
      <script>
      $(document).ready(function(){
      	alert("답장등록성공");
      });
      </script>
      </c:if>
      <c:if test='${answer_result == "fail"}'>
      <script>
      $(document).ready(function(){
      	alert("답장등록실패");
      });
      </script>
      </c:if>
	<!-- //Classie --><!-- //for toggle left push menu script -->

	<!--scrolling js-->
	<script src="../../resources/admin/js/jquery.nicescroll.js"></script>
	<script src="../../resources/admin/js/scripts.js"></script>
	<!--//scrolling js-->

	<!-- Bootstrap Core JavaScript -->
   <script src="../../resources/admin/js/bootstrap.js"> </script>

</body>
</html>

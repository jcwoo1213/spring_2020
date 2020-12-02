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
        <div class="row">
          <h3 class="title1">관리자 추가</h3>
          <div class="form-three widget-shadow">
            <form id="create_form"class="form-horizontal" action="create" method="post" enctype="multipart/form-data">
            
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>				
              <div class="form-group">
                <label for="disabledinput" class="col-sm-2 control-label">id</label>
                <div class="col-sm-8">
                 <input type="text" Name="userid" id="userid" placeholder="userid" required=""><input id="idcheckbtn"type="button" value="check">
                </div>
                
              </div>
              <div class="form-group">
                <label for="disabledinput" class="col-sm-2 control-label">비밀번호</label>
                <div class="col-sm-8">
                  <input type="password" Name="userpw" placeholder="userpw" required="">
                </div>
                
              </div>

              <div class="form-group">
                <label for="txtarea1" class="col-sm-2 control-label">비밀번호확인</label>
                <div class="col-sm-8">
                  <input type="password" Name="check" placeholder="check" required="">
                </div>
              </div>

              <div class="form-group">
                <label for="txtarea1" class="col-sm-2 control-label">user name</label>
                <div class="col-sm-8">
                  <input type="text" Name="userName" placeholder="username" required="">
                </div>
              </div>
              <input type="hidden" name="idcheck" value="0" id="idcheck">
				<input type="hidden" name="auth" placeholder="auth" value="ROLE_ADMIN">
				<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />

                   <button type="submit" class="btn btn-default">Submit</button>
                   <button type="reset" class="btn btn-default">reset</button>

            </div>
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
		<script>
		function getcheck(param, callback, error) {
			
			var writer = '<sec:authentication property="principal.username"/>';
			var userid = param.userid; // param.page 가 null 이면 1로 설정 
			
			$.getJSON("/jcw/member/check/" + userid + ".json", function(data) {
				if (callback) {
					callback(data); // 댓글 목록만 가져오는 경우 
		            //callback(data.replyCnt,data.list); //댓글 숫자와 목록을 가져오는 경우
		            //console.log("data========"+data); 
				}
			}).fail(function(xhr, status, err) {
				if (error) {
					error(xhr.responseText, xhr.status);
				}
			});
		}

			$(document).ready(function() {
				
				$("#idcheckbtn").on("click",function(e){
					var id=$("#userid").val();
					getcheck({
						userid :id
					},function(data){
						if(data!=0){
							alert("id중복입니다");
							$("#idcheck").val(0);
						}else{
							alert("사용가능");
							$("#idcheck").val(1);
						}
						})
					})
				$("#create_form").on("submit",function(event){
					var password=$(this).find('[name=userpw]').val();
					var check=$(this).find('[name=check]').val();
					var id=$(this).find('[name=userid]').val();
					var idcheck=$(this).find('[name=idcheck]').val();
					if(idcheck==0){
						alert("id중복확인해주세요");
						return false;
					}
					if(check!=password){
						alert("비밀번호가 일치하지 않습니다");
						return false;
					}
				});
			});
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

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
<link href=" ../../../resources/css/style.css"  type=" text/css" 
	rel=" stylesheet"  media=" all" >
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
<script type="text/javascript"  src="../../../resources/js/reply.js" ></script>
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
                <a href="member_manage.html">
                <i class="fa fa-laptop"></i> <span>회원관리</span>
                </a>
              </li>
              <li class="treeview">
                <a href="notice_manage.html">
                <i class="fa fa-edit"></i> <span>공지사항</span>
                </a>
              </li>

              <li class="treeview">
                <a href="blog_manage.html">
                <i class="fa fa-table"></i> <span>게시글 관리</span>
                </a>
              </li>
              <li class="treeview">
                <a href="message.html">
                <i class="fa fa-envelope"></i> <span>Message</span>
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

				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<div class="profile_details_left"><!--notifications of menu start -->
					<ul class="nofitications-dropdown">
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">4</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 3 new messages</h3>
									</div>
								</li>
								<li><a href="#">
								   <div class="user_img"><img src="../../resources/admin/images/1.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet</p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>
								</a></li>
								<li class="odd"><a href="#">
									<div class="user_img"><img src="../../resources/admin/images/4.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								  <div class="clearfix"></div>
								</a></li>
								<li><a href="#">
								   <div class="user_img"><img src="../../resources/admin/images/3.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all messages</a>
									</div>
								</li>
							</ul>
						</li>
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">4</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 3 new notification</h3>
									</div>
								</li>
								<li><a href="#">
									<div class="user_img"><img src="../../resources/admin/images/4.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet</p>
									<p><span>1 hour ago</span></p>
									</div>
								  <div class="clearfix"></div>
								 </a></li>
								 <li class="odd"><a href="#">
									<div class="user_img"><img src="../../resources/admin/images/1.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>
								 </a></li>
								 <li><a href="#">
									<div class="user_img"><img src="../../resources/admin/images/3.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>
								 </a></li>
								 <li>
									<div class="notification_bottom">
										<a href="#">See all notifications</a>
									</div>
								</li>
							</ul>
						</li>
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">8</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 8 pending task</h3>
									</div>
								</li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Database update</span><span class="percentage">40%</span>
										<div class="clearfix"></div>
									</div>
									<div class="progress progress-striped active">
										<div class="bar yellow" style="width:40%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
									   <div class="clearfix"></div>
									</div>
									<div class="progress progress-striped active">
										 <div class="bar green" style="width:90%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
										<div class="clearfix"></div>
									</div>
								   <div class="progress progress-striped active">
										 <div class="bar red" style="width: 33%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
									   <div class="clearfix"></div>
									</div>
									<div class="progress progress-striped active">
										 <div class="bar  blue" style="width: 80%;"></div>
									</div>
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all pending tasks</a>
									</div>
								</li>
							</ul>
						</li>
					</ul>
					<div class="clearfix"> </div>
				</div>
				<!--notification menu end -->
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">


				<!--search-box-->
				<div class="search-box">
					<form class="input">
						<input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
						<label class="input__label" for="input-31">
							<svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
								<path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
							</svg>
						</label>
					</form>
				</div><!--//end-search-box-->

				<div class="profile_details">
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">
									<span class="prfil-img"><img src="../../resources/admin/images/2.jpg" alt=""> </span>
									<div class="user-name">
										<p>Admin Name</p>
										<span>Administrator</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>
								</div>
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li>
								<li> <a href="#"><i class="fa fa-user"></i> My Account</a> </li>
								<li> <a href="#"><i class="fa fa-suitcase"></i> Profile</a> </li>
								<li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
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
        <h2 class="title1">게시글 보기</h2>
        	</div>
        <div class="col-md-12 panel-grids">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title">${board.title}</h3>
            </div>
            <div class="panel-body">
              ${board.content}
            </div>
            
            <div>
            <h3>writer:${board.writer} </h3>
            		<c:if test="${pinfo.username eq board.writer}" >	
							<button data-oper='modify'  class="btn btn-default" >Modify</button>
							
					</c:if>
					
						<c:if test="${pinfo.username eq notice.writer}" >	

						<button data-oper='modify'  class="btn btn-default" >Modify</button>
							
					</c:if>
					<button data-oper='del'  class="btn btn-default" >delete</button>
					<button data-oper='list'  class="btn btn-default" >list</button>	
					<form id='operForm'  action="jcw/board/del"  method="post" >
				<input type='hidden'  id='idx'  name='idx'  value='<c:out value="${board.idx}" />' >
				<input type="hidden"  name="${_csrf.parameterName}"  value="${_csrf.token}"  /> 
				<input type='hidden'  name='pageNum'  value='<c:out value="${cri.pageNum}" />' > 
				<input type='hidden'  name='amount'  value='<c:out value="${cri.amount}" />' >
				<input type='hidden'  name='writer'  value='<c:out value="${board.writer}" />' >
				</form>

              </div>
          </div>
          <h2 class="title1">댓글 </h2>
          <div>
	          <div class="panel panel-default chat">
	
	          </div>
         	 	<div class="panel-footer">
 				</div>
 		</div>
 	

		</div>
		<!--footer-->

        <!--//footer-->
	</div>
		<div class="modal fade"  id="myModal"  tabindex=" -1"  role="dialog"  aria-labelledby="myModalLabel"  aria-hidden="true" >
		<div class="modal-dialog" >
			<div class=" modal-content" >
				<div class=" modal-header" >
					<button type="button"  class="close"  data-dismiss="modal"  aria-hidden="true" >&times;</button>
					<h4 class="modal-title"  id="myModalLabel" >Comment MODAL</h4>
				</div>
				<div class="modal-body" >
					<div class="form-group" >
		                <label>comment</label> 
		                <input class="form-control"  name='reply'  value='New Reply!!!!' >
					</div>      
					<div class="form-group" >
						<label>writer</label> 
						<input class="form-control"  name='replyer'  value='replyer' >
					</div>
					<div class="form-group" >
						<label>Date</label> 
						<input class="form-control"  name='replyDate'  value='2018-01-01 13:13' >
					</div>
				</div>
				
				<div class="modal-footer" >
					<button id='modalModBtn'  type="button"  class=" btn btn-warning" >Modify</button>
					<button id='modalCloseBtn'  type="button"  class=" btn btn-default" >Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
        <!-- /.modal-dialog -->
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
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;

			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
		<script type="text/javascript">
		

		$(document).ready(
						function() {
							var operForm = $("#operForm" );
							var replyUL = $(".chat" );
							var commentCount = 0;
							var pageNum = 1;
							var modal = $(".modal" );
						    var modalInputReply = modal.find("input[name='reply' ]" );
						    var modalInputReplyer = modal.find(" input[name='replyer' ]" );
						    var modalInputReplyDate = modal.find(" input[name='replyDate' ]" );
						    var modalModBtn = $("#modalModBtn" );
						    var modalCloseBtn=$("#modalCloseBtn")
							var defaults = {
								containerID : ' toTop' , // fading element id
								containerHoverID : ' toTopHover' , // fading element hover id
								scrollSpeed : 1200,
								easingType : ' linear' 
							};

							var board_idx = '<c:out value="${board.idx}"/>' ;
							var login_id;
							var idx;
							var writer='' ;
						    <sec:authorize access="isAuthenticated()" >
					    	 login_id ='<sec:authentication property="principal.username"/>' ;   
							</sec:authorize> 
							var csrfHeaderName="${_csrf.headerName}" ;
							var csrfTokenValue="${_csrf.token}" ;
						 	// Ajax Spring Security Header
						    $(document).ajaxSend(function(e, xhr, options) { 
								xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
							});
							function showReplyPage(replyCnt) {
								
								var replyPageFooter = $(".panel-footer" );
								var endNum = Math.ceil(pageNum / 10.0) * 10;
								var startNum = endNum - 9;

								var prev = startNum != 1;
								var next = false;

								if (endNum * 10 >= replyCnt) {
									endNum = Math.ceil(replyCnt / 10.0);
								}
								console.log("endNum"  + endNum);
								if (endNum * 10 < replyCnt) {
									next = true;
								}

								var str = " <ul class='pagination pull-right' >" ;

								if (prev) {
									str += " <li class='paginate_button' ><a  href='"
											+ (startNum - 1)
											+ "'>previous</a></li>" ;
								}
								for (var i = startNum; i <= endNum; i++) {
									var active = pageNum == i ? "active" : "" ;

									str += " <li class='paginate_button "+active+"' ><a href='"+i+"'>"+i+"</a></li>";
								}
								if (next) {
									str += " <li class='paginate_button'><a  href='" 
											+ (endNum + 1) + "' >Next</a></li>" 
								}
								str += "</ul></div>" ;

								
								replyPageFooter.html(str);

								$("a" ).on(" click" ,function(e){
									e.preventDefault();
									showList($(this).attr("href" ));
								});
							}
							function showList(page) {
								var button = " <h1><button data-oper='comment_modify'  class='btn btn-default'  value='" ;
								var button2= "'>Modify</button><button data-oper='comment_del'  class='btn btn-default'  value='";
								var button3= "'>delete</button></h1>" ;
								pageNum=page;
								replyService.getList(
												{
													board_idx : board_idx,
													page : page || 1
												},function(replyCnt, list) {
													commentCount = replyCnt;
													console.log(list);
													if (page == -1) {
														pageNum = Math
																.ceil(replyCnt / 10.0);
														showList(pageNum);
														return;
													}

													var str = "" ;

													if (list == null|| list.length == 0) {
														replyUL.html("");
														return;
													}

													for (var i = 0, len = list.length || 0; i < len; i++) {
														var test2 = list[i].writer;

														str += " <div class='comments-top-top wow fadeInLeft animated' data-wow-delay=' .5s' >" ;
														str += " <div class='top-comment-right'><ul>" ;
														str += " <li><span class='left-at'  color='#999'><a>" 
																+ list[i].writer+  
																 " </a></span></li>" ;
														str += " <li><span class='right-at'>" 
																+ replyService
																		.displayTime(list[i].regdate)
																+ " </span></li></ul>" ;
														str += " <p>" 
																+ list[i].content
																+ " </p>" ;
														if (login_id == list[i].writer) {
															str += button+i+button2+i+button3;
															str +=" <input type='hidden'  id='writer"+i+"'  value='" +list[i].writer+"'>" ;
															str +=" <input type='hidden'  id='idx"+i+"'  value='"+list[i].idx+"'>" 		
														} 
														str += " <div class='clearfix'  /></div><div class='clearfix' > </div></div>";

													}
													replyUL.html(str);

													showReplyPage(replyCnt);

													$(" button[data-oper='comment_modify']").on(
															" click" ,
															function(e) {
																console.log($("#writer1").val());
																idx=$("#idx"+$(this).val()).val();
																writer=$("#writer"+$(this).val()).val();
																replyService.get(idx,function(comment){
																	modalInputReply.val(comment.content);
																	modalInputReplyer.val(comment.writer).attr("readonly","readonly");
																	modalInputReplyDate.val(replyService.displayTime(comment.regdate));
																})
																$(".modal").modal("show");
																
													});

													modalModBtn.on("click" ,function(e){
														var comment={idx:idx,content:modalInputReply.val(),writer:modalInputReplyer.val()};
														console.log(comment);

														replyService.update(comment,function(result){
															alert(" 수정되었습니다" );
															showList(pageNum);
														});
														$(".modal").modal("hide");
													});



													modalCloseBtn.on("click" ,function(e){

														$(".modal").modal("hide");
													});

															
													$(" button[data-oper='comment_del']").on("click" , function(e) {
														idx=$("#idx"+$(this).val()).val();
														writer=$("#writer"+$(this).val()).val();
														
														replyService.remove(idx=$("#idx" +$(this).val()).val(),writer,function(result){
															alert("삭제되었습니다" );
															showList(pageNum);
														});

													});//end comment_del

												});//end function

							}//end showList 
							showList(1);

							
							$("button[data-oper='modify']").on(
									"click" ,
									function(e) {
										operForm.attr("action" , "modify_form" )
												.submit();

									});
											
							$(" button[data-oper='del']").on("click" , function(e) {

								operForm.attr("action" , "del" ).submit();

							});
							$(" button[data-oper='list']" ).on("click", function(e) {

								$("#listForm" ).submit();

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

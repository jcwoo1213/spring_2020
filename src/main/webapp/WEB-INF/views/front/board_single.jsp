<%@ page language="java"  contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Tasty Food a Hotel Category Flat Bootstrap Responsive
	Website Template | Single Page :: w3layouts</title>
<!--mobile apps-->
<meta name=" viewport"  content=" width=device-width, initial-scale=1" >
<meta http-equiv=" Content-Type"  content=" text/html; charset=utf-8"  />
<meta name=" keywords" 
	content=" Tasty Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	Smartphone Compatible web template, free Webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"  />
<script type=" application/x-javascript" >
	
	 addEventListener(" load" , function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!--mobile apps-->
<!--Custom Theme files -->
<link href=" ../../resources/css/bootstrap.css"  type=" text/css" 
	rel=" stylesheet"  media=" all" >
<link href=" ../../resources/css/style.css"  type=" text/css" 
	rel=" stylesheet"  media=" all" >
<!-- //Custom Theme files -->
<!-- js -->
<script src=" ../../resources/js/jquery-1.11.1.min.js" ></script>
<!-- //js -->
<!--web-fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Stint+Ultra+Condensed' 
	rel=' stylesheet'  type=' text/css' >
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' 
	rel=' stylesheet'  type=' text/css' >
<!--animate-->
<link href=" ../../resources/css/animate.css"  rel=" stylesheet" 
	type=" text/css"  media=" all" >
<script src=" ../../resources/js/wow.min.js" ></script>

<script>
	new WOW().init();
</script>
<!--//end-animate-->
<!-- start-smooth-scrolling-->
<script type="text/javascript"  src="../../resources/js/move-top.js" ></script>
<script type="text/javascript"  src="../../resources/js/easing.js" ></script>
<script type="text/javascript"  src="../../resources/js/reply.js" ></script>
<script type="text/javascript" >
		jQuery(document).ready(function($) {
			$(" .scroll" ).click(function(event){
				event.preventDefault();
				$(' html,body' ).animate({scrollTop:$(this.hash).offset().top},1000);
			});
			
		});
</script>

<!--//end-smooth-scrolling-->
</head>
<body>
	<!--banner-->
	<div class=" banner about-banner" >
		<div class=" container" >
			<!--header-->
			<div class="header">
				<div class="logo">
					<h1 class="wow zoomIn animated" data-wow-delay=".5s"><a href="/jcw/">Exercise story</a></h1>
				</div>
				<div class="top-nav">
					<span class="menu"><img src="../../resources/img/menu.png" alt=""/></span>
					<ul>
						<li class="wow slideInDown animated" data-wow-delay=".5s"><a href="/jcw/">Home</a></li>
						<li class="wow slideInDown" data-wow-delay=".6s"><a href="/jcw/about">About</a></li>
						<li class="wow slideInDown" data-wow-delay=".7s"><a href="/jcw/notice/list">notice</a></li>
						<li class="wow slideInDown" data-wow-delay=".8s"><a class="active" href="/jcw/board/list">Board</a></li>
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
			<div class=" bnr-text wow slideInLeft animated"  data-wow-delay=" .9s" >
				<h2 class=" bnr-title" >Traditional baking of food</h2>
			</div>
		</div>
	</div>
	<!--//banner-->
	<!--single-page-->
	<div class=" blog single-page" >
		<div class=" container" >
			<div class=" blog-info" >

				<div class=" wow slideInRight animated"  data-wow-delay=" .5s" >
					<div class=" blog-img" >
					
						
							<div class=" form-group" >
							<c:if test="${board.img != null}">
								<img src="/resources/upload/${board.img}">
							</c:if>
								
							</div>
						
					</div>
					<div class=" blog-text" >
						<h4 class=" w3l wow fadeInDown animated"  data-wow-delay=" .5s" >
							<c:out value=" ${board.title}"  />
						</h4>
						<p class=" wow fadeInDown animated"  data-wow-delay=" .5s" >
							<c:out value=" ${board.content}"  />
						</p>
						<div class=" article-links wow fadeInDown animated"  data-wow-delay=" .7s" ></div>
					</div>
				</div>
				<div class=" clearfix" ></div>
			</div>
			<form id='operForm'    method="post" >
				<input type='hidden'  id='idx'  name='idx'  value='<c:out value=" ${board.idx}" />' >
				<input type="hidden"  name="${_csrf.parameterName}"  value="${_csrf.token}"  /> 
				<input type='hidden'  name='pageNum'  value='<c:out value="${cri.pageNum}" />' > 
				<input type='hidden'  name='amount'  value='<c:out value="${cri.amount}" />' >
				<input type='hidden'  name='writer'  value='<c:out value="${board.writer}" />' >
			</form>
			<form id='listForm'  action="/jcw/board/list"  method="get" >
				<input type='hidden'  name='pageNum'  value='<c:out value=" ${cri.pageNum}" />' > 
				<input type='hidden'  name='amount'  value='<c:out value=" ${cri.amount}" />' >
			</form>
			<!--admin-text-->
			<div class="admin-text wthree wow fadeInDown animated" 
				data-wow-delay=" .5s" >
				<h5>
					Written By
					<c:out value="${board.writer}"  />
				</h5>
				<sec:authentication property="principal"  var="pinfo"  />
				<sec:authorize access="isAuthenticated()" >

				<h1>
					<c:if test="${pinfo.username eq board.writer}" >	
							<button data-oper='modify'  class="btn btn-default" >Modify</button>
							<button data-oper='del'  class="btn btn-default" >delete</button>
					</c:if>
					<button data-oper='list'  class="btn btn-default" >list</button>					
				</h1>	
				</sec:authorize>
				
			</div>
		</div>
		<!--//admin-text-->

		<!--comments-->
		<div class="container" >
			<div class="comment-grid-top" >
				<h3 class="wow fadeInDown animated commenttitle"  data-wow-delay=" .5s" ></h3>
				<div class="chat" ></div>
				<div class="panel-footer" ></div>
			</div>
			<!--//comments-->
			<div class="artical-commentbox" >
				<h3 class="wow fadeInDown animated"  data-wow-delay=".5s" >leave
					a comment</h3>
				<div class=" table-form agileinfo" >
					<form action=" /jcw/comment/create"  method="post"  enctype="multipart/form-data" >
						<input type='hidden'  id='board_idx'  name='board_idx' value='${board.idx}' > 
						<input type="hidden"  name="${_csrf.parameterName}"  value="${_csrf.token}"  />
						<input type='hidden'  id='pageNum'  name='pageNum'  value='${cri.pageNum}' >
						<input type='hidden'  id='amount'  name='amount'  value='${cri.amount}' >
						<input type="hidden"  id="writer" name="writer"  value="${pinfo.username}" >
						<textarea name="content"  id="content"  class="wow fadeInDown animated"  data-wow-delay=".7s"  onfocus="this.value = ' ' ;"  onblur="if (this.value == ' ' ) {this.value = 'Message' ;}" >Message</textarea>
						<input class="wow zoomIn animated"  data-wow-delay=".5s" type="submit"  value="Send" >
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--//blog-->
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
	<!-- /댓글 modal -->
	<!--footer-->
	<div class="footer" >
		<div class="container" >
			<div class="footer-info w3agile" >
				<div class=" col-md-12 footer-grids footer-address" >
					<h3 class=" wow fadeInDown animated"  data-wow-delay=" .5s" >Contact Us:</h3>
					<ul>
						<li class="wow slideInLeft animated" data-wow-delay=".5s"><i class="glyphicon glyphicon-send"></i> 170 Hyeonchung-ro Nam-gu <span> Daegu ,Korea </span></li>
						<li class="wow slideInLeft animated" data-wow-delay=".5s"><i class="glyphicon glyphicon-phone"></i> +11 222 3333 <span> +00 1111 222 </span></li>
						<li class="wow slideInLeft animated" data-wow-delay=".5s"><i class="glyphicon glyphicon-envelope"></i> jcwoo1213@naver.com</li>
					</ul>
				</div>


				<div class=" clearfix" ></div>
			</div>
			<div class=" footer-copy wow slideInUp animated"  data-wow-delay=" .5s" >
				<p>
					Â© 2016 Tasty Food. All rights reserved | Design by <a
						href=" http://w3layouts.com" >W3layouts</a>
				</p>
			</div>
		</div>
	</div>
	<!--//footer-->
	<!--smooth-scrolling-of-move-up-->


	<!--//smooth-scrolling-of-move-up-->
	<!--scrolling js-->
	<script src=" ../../resources/js/jquery.nicescroll.js" ></script>
	<script src=" ../../resources/js/scripts.js" ></script>
	<!--//scrolling js-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src=" ../../resources/js/bootstrap.js" ></script>
</body>
<script type="text/javascript">

	$(document).ready(
					function() {
						var commenttitle=$(".commenttitle");
						var operForm = $("#operForm" );
						var replyUL = $(".chat" );
						var commentCount = 0;
						var pageNum = 1;
						var modal = $(".modal" );
					    var modalInputReply = modal.find("input[name='reply' ]" );
					    var modalInputReplyer = modal.find(" input[name='replyer' ]" );
					    var modalInputReplyDate = modal.find(" input[name='replyDate' ]" );
					    var modalModBtn = $("#modalModBtn" );
						var defaults = {
							containerID : ' toTop' , // fading element id
							containerHoverID : ' toTopHover' , // fading element hover id
							scrollSpeed : 1200,
							easingType : ' linear' 
						};
						$().UItoTop({
							easingType : 'easeOutQuart' 
						});
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

							$(".paginate_button a" ).on(" click" ,function(e){
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
												commenttitle.html(commentCount+"\tResponed")
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
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<html>
<script src="../../resources/js/jquery-1.11.1.min.js"></script>
<!-- Head -->
<head>

	<title>User Account Creation Form A Flat Responsive Widget Template :: W3layouts</title>

	<!-- For-Mobile-Apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="User Account Creation Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //For-Mobile-Apps -->

	<!-- Style --> <link rel="stylesheet" href="../../../resources/css/create_form_style.css" type="text/css" media="all" />

	<!-- Web-Fonts -->
		<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900" 	type="text/css" media="all">
		<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Raleway:400,500,600,700,800" 		type="text/css" media="all">
	<!-- //Web-Fonts -->

</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>USER ACCOUNT CREATION FORM</h1>

	<div class="container">


		<h2>Create a New Account</h2>

		<div class="contact">
			<form role="form" id="create_form"action="create" method="post" enctype="multipart/form-data">
				<input type="text" Name="userid" id="userid" placeholder="userid" required=""><input id="idcheckbtn"type="button" value="check">
				<input type="password" Name="userpw" placeholder="userpw" required="">
				<input type="password" Name="check" placeholder="check" required="">
				<input type="text" Name="userName" placeholder="username" required="">
				<input type="hidden" name="idcheck" value="0" id="idcheck">
				<input type="hidden" name="auth" placeholder="auth" value="ROLE_MEMBER">
				<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
				<div class="send-button">
					<input type="submit" value="CREATE ACCOUNT">
				</div>
			</form>
		</div>

	</div>

	<div class="footer">
		<p> &copy; 2016 User Account Creation Form. All Rights Reserved | Design by <a href="http://w3layouts.com" target="=_blank">W3layouts</a></p>
	</div>

</body>
<!-- //Body -->
<script type="text/javascript">
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
</html>

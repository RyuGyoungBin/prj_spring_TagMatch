<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
    <meta name="author" content="Ansonika">
    <title>CITY TOURS - City tours and travel site template by Ansonika</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- COMMON CSS -->
	<link href="/resources/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/assets/css/style.css" rel="stylesheet">
	<link href="/resources/assets/css/vendors.css" rel="stylesheet">
	
	<!-- CUSTOM CSS -->
	<link href="/resources/assets/css/custom.css" rel="stylesheet">
        
</head>
<body>

    <div id="preloader">
        <div class="sk-spinner sk-spinner-wave">
            <div class="sk-rect1"></div>
            <div class="sk-rect2"></div>
            <div class="sk-rect3"></div>
            <div class="sk-rect4"></div>
            <div class="sk-rect5"></div>
        </div>
    </div>
    <!-- End Preload -->

    <div class="layer"></div>
    <!-- Mobile menu overlay mask -->
	<main>
     <section id="hero" class="login">
    	<div class="container">
        	<div class="row justify-content-center">
            	<div class="col-xl-4 col-lg-5 col-md-6 col-sm-8">
                	<div id="login" style="margin:60px 0 71px;">
                    		<div class="text-center"><img src="img/logo_sticky.png" alt="Image" width="160" height="34"></div>
                            <hr>
                            <form>
                                <div class="form-group">
                                    <label>이름</label>
                                    <input type="text" class=" form-control "  id=id placeholder="이름">
                                </div>
                                <div class="form-group">
                                    <label>아이디</label>
                                    <input type="text" class=" form-control "  id=id placeholder="아이디">
                                </div>
                                <div class="form-group">
                                    <label>비밀번호</label>
                                    <input type="text" class=" form-control "  id=id placeholder="비밀번호">
                                </div>
                                <div class="form-group">
                                    <label>비밀번호 확인</label>
                                    <input type="text" class=" form-control "  id=id placeholder="비밀번호 확인">
                                </div>
                                <div class="form-group">
                                    <label>이메일</label>
                                    <input type="text" class=" form-control "  id=id placeholder="이메일">
                                </div>
                                <div class="form-group">
                                    <label>생년월일</label>
                                    <input type="date" class=" form-control "  id=id placeholder="생년월일">
                                </div>
                                <div class="form-group">
                                    <label>주소</label>
                                    <input type="text" class=" form-control "  id=id placeholder="주소">
                                </div>
                                <div class="form-group">
                                    <label>전화번호</label>
                                    <input type="text" class=" form-control "  id=id placeholder="전화번호">
                                </div>
                                <button type=button class="btn_full" >회원가입</button>
                            </form>
                        </div>
                </div>
            </div>
        </div>
    </section>
	</main><!-- End main -->

	

	<div id="toTop"></div><!-- Back to top button -->
	
	<!-- Search Menu -->
	<div class="search-overlay-menu">
		<span class="search-overlay-close"><i class="icon_set_1_icon-77"></i></span>
		<form role="search" id="searchform" method="get">
			<input value="" name="q" type="text" placeholder="Search..." />
			<button type="submit"><i class="icon_set_1_icon-78"></i>
			</button>
		</form>
	</div><!-- End Search Menu -->
	
	<!-- Sign In Popup -->
	<div id="sign-in-dialog" class="zoom-anim-dialog mfp-hide">
		<div class="small-dialog-header">
			<h3>Sign In</h3>
		</div>
		<form>
			<div class="sign-in-wrapper">
				<a href="#0" class="social_bt facebook">Login with Facebook</a>
				<a href="#0" class="social_bt google">Login with Google</a>
				<div class="divider"><span>Or</span></div>
				<div class="form-group">
					<label>Email</label>
					<input type="email" class="form-control" name="email" id="email">
					<i class="icon_mail_alt"></i>
				</div>
				<div class="form-group">
					<label>Password</label>
					<input type="password" class="form-control" name="password" id="password" value="">
					<i class="icon_lock_alt"></i>
				</div>
				<div class="clearfix add_bottom_15">
					<div class="checkboxes float-start">
						<label class="container_check">Remember me
                          <input type="checkbox">
                          <span class="checkmark"></span>
                        </label>
					</div>
					<div class="float-end"><a id="forgot" href="javascript:void(0);">Forgot Password?</a></div>
				</div>
				<div class="text-center"><input type="submit" value="Log In" class="btn_login"></div>
				<div class="text-center">
					Don’t have an account? <a href="javascript:void(0);">Sign up</a>
				</div>
				<div id="forgot_pw">
					<div class="form-group">
						<label>Please confirm login email below</label>
						<input type="email" class="form-control" name="email_forgot" id="email_forgot">
						<i class="icon_mail_alt"></i>
					</div>
					<p>You will receive an email containing a link allowing you to reset your password to a new preferred one.</p>
					<div class="text-center"><input type="submit" value="Reset Password" class="btn_1"></div>
				</div>
			</div>
		</form>
		<!--form -->
	</div>
	
		<script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
	<script src="/resources/assets/js/common_scripts_min.js"></script>
	<script src="/resources/assets/js/functions.js"></script>
  </body>
</html>
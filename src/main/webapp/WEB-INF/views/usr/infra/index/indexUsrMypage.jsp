<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">


<%@include file="../include/head.jsp"%>
<%@include file="../include/header.jsp"%>


	<section class="parallax-window" data-parallax="scroll" data-image-src="/resources/assets/img/background_img/back5.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1 opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.4)">
			<div class="animated fadeInDown">
				<h1>이용 기록</h1>
				<p></p>
			</div>
		</div>
	</section>
	<!-- End section -->

	<main>
		<div id="position">
			<div class="container">
				<ul>
					<li><a href="#">Home</a>
					</li>
					<li><a href="#">Category</a>
					</li>
					<li>Page active</li>
				</ul>
			</div>
		</div>
		<!-- End Position -->

		<div class="margin_60 container">
			<div id="tabs" class="tabs">
				<nav>
					<ul>
						<li><a href="#section-1" class="icon-booking"><span>기차</span></a>
						</li>
						<li><a href="#section-2" class="icon-settings"><span>프로필</span></a>
						</li>
					</ul>
				</nav>
				<div class="content">
 
					<section id="section-1">

						<div class="strip_booking">
							<div class="row">
								<div class="col-lg-2 col-md-2">
									<div class="date">
										<span class="month">기차표</span>
										<span class="day"><strong>1</strong></span>
									</div>
								</div>
								<div class="col-lg-6 col-md-5">
									<h3 class="tours_booking">서울->부산<span style="color: red;">성인 2명</span></h3>
								</div>
								<div class="col-lg-2 col-md-3">
									<ul class="info_booking">
										<li><strong style="color: sienna;">출발</strong> 2021년 10월 30일</li>
										<li><strong style="color: sienna;">도착</strong> 2021년 11월 12일</li>
									</ul>
								</div>
								<div class="col-lg-2 col-md-2">
									<img src="/resources/assets/img/station/busan1.jpg" width="193px" height="88px" alt="">
									</div>
								</div>
							</div>
							<!-- End row -->
						<!-- End strip booking -->

						<div class="strip_booking">
							<div class="row">
								<div class="col-lg-2 col-md-2">
									<div class="date">
										<span class="month">기차표</span>
										<span class="day"><strong>2</strong></span>
									</div>
								</div>
								<div class="col-lg-6 col-md-5">
									<h3 class="tours_booking">강원도->안양<span style="color: red;">성인 1명<br>아동 2명</span></h3>
								</div>
								<div class="col-lg-2 col-md-3">
									<ul class="info_booking">
										<li><strong style="color: sienna;">출발</strong> 2021년 12월 7일</li>
										<li><strong style="color: sienna;">도착</strong> 2021년 12월 15일</li>
									</ul>
								</div>
								<div class="col-lg-2 col-md-2">
									<img src="/resources/assets/img/station/anyang.jpg" width="193px" height="88px" alt="">
									
									</div>
								</div>
							</div>
							<!-- End row -->
						<!-- End strip booking -->

						<div class="strip_booking">
							<div class="row">
								<div class="col-lg-2 col-md-2">
									<div class="date">
										<span class="month">기차표</span>
										<span class="day"><strong>3</strong></span>
									</div>
								</div>
								<div class="col-lg-6 col-md-5">
									<h3 class="tours_booking">부산->행신<span style="color: red;">성인 1명</span></h3>
								</div>
								<div class="col-lg-2 col-md-3">
									<ul class="info_booking">
										<li><strong style="color: sienna;">출발</strong> 2022년 1월 2일</li>
										<li><strong style="color: sienna;">도착</strong> 2022년 1월 5일</li>
									</ul>
								</div>
								<div class="col-lg-2 col-md-2">
									<img src="/resources/assets/img/station/haengsin.jpg" width="193px" height="88px" alt="">
									</div>
								</div>
							</div>
							<!-- End row -->
						<!-- End strip booking -->

						<div class="strip_booking">
							<div class="row">
								<div class="col-lg-2 col-md-2">
									<div class="date">
										<span class="month">기차표</span>
										<span class="day"><strong>4</strong></span>
									</div>
								</div>
								<div class="col-lg-6 col-md-5">
									<h3 class="tours_booking">강남->거제도<span style="color: red;">성인 4명</span></h3>
								</div>
								<div class="col-lg-2 col-md-3">
									<ul class="info_booking">
										<li><strong style="color: sienna;">출발</strong> 2022년 2월 17일</li>
										<li><strong style="color: sienna;">도착</strong> 2022년 2월 20일</li>
									</ul>
								</div>
								<div class="col-lg-2 col-md-2">
									<img src="/resources/assets/img/station/geoje.jpg" width="193px" height="88px" alt="">
									</div>
								</div>
							</div>
						<!-- End strip booking -->

					</section>
					<!-- End section 1 -->



					<section id="section-3">
						<div class="row">
							<div class="col-md-6">
								<h4>Your profile</h4>
								<ul id="profile_summary">
									<li>이메일<span>only new@clara.com</span>
									</li>
									<li>성 <span>신</span>
									</li>
									<li>이름<span>형만</span>
									</li>
									<li>핸드폰<span>010-1111-2222</span>
									</li>
									<li>생 년 월 일<span>13/04/1975</span>
									</li>
									<li><span>24 Rue de Rivoli</span>
									</li>
									<li>주소 <span>일본</span>
									</li>
									<li>우편 번호 <span>11077</span>
									</li>
									<li>나라 <span>일본</span>
									</li>
								</ul>
							</div>
							<div class="col-md-6">
								<p>
								<img src="resources/assets/img/JA.jpg" alt="Image" class="img-fluid styled profile_pic">
								</p>
							</div>
						</div>
						<!-- End row -->

						<div class="divider"></div>

						<div class="row">
							<div class="col-md-12">
								<h4>프로필 수정</h4>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>성</label>
									<input class="form-control" name="first_name" id="first_name" type="text">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>이름</label>
									<input class="form-control" name="last_name" id="last_name" type="text">
								</div>
							</div>
						</div>
						<!-- End row -->

						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>번호</label>
									<input class="form-control" name="email_2" id="email_2" type="text">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>생년월일 <small>(dd/mm/yyyy)</small>
									</label>
									<input class="form-control" name="email" id="email" type="text">
								</div>
							</div>
						</div>
						<!-- End row -->

						<hr>
						<div class="row">
							<div class="col-md-6" style="float:left">
								<div class="form-group">
									<label>주소</label>
									<input class="form-control" name="first_name" id="first_name" type="text">
								</div>
							</div>
								<div class="col-md-6" style="float:left">
									<div class="form-group">
										<label>상세주소</label>
										<input class="form-control" name="first_name" id="first_name" type="text">
									</div>
								</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>우편번호</label>
									<input class="form-control" name="email" id="email" type="text">
								</div>
							</div>
						</div>
						<!-- End row -->

						<hr>
						<h4>프로필 사진</h4>
						<div class="form-inline upload_1">
							<div class="form-group">
								<input type="file" name="files[]" id="js-upload-files" multiple>
							</div>
							<button type="submit" class="btn_1 green" id="js-upload-submit">사진 업로드</button>
						</div>
							<!-- Drop Zone -->
							<h5></h5>
							<div class="upload-drop-zone" id="drop-zone">
								사진 끌고오기
							</div>
							<!-- Progress Bar -->
							<!-- Upload Finished -->
							<!-- End Hidden on mobiles -->

							<hr>
							<button type="submit" class="btn_1 green">Update Profile</button>
					</section>
					<!-- End section 4 -->

					</div>
					<!-- End content -->
				</div>
				<!-- End tabs -->
			</div>
			<!-- end container -->
	</main>
	<!-- End main -->

	<footer class="revealed">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3>Need help?</h3>
                    <a href="tel://004542344599" id="phone">+45 423 445 99</a>
                    <a href="mailto:help@citytours.com" id="email_footer">help@citytours.com</a>
                </div>
                <div class="col-md-3">
                    <h3>About</h3>
                    <ul>
                        <li><a href="#">About us</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Login</a></li>
                        <li><a href="#">Register</a></li>
                         <li><a href="#">Terms and condition</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h3>Discover</h3>
                    <ul>
                        <li><a href="#">Community blog</a></li>
                        <li><a href="#">Tour guide</a></li>
                        <li><a href="#">Wishlist</a></li>
                         <li><a href="#">Gallery</a></li>
                    </ul>
                </div>
                <div class="col-md-2">
                    <h3>Settings</h3>
                    <div class="styled-select">
                        <select name="lang" id="lang">
                            <option value="English" selected>English</option>
                            <option value="French">French</option>
                            <option value="Spanish">Spanish</option>
                            <option value="Russian">Russian</option>
                        </select>
                    </div>
                    <div class="styled-select">
                        <select name="currency" id="currency">
                            <option value="USD" selected>USD</option>
                            <option value="EUR">EUR</option>
                            <option value="GBP">GBP</option>
                            <option value="RUB">RUB</option>
                        </select>
                    </div>
                </div>
            </div><!-- End row -->
            <div class="row">
                <div class="col-md-12">
                    <div id="social_footer">
                        <ul>
                            <li><a href="#"><i class="icon-facebook"></i></a></li>
                            <li><a href="#"><i class="icon-twitter"></i></a></li>
                            <li><a href="#"><i class="icon-google"></i></a></li>
                            <li><a href="#"><i class="icon-instagram"></i></a></li>
                            <li><a href="#"><i class="icon-pinterest"></i></a></li>
                            <li><a href="#"><i class="icon-vimeo"></i></a></li>
                            <li><a href="#"><i class="icon-youtube-play"></i></a></li>
                        </ul>
                        <p>© Citytours 2022</p>
                    </div>
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </footer><!-- End footer -->

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
	<!-- /Sign In Popup -->

	<!-- Common scripts -->
	<script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
	<script src="/resources/assets/js/common_scripts_min.js"></script>
	<script src="/resources/assets/js/functions.js"></script>

	<!-- Specific scripts -->
	<script src="/resources/assets/js/tabs.js"></script>
	<script>
		new CBPFWTabs(document.getElementById('tabs'));
	</script>
	<script>
		$('.wishlist_close_admin').on('click', function (c) {
			$(this).parent().parent().parent().fadeOut('slow', function (c) {});
		});
	</script>

</body>

</html>
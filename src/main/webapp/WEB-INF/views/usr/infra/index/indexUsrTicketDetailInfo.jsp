<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<%@include file="../include/head.jsp"%>
<%@include file="../include/header.jsp"%>

	<section class="parallax-window" data-parallax="scroll"  data-natural-width="1400" data-natural-height="470">
<!-- 	data-image-src="/resources/assets/img/banner/spring.webp" -->
		<div class="parallax-content-2">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<span class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class=" icon-star-empty"></i></span>
						<h1>[전주] 지식공간 서유구와빙허각</h1>
						<span>서유구와 빙허각</span>
					</div>
					<div class="col-md-4">
						<div id="price_single_main" class="hotel">
							from/per night <span><sup>$</sup>95</span>
						</div>
					</div>
				</div>
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

		<div class="collapse" id="collapseMap">
			<div id="map" class="map"></div>
		</div>
		<!-- End Map -->

		<div class="container margin_60">
			<div class="row">
				<div class="col-lg-12" id="single_tour_desc">
					
					<p class="d-block d-lg-none"><a class="btn_map" data-bs-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
					</p>
					<!-- Map button for tablets/mobiles -->
					<div id="Img_carousel" class="slider-pro">
						<div class="sp-slides">

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="/resources/assets/img/detailsSlide/detailSlide1.jpg" data-src="/resources/assets/img/detailsSlide/detailSlide1.jpg" data-small="/resources/assets/img/detailsSlide/detailSlide1.jpg" data-medium="/resources/assets/img/detailsSlide/detailSlide1.jpg" data-large="/resources/assets/img/detailsSlide/detailSlide1.jpg" data-retina="/resources/assets/img/detailsSlide/detailSlide1.jpg">
							</div>
							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="/resources/assets/img/detailsSlide/detailSlide2.png" data-src="/resources/assets/img/detailsSlide/detailSlide2.png" data-small="/resources/assets/img/detailsSlide/detailSlide2.png" data-medium="/resources/assets/img/detailsSlide/detailSlide2.png" data-large="/resources/assets/img/detailsSlide/detailSlide2.png" data-retina="/resources/assets/img/detailsSlide/detailSlide2.png">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="/resources/assets/img/detailsSlide/detailSlide3.jpg" data-src="/resources/assets/img/detailsSlide/detailSlide3.jpg" data-small="/resources/assets/img/detailsSlide/detailSlide3.jpg" data-medium="/resources/assets/img/detailsSlide/detailSlide3.jpg" data-large="/resources/assets/img/detailsSlide/detailSlide3.jpg" data-retina="/resources/assets/img/detailsSlide/detailSlide3.jpg">
							</div>
						</div>
						<div class="sp-thumbnails">
							<img alt="Image" class="sp-thumbnail" src="/resources/assets/img/detailsSlide/detailSlide1.jpg">
							<img alt="Image" class="sp-thumbnail" src="/resources/assets/img/detailsSlide/detailSlide2.png">
							<img alt="Image" class="sp-thumbnail" src="/resources/assets/img/detailsSlide/detailSlide3.jpg">
						</div>
					</div>
					<hr>

					<div id="single_tour_feat" style="border-top:2px solid #555; padding-top:20px">
						<ul>
							<li><i class="icon_set_2_icon-116"></i>Plasma TV</li>
							<li><i class="icon_set_1_icon-86"></i>Free Wifi</li>
							<li><i class="icon_set_2_icon-110"></i>Poll</li>
							<li><i class="icon_set_1_icon-59"></i>Breakfast</li>
							<li><i class="icon_set_1_icon-22"></i>Pet allowed</li>
							<li><i class="icon_set_1_icon-13"></i>Accessibiliy</li>
							<li><i class="icon_set_1_icon-27"></i>Parking</li>
						</ul>
					</div>
					<div class="row" style="justify-content: space-around;">
						<div class="col-lg-9" >
<!-- 						style="background-image: url(/resources/assets/img/h1.jpg); background-size: cover;" -->
						<div >
						<img src="/resources/assets/img/detail/Detail1_1.jpg" alt="Image" style="width: 98%;">
						<img src="/resources/assets/img/detail/Detail1_2.jpg" alt="Image">
						<img src="/resources/assets/img/detail/Detail1_3.jpg" alt="Image">
						<img src="/resources/assets/img/detail/Detail1_4.jpg" alt="Image">
						<img src="/resources/assets/img/detail/Detail1_5.jpg" alt="Image">
						<img src="/resources/assets/img/detail/Detail1_6.jpg" alt="Image">
						<img src="/resources/assets/img/detail/Detail1_7.jpg" alt="Image">
						</div>
							<p>
														이용안내
							* 당일 구매 당일 사용 가능
							<br>
							* 현장 무인발권기에서 구매정보 입력 후 입장권 발권
							<br>
							<br>
							★ 해당 시설은 입장시설업체와 연동되어있는 티켓으로 영업일 외 구매시 즉시사용이 어려울 수 있습니다
							<br>
							★ ( 평일 09:00 ~ 18:00, 주말/공휴일 제외 )
							<br>
							<br>
							취소/환불 규정
							<br>
							아래규정은 특별규정약관으로 실제 이용시설들과 수수료규정이 상이합니다.
							<br>
							<br>
							-단품만 구매시 예약일 날짜로 영업일 기준 +5일내 에만 취소 환불처리 가능합니다. (이외 경우는 연장 및 취소, 환불처리 불가)
							<br>
							<br>
							- 미사용티켓은 변경 및 취소환불처리가 불가합니다.
							<br>
							- 상품유효기간과는 무관하게 지정날짜에만 이용하셔야하며
							<br>
							지정날짜외 입장시에는 별도 문의부탁드립니다.
							<br>
							<br>
							-본 레저/티켓 정보는 야놀자에서 제공합니다.
							<br>
							야놀자 고객센터정보
							<br>
							<br>
							-문의전화 : 1644-1346 (야놀자 고객센터)
							<br>
							-상담시간 : 09:00~18:00 (연중무휴)
							<br>
							업체 정보
							<br>
							* 주소: 전북 전주시 완산구 향교길 104 1층
							<br>
							* 문의전화: 063-291-2583
							<br>
							* 주차정보: 주차불가
							<br>
							<br>
							운영정보는 현장 상황에 따라 변동될 수 있습니다.
							</p>
							
							<div class="row">
								<div class="col-md-6" style="font-size:20px;">
								<h3></h3>
									<p><i class="icon-login-1"></i>운영시간: 11:00시 ~ 18:00시 까지</p>
									<br>
<!-- 									<P><i class="icon-logout-1"></i>체크아웃 : 18:30까지</P> -->
									<br>
<!-- 									<p><i class="icon-info-1"></i>취소/선결제</p><p>숙소 유형에 따라 취소 및 선결제 정책이 달라집니다. 옵션을 선택할 때는 반드시 예약조건을 확인해주시기 바랍니다.</p> -->
									<br>
<!-- 									<p><i class="icon-user-5"></i>연령제한</p><p>만 19세 이상만 체크인 가능합니다</p> -->
								</div>
							</div>
							<!-- End row  -->
						</div>
						<!-- End col-md-9  -->
					</div>
					<!-- End row  -->

					<hr>

					<div class="row">
						
						
						<!-- End col-md-9  -->
					</div>
					<!-- End row  -->

					<hr>

					<div class="row">
						<div class="col-lg-3">
							<h3>Reviews</h3>
							<a href="#" class="btn_1 add_bottom_30" data-bs-toggle="modal" data-bs-target="#myReview">Leave a review</a>
						</div>
						<div class="col-lg-9">
							<div id="score_detail"><span>7.5</span>Good <small>(Based on 34 reviews)</small>
							</div>
							<!-- End general_rating -->
							<div class="row" id="rating_summary">
								<div class="col-md-6">
									<ul>
										<li>Position
											<div class="rating">
												<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</div>
										</li>
										<li>Comfort
											<div class="rating">
												<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i>
											</div>
										</li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul>
										<li>Price
											<div class="rating">
												<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</div>
										</li>
										<li>Quality
											<div class="rating">
												<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<!-- End row -->
							<hr>
							<div class="review_strip_single">
								<img src="img/avatar1.jpg" alt="Image" class="rounded-circle">
								<small> - 10 March 2015 -</small>
								<h4>Jhon Doe</h4>
								<p>
									"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus."
								</p>
								<div class="rating">
									<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
								</div>
							</div>
							<!-- End review strip -->

							<div class="review_strip_single">
								<img src="img/avatar2.jpg" alt="Image" class="rounded-circle">
								<small> - 10 March 2015 -</small>
								<h4>Jhon Doe</h4>
								<p>
									"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus."
								</p>
								<div class="rating">
									<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
								</div>
							</div>
							<!-- End review strip -->

							<div class="review_strip_single last">
								<img src="img/avatar3.jpg" alt="Image" class="rounded-circle">
								<small> - 10 March 2015 -</small>
								<h4>Jhon Doe</h4>
								<p>
									"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus."
								</p>
								<div class="rating">
									<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
								</div>
							</div>
							<!-- End review strip -->
						</div>
					</div>
				</div>
				<!--End  single_tour_desc-->

				
			</div>
			<!--End row -->
		</div>
		<!--End container -->
        
        <div id="overlay"></div>
		<!-- Mask on input focus -->
    
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

	<!-- Modal Review -->
	<div class="modal fade" id="myReview" tabindex="-1" role="dialog" aria-labelledby="myReviewLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">Write your review</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
					<form method="post" action="assets/review_hotel.php" name="review_hotel" id="review_hotel">
						<input name="hotel_name" id="hotel_name" type="hidden" value="Mariott Hotel Paris">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input name="name_review" id="name_review" type="text" placeholder="Your name" class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input name="lastname_review" id="lastname_review" type="text" placeholder="Your last name" class="form-control">
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input name="email_review" id="email_review" type="email" placeholder="Your email" class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<select class="form-select" name="room_type_review" id="room_type_review">
										<option value="">Select room type</option>
										<option value="Single room">Single Room</option>
										<option value="Double Room">Double Room</option>
										<option value="King double room">King Double Room</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Cleanliness</label>
									<select class="form-select" name="cleanliness_review" id="cleanliness_review">
										<option value="">Please review</option>
										<option value="Low">Low</option>
										<option value="Sufficient">Sufficient</option>
										<option value="Good">Good</option>
										<option value="Excellent">Excellent</option>
										<option value="Superb">Super</option>
										<option value="Not rated">I don't know</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Comfort</label>
									<select class="form-select" name="comfort_review" id="comfort_review">
										<option value="">Please review</option>
										<option value="Low">Low</option>
										<option value="Sufficient">Sufficient</option>
										<option value="Good">Good</option>
										<option value="Excellent">Excellent</option>
										<option value="Superb">Super</option>
										<option value="Not rated">I don't know</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Price</label>
									<select class="form-select" name="price_review" id="price_review">
										<option value="">Please review</option>
										<option value="Low">Low</option>
										<option value="Sufficient">Sufficient</option>
										<option value="Good">Good</option>
										<option value="Excellent">Excellent</option>
										<option value="Superb">Super</option>
										<option value="Not rated">I don't know</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Quality</label>
									<select class="form-select" name="quality_review" id="quality_review">
										<option value="">Please review</option>
										<option value="Low">Low</option>
										<option value="Sufficient">Sufficient</option>
										<option value="Good">Good</option>
										<option value="Excellent">Excellent</option>
										<option value="Superb">Super</option>
										<option value="Not rated">I don't know</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="form-group">
							<textarea name="review_text" id="review_text" class="form-control" style="height:100px" placeholder="Write your review"></textarea>
						</div>
						<div class="form-group">
							<input type="text" id="verify_review" class=" form-control" placeholder="Are you human? 3 + 1 =">
						</div>
						<input type="submit" value="Submit" class="btn_1" id="submit-review">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End modal review -->

	<!-- Common scripts -->
	<script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
	<script src="/resources/assets/js/common_scripts_min.js"></script>
	<script src="/resources/assets/js/functions.js"></script>

	<!-- Gallery -->
	<script src="/resources/assets/js/jquery.sliderPro.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function ($) {
			$('#Img_carousel').sliderPro({
				width: 960,
				height: 500,
				fade: true,
				arrows: true,
				buttons: false,
				fullScreen: false,
				smallSize: 500,
				startSlide: 0,
				mediumSize: 1000,
				largeSize: 3000,
				thumbnailArrows: true,
				autoplay: false
			});
		});
	</script>

    <!-- DATEPICKER  -->
    <script>
    $(function() {
      'use strict';
      $('input.date-pick').daterangepicker({
          autoUpdateInput: false,
          opens: 'left',
          minDate:new Date(),
          locale: {
              cancelLabel: 'Clear'
          }
      });
      $('input.date-pick').on('apply.daterangepicker', function(ev, picker) {
          $(this).val(picker.startDate.format('MM-DD-YY') + ' > ' + picker.endDate.format('MM-DD-YY'));
      });
      $('input.date-pick').on('cancel.daterangepicker', function(ev, picker) {
          $(this).val('');
      });
    });
    </script>
	
	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>                      
	<script src="/resources/assets/js/map.js"></script>
	<script src="/resources/assets/js/infobox.js"></script>
	
	<!-- Carousel -->
	<script>
		$('.carousel-thumbs-2').owlCarousel({
		loop:false,
		margin:5,
		responsiveClass:true,
		nav:false,
		responsive:{
			0:{
				items:1
			},
			600:{
				items:3
			},
			1000:{
				items:4,
				nav:false
			}
		}
	});
	</script>

	<!--Review modal validation -->
	<script src="/resources/assets/validate.js"></script>
	
</body>

</html>
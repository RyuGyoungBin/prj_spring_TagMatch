<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<%@include file="../include/head.jsp"%>
<%@include file="../include/header.jsp"%>

	<section class="parallax-window" data-parallax="scroll"  data-natural-width="1400" data-natural-height="470" style="background-image:url(resources/assets/img/h3.jpg);background-size: cover;">
<!-- 	data-image-src="/resources/assets/img/banner/spring.webp" -->
		<div class="parallax-content-2">
			<div class="container" >
				<div class="row">
					<div class="col-md-8">
						<span class="rating" id="spotRating" style="font-size: 20px;font-weight: bold;"><c:out value="${spot.starRating }"/></span>
						<h1><c:out value="${spot.name}"></c:out></h1>
						<span><c:out value="${spot.addressDetail}"></c:out></span>
					</div>
					<div class="col-md-4">
						<div id="price_single_main" class="hotel">
							성인 입장권<span id="adultPrice"><c:out value="${spot.adultPrice}"></c:out></span><br>
							어린이 입장권<span id="childPrice"><c:out value="${spot.childPrice}"></c:out></span>
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
					<div id="single_tour_feat" style="border-top:2px solid #555; padding-top:20px">
						<ul>
							<c:forEach items="${info}" var="info" varStatus="statusUploaded">
							<li><i class="<c:out value="${info.iClass }" />"></i><c:out value="${info.info}" /></li>
							</c:forEach>
						</ul>
					</div>
					<p class="d-block d-lg-none"><a class="btn_map" data-bs-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
					</p>
					<!-- Map button for tablets/mobiles -->
										<div id="Img_carousel" class="slider-pro">
						<div class="sp-slides">

							<div class="sp-slide">
								<c:set var="type" value="1"/>		<!-- #-> -->
			        			<c:set var="name" value="uploadImg"/>		<!-- #-> -->
			        			<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
				        			<c:if test="${listUploaded.type eq type }">
										<img class="sp-image" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>">
									</c:if>
								</c:forEach>
							</div>
							<c:set var="type" value="2"/>		<!-- #-> -->
		        			<c:set var="name" value="uploadImgRoom"/>		<!-- #-> -->
		        			<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
			        			<c:if test="${listUploaded.type eq type }">
			        			<div class="sp-slide">
									<img class="sp-image" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>">
								</div>
								</c:if>
							</c:forEach>
						</div>
						<div class="sp-thumbnails">
						<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
								<img class="sp-thumbnail" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>">
						</c:forEach>
						</div>
					</div>
					<hr>

					<div class="row">
						<div class="col-lg-3">
							<h3>상세내용</h3>
						</div>
						<div class="col-lg-9">
							<p>
								<c:out value="${spot.detailText }"></c:out>
							</p>
						<div class="row">
								<div class="col-md-6" style="font-size:20px;">
								<h3></h3>
									<p><i class="icon-login-1"></i>개장시간 : <c:out value="${spot.openTime }"/>부터</p>
									<br>
									<P><i class="icon-logout-1"></i>폐장시간 : <c:out value="${spot.closedTime }"/>까지</P>
									<br>
									<p><i class="icon-info-1"></i>취소/선결제</p>
									<p>찾아오시는 길:<c:out value="${spot.address }"></c:out><c:out value="${spot.addressDetail }"></c:out></p>
								</div>
							</div>
						 
						</div>
						
						<!-- End col-md-9  -->
					</div>
					<!-- End row  -->

					<hr>

					<div class="row">
						<div class="col-lg-3">
							<h3>리뷰</h3>
							<a href="#" class="btn_1 add_bottom_30" data-bs-toggle="modal" data-bs-target="#myReview">리뷰작성하기</a>
						</div>
						<div class="col-lg-9">
							<hr>
							<div class="col-lg-9">
							<div id="score_detail"><span><c:out value="${spot.starRating }"/></span> 
							<small class="rating" id="reviewRating">
							</small>
							<small>(Based on <c:out value="${spot.cnt }"/> reviews)</small>
							</div>
							<hr>
							<c:set var="type" value="2"/>
							<c:forEach items="${feedback}" var="feedback" varStatus="statusUploaded">
								<c:if test="${feedback.type eq type && feedback.type_seq eq spot.spotUsr_seq}">
									<div class="review_strip_single">
										<small><c:out value="${feedback.date}"/></small>
										<h4><c:out value="${feedback.member_seq}"/></h4>
										<p>
											"<c:out value="${feedback.review}"/>"
										</p>
										<div class="rating" id="rating<c:out value="${feedback.seq}"/>">
										</div>
									</div>
								</c:if>
							</c:forEach>
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
		<form role="search" id="searchform" method="get" name="review_spot">
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
					<div class="text-center"><input type="button" value="Reset Password" class="btn_1"></div>
				</div>
			</div>
		</form>
		<!--form -->
	</div>
	<!-- /Sign In Popup -->	

	<!-- Modal Review -->
	<div class="modal fade" id="myReview" tabindex="-1" role="dialog" aria-labelledby="myReviewLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content" style="bottom: -150px;">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">리뷰 작성하기</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form method="post" action="assets/review_hotel.php" name="review_hotel" id="review_hotel">
						<input name="hotel_name" id="hotel_name" type="hidden" value="Mariott Hotel Paris">
							<div class="row">
							<div class="col-md-6" style="width: 100%;">
								<div class="form-group">
								<h3><입장권><br><c:out value="${spot.name}"></c:out></h3>
							</div>
							</div>
						</div>  
						<!-- End row -->
						<hr>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>별점 별점</label>
									<select class="form-select" name="starRating" id="starRating">
										<option value="">별점 선택</option>
										<option value="1">매우 불만족</option>
										<option value="2">불만족</option>
										<option value="3">보통</option>
										<option value="4">만족</option>
										<option value="5">매우 만족</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="form-group">
							<textarea name="review_text" id="review_text" class="form-control" style="height:100px" placeholder="리뷰를 작성해 주세요"></textarea>
							<input type="hidden" name="type" value="2">
							<input type="hidden" name="type_seq" id="type_seq">
							<input type="hidden" name="memberSeq" value="${sessionSeq }">
						</div>
						<button type="button" class="btn_1" id="btnInsert">등록하기</button>
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
		
	    // 단위마다 쉼표 추가하는 함수 ---------------------------------
	     document.addEventListener("DOMContentLoaded", function() {
        const priceElement = document.getElementById("adultPrice");
        const productPrice = parseFloat(priceElement.textContent.replace("원", "").replace(/,/g, "")); // 가격에서 쉼표 제거

        // 천 단위마다 쉼표 추가하는 함수  맨위 메인 가격
        function addCommasToPrice(price) {
            return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }

        priceElement.textContent = addCommasToPrice(productPrice) + "원";
    });
	     document.addEventListener("DOMContentLoaded", function() {
	         const priceElement = document.getElementById("childPrice");
	         const productPrice = parseFloat(priceElement.textContent.replace("원", "").replace(/,/g, "")); // 가격에서 쉼표 제거

	         // 천 단위마다 쉼표 추가하는 함수  맨위 메인 가격
	         function addCommasToPrice(price) {
	             return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	         }

	         priceElement.textContent = addCommasToPrice(productPrice) + "원";
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
	  $("#btnInsert").click(function(){
          $.ajax({
              type : "POST",            
              url : "/spotUsr",    
              data :{
            	"spotSeq" : <c:out value="${spot.seq}"/>,
				"type" : $("input[name=type]").val(),
				"review" : $("#review_text").val(),
				"starRating" : $("#starRating").val()
              },
              success:function(response){
  				if(response.rt == "success") {
  					alert("리뷰가 등록되었습니다.");
  					location.reload()
  				} else {
  					alert("리뷰등록에 실패했습니다.")
  					return false;
  				}
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
				alert("객실을 다시 선택해주세요.");
				return false;
  			}
  		})
  	});
	
	
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
		
		/* 별점 표시 부분 시작 */
		var spotrating = Math.floor(<c:out value="${spot.starRating }"/>);
		for(var i=0; i<spotrating ; i++){
			$("#reviewRating").append('<i class="icon-smile voted"></i>')
			$("#spotRating").append('<i class="icon-smile voted"></i>')
		}
		for(var j=0; j<5-i; j++){
			$("#reviewRating").append('<i class="icon-smile"></i>')
			$("#spotRating").append('<i class="icon-smile"></i>')
		}
	
		
	<c:forEach items="${feedback}" var="feedback" varStatus="statusUploaded">
		var reviewRating<c:out value="${feedback.seq }"/> = $("#rating<c:out value="${feedback.seq }"/>");
		var rating<c:out value="${feedback.seq }"/> = <c:out value="${feedback.starRating }"/>;
	</c:forEach>
	
	
	<c:forEach items="${feedback}" var="feedback" varStatus="statusUploaded">
		for(var i=0; i<rating<c:out value="${feedback.seq }"/> ; i++){
			reviewRating<c:out value="${feedback.seq }"/>.append('<i class="icon-smile voted"></i>')
		}
		for(var j=0; j<5-i; j++){
			reviewRating<c:out value="${feedback.seq }"/>.append('<i class="icon-smile"></i>');
		}
	</c:forEach>
	/* 별점 표시 부분 끝 */	

	</script>

	<!--Review modal validation -->
	<script src="/resources/assets/validate.js"></script>
	
</body>

</html>
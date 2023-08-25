<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">

<%@include file="../include/head.jsp"%>
<%@include file="../include/header.jsp"%> 

	<section class="parallax-window" data-parallax="scroll"  data-natural-width="1400" data-natural-height="470">
<!-- 	data-image-src="/resources/assets/img/banner/spring.webp" -->
		<div class="parallax-content-2">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<span class="rating" id="hotelRating">
						</span>
						<small>${hotel.starRating }</small>
						<h1>[<c:out value="${hotel.sido }" />] <c:out value="${hotel.name }"/></h1>
					</div>
					<div class="col-md-4">
						<div id="price_single_main" class="hotel">
							
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
			<div id="topBlank"> </div>
				<ul>

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
					<div id="single_tour_feat">
						<ul>
							<c:forEach items="${info}" var="info" varStatus="statusUploaded">
							<li><i class="<c:out value="${info.iClass }" />"></i><c:out value="${info.info }" /></li>
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
							<h3>Description</h3>
						</div>
						<div class="col-lg-9">
							<p>
								<c:out value="${hotel.detailText }"/>
							</p>
							
							<div class="row">
								<div class="col-md-6" style="font-size:20px;">
								<h3></h3>
									<p><i class="icon-login-1"></i>체크인 : <c:out value="${hotel.checkInTime }"/>부터</p>
									<br>
									<P><i class="icon-logout-1"></i>체크아웃 : <c:out value="${hotel.checkOutTime }"/>까지</P>
									<br>
									<p><i class="icon-info-1"></i>취소/선결제</p>
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
							<div id="score_detail"><span><c:out value="${hotel.starRating }"/></span> 
							<small class="rating" id="reviewRating">
							</small>
							<small>(Based on <c:out value="${hotel.cnt }"/> reviews)</small>
							</div>
							<!-- End general_rating -->
							<hr>
							<c:set var="type" value="1"/>
							<c:forEach items="${feedback}" var="feedback" varStatus="statusUploaded">
								<c:if test="${feedback.type eq type && feedback.type_seq eq hotel.hotelUsr_seq}">
									<div class="review_strip_single">
										<small><c:out value="${feedback.date }"/></small>
										<h4><c:out value="${feedback.member_seq }"/></h4>
										<p>
											"<c:out value="${feedback.review }"/>"
										</p>
										<div class="rating" id="rating<c:out value="${feedback.seq }"/>">
										</div>
									</div>
								</c:if>
							</c:forEach>
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

	<%@include file = "../include/footer.jsp"%>
	<!-- Modal Review -->
	<div class="modal fade" id="myReview" tabindex="-1" role="dialog" aria-labelledby="myReviewLabel" aria-hidden="true">
		<div class="modal-dialog" style="margin-top:150px;">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">리뷰 작성</h4>
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
									<input name="name_review" id="name_review" type="text" placeholder="이름" class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input name="email_review" id="email_review" type="email" placeholder="이메일" class="form-control">
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<select class="form-select" name="room_type_review" id="room_type_review">
										<option value="">객실 선택</option>
										<c:forEach items="${room}" var="room" varStatus="statusUploaded">
											<option value="<c:out value="${room.seq }"/>"><c:out value="${room.roomName }"/></option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<!-- End row -->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>별점</label>
									<select class="form-select" name="starRating" id="quality_review">
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
							<textarea name="review" id="review_text" class="form-control" style="height:100px" placeholder="리뷰 작성"></textarea>
						</div>
						<button type="button" id="btnInsert" class="btn_1" id="submit-review">등록</button>
						
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
	
	$("#btnInsert").on("click", function(){
		$("form[name=form]").attr("action", "/feedbackXdmInsert").submit();
		alert("리뷰가 등록되었습니다.");
	})
	$("#btnUpdate").on("click", function(){
		$("form[name=form]").attr("action", "/feedbackXdmUpdate").submit();
	})
	$("#btnDelete").on("click", function(){
		$("form[name=form]").attr("action", "/feedbackXdmDelete").submit();
	})
	$("#btnDelNy").on("click", function(){
		$("form[name=form]").attr("action", "/feedbackXdmUelete").submit();
	})
	
	
	
	
	
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
			var hotelrating = Math.floor(<c:out value="${hotel.starRating }"/>);
			for(var i=0; i<hotelrating ; i++){
				$("#hotelRating").append('<i class="icon-smile voted"></i>')
				$("#reviewRating").append('<i class="icon-smile voted"></i>')
			}
			for(var j=0; j<5-i; j++){
				$("#hotelRating").append('<i class="icon-smile"></i>');
				$("#reviewRating").append('<i class="icon-smile"></i>')
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
	</script>

	<!--Review modal validation -->
	<script src="/resources/assets/validate.js"></script>
	
</body>

</html>
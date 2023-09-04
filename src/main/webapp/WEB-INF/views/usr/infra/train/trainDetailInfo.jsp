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
								<div class="col-md-6 hotelDesc" >

									<p><i class="icon-login-1"></i>체크인 : <c:out value="${hotel.checkInTime }"/>부터</p>
									<br>
									<P><i class="icon-logout-1"></i>체크아웃 : <c:out value="${hotel.checkOutTime }"/>까지</P>
									<br>
									<p><i class="icon-info-1"></i>숙소정보 : 
<h3>주변정보</h3>
<p>신논현역 도보 3분
<p>강남역 도보 15분
<p>코엑스 차량 15분
<h3>기본 정보</h3>
<p>체크인 : 15:00 | 체크아웃 : 12:00
<p>무료 Wi-Fi
<p>전 객실 금연
<p>Bath Amenity (치약, 칫솔 제외)
<p>주차가능
<h3>인원 추가 정보</h3>
<p>슈페리어 더블 객실 엑스트라 베드 추가 시 최대 투숙 가능 인원 : 성인 2인+16세 미만 소인 2인 투숙 가능
<p>침구 추가 : 1채당 22,000원
<p>침대 추가 : 1개당 55,000원
<p>최대인원 초과불가
<p>현장 결제 및 추가비용 호텔 프론트 문의
<h3>투숙객 혜택</h3>
<p>Inbalance by Novotel 피트니스 및 실내 수영장 무료 이용
<p>수영장 이용 : 객실 1박당 1번 입장 가능
<h3>부대시설 정보</h3>
<p>더 스퀘어 (뷔페 레스토랑) / 2층 / 중식 : 12:00~14:30 / 석식 : 주중 18:00~21:00, 주말 : 17:30~21:00 / 중식&석식 수~일요일 운영 / 방문 전 사전예약 필수
<p>그랑아 / 1층
<p>앙뜨레 / 1층 / 11:30~22:00 (라스트 오더 21:10) / 중식, 석식 이용 가능
<p>로비 라운지 / 1층 / 10:00~22:00
<p>인룸 서비스 / 07:00~22:00
<p>비즈니스 센터
<p>인발란스 (수영장, 사우나, 헬스클럽, 골프연습장) / 3층 / 06:00~22:00
<p>수영장, 피트니스, 사우나 : 매월 첫째 주 월요일 휴관
<p>사우나, 피트니스는 15세 이상 이용 가능
<p>수영장 이용 시 5부제로 진행되며 프론트 데스크에서 예약 가능합니다
<p>피트니스 센터의 운동복, 양말, 가운, 수건은 당분간 대여해 드리지 않으므로 이용 시 본인 물품을 지참하여 이용 부탁드립니다
<h3>이그제큐티브 라운지 이용 안내</h3>
<p>이그제큐티브 라운지 혜택 포함 객실 예약 고객에 한하여 이용 가능 (외부 고객 이용 시 추가 요금 발생)
<p>이용 장소 : 프리미어 라운지 / 16층
<p>입장 제한 : 14세 이상 입장 가능
<p>운영시간 : 07:00~22:00
<p>애프터눈 티 : 15:00~16:00
<p>해피아워 : 17:00~19:00
<p>조식 : 07:00~10:30 (마감 30분 전까지 입장 시 이용 가능) / 이용 장소 : 더 스퀘어
<p>조식 및 해피아워 이용 시 인원수에 따라 2부제로 변경될 수 있습니다
<h3>조식 정보</h3>
<p>더 스퀘어 / 2층 / 07:00~10:30 (마지막 입장 가능 시간 10:00)
<p>1인 : 55,000원 (14세~성인), 35,000원 (만 4세~만 12세 / 2023년도 기준 : 2011년 01월 01일~2019년 12월 31일생 기준 적용)
<p>현장결제
<h3>취소 및 환불 규정</h3>
<p>체크인 기준 1일 전 18:00 이전 : 100% 환불
<p>체크인 기준 1일 전 18:00 이후~당일 : 환불불가
<p>취소, 환불시 수수료가 발생할 수 있습니다
<p>아래 객실은 예약 후 취소, 변경, 환불 불가합니다
<p>[레이트버드 19시 체크인] , [최저가] [19시 레이트버드 특가] 객실 예약 후 취소, 변경, 환불 불가
<h3>확인사항 및 기타</h3>
<p>침대 (엑스트라 베드) 추가시 객실이 좁을 수 있습니다
<p>해피아워 이용 시 만 18세 이하 입장 불가입니다
<p>최대인원 초과시 입실 불가합니다
<p>위의 정보는 호텔의 사정에 따라 변경될 수 있습니다
<p>해당 이미지는 실제와 상이 할 수 있습니다
<p>체크인 시 배정 또는 베드타입 미기재 상품은 특정객실과 베드타입을 보장하지 않습니다
<p>해당 객실가는 세금, 봉사료가 포함된 금액입니다
<p>미성년자는 보호자 동반없이 이용하실 수 없습니다
<p>아코르는 고객의 안전을 기하기 위해 위생 및 예방 조치를 강화했습니다
<p>ALLSAFE 라벨 인증은 아코르의 새로운 청결 및 예방 기준을 나타내며 전 세계 아코르 브랜드 호텔에서 해당 기준들이 충족되었음을 보증합니다
									
									</p>
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

<!-- review  section start -->
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
					<!-- review  section end -->
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
					<form method="post" action="" name="review_hotel" id="review_hotel">
						<input name="hotel_name" id="hotel_name" type="hidden" value="Mariott Hotel Paris">
<!-- 						<div class="row"> -->
<!-- 							<div class="col-md-6"> -->
<!-- 								<div class="form-group"> -->
<!-- 									<input name="name_review" id="name_review" type="text" placeholder="이름" class="form-control"> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="col-md-6"> -->
<!-- 								<div class="form-group"> -->
<!-- 									<input name="email_review" id="email_review" type="email" placeholder="이메일" class="form-control"> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
						<!-- End row -->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<select class="form-select" name="hotelRoom_seq" id="hotelRoom_seq">
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
							<textarea name="review" id="review_text" class="form-control" style="height:100px" placeholder="리뷰 작성"></textarea>
						</div>
						<button type="button" id="btnInsert" class="btn_1" >등록</button>
						
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
		alert("1");
		$("form[name=review_hotel]").attr("action", "/feedbackXdmInsert").submit();
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
		/* 별점 표시 부분 시작 */
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
		/* 별점 표시 부분 끝 */		
		
	</script>

	<!--Review modal validation -->
	<script src="/resources/assets/validate.js"></script>
	
</body>

</html>
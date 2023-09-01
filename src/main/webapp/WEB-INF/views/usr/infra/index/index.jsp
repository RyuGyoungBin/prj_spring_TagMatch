<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<!DOCTYPE html>
<html lang="ko">


<%@include file = "../include/head.jsp"%>
<%@include file = "../include/header.jsp"%>

	<section id="hero" class="background-image" data-background="url(resources/assets/img/mainTrain.jpg)">
	
        <div class="opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.6)">
        
            <div class="intro_title">
            
                <h3 class="animated fadeInDown">기차 여행 A to Z 는 여기에서! </h3>
                <p class="animated fadeInDown">기차 승차권 / 숙소 예약 / 모든 입장권</p>
                <a href="/trainUsrView" class="animated fadeInUp button_intro outline">기차 노선도 보러가기</a>                 
                <a href="/hotelUsrList" class="animated fadeInUp button_intro outline">숙소 보러가기</a> 
                <a href="/indexUsrTicket" class="animated fadeInUp button_intro outline">입장권 보러가기</a>
                <a href="/bookingUsrView" class="animated fadeInUp button_intro ">바로 예약하기</a>
            </div>  
            <div id="search_bar_container">
                <div class="container">
                    <div class="search_bar">
                        <span class="nav-facade-active" id="nav-search-in">
                            <span id="nav-search-in-content" style="">All tours</span>
                            <span class="nav-down-arrow nav-sprite"></span>
                            <select title="Search in" class="searchSelect" id="searchDropdownBox" name="tours_category">
                                <option value="All Tours" title="All Tours">한 눈에 보기</option>
                                <option value="TrainTickets" title="TrainTickets">승차권</option>
                                <option value="Accommodation" title="Accommodation">숙소</option>
                                <option value="Tickets" title="Tickets">입장권</option>
 
                            </select>
                        </span>
                        <div class="nav-searchfield-outer">
                            <input type="text" autocomplete="off" name="field-keywords" placeholder="Type your search terms ...." id="twotabsearchtextbox">
                        </div>
                        <div class="nav-submit-button">
                            <input type="submit" title="Cerca" class="nav-submit-input" value="Search">
                        </div>
                    </div>
                    <!-- End search bar-->
                </div>
            </div>
            <!-- /search_bar-->
        </div>
        <!-- End opacity-mask-->
    </section>
    <!-- End hero -->

	<main>
	<div class="container margin_60">
    
        <div class="main_title">
            <h2><span>Top</span> Accommodation</h2>
            <p>현재 가장 인기있는 숙소를 살펴보세요! </p>
        </div>
        
        <c:choose>
			<c:when test="${fn:length(list) eq 0}">
				<tr>
					<td class="text-center" colspan="9">There is no data!</td>
				</tr>	
			</c:when>
			
	           	<c:otherwise>
	           	<div class="overflow-hidden overflow-x-auto">
        
			        <div class="row">
			            <!-- 1번 -->
			            <c:forEach items="${list}" var="list">
				            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.2s">
				                <div class="tour_container">
			                    	<div class="img_container">
				                        <a href="/roomDetailInfo?seq=${list.seq}">
<<<<<<< HEAD
=======
<%-- 										    <c:out value="${list.name}"></c:out> --%>
>>>>>>> branch 'main' of https://github.com/RyuGyoungBin/prj_spring_TagMatch.git
											    <c:set var="type" value="1"/>    <!--  -->
	<%-- 										    <c:set var="seq" value="${list.seq }"/> --%>
										        <c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
											         <c:if test="${list.seq eq listUploaded.pseq && listUploaded.type eq 1}">
											            <img src="${listUploaded.path}${listUploaded.uuidName}" width="800" height="533" class="img-fluid" alt="Image">
										             </c:if>
										        </c:forEach>
										</a>
				                    </div>
				                    <div class="tour_title">
				                        <h3><strong>  <c:out value="${list.name }"/> </strong></h3>
				                        <div class="rating">
				                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
				                        </div><!-- end rating -->
				                        <div class="wishlist">
				                            <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
				                        </div><!-- End wish list-->
				                    </div>
				                </div><!-- End box tour -->
				            </div><!-- End col -->
			            </c:forEach>
			        </div><!-- End row -->
        </div>
	</c:otherwise>
</c:choose>
        
        
		<div class="d-flex justify-content-around">
        <p class="text-center nopadding">
            <a href="/hotelUsrList" class="btn_1 medium"><i class="icon-eye-7"></i>View hotel tours (144) </a>
        </p>
                <p class="text-center nopadding">
            <a href="pension02" class="btn_1 medium"><i class="icon-eye-7"></i>View pension tours (144) </a>
        </p>
                <p class="text-center nopadding">
            <a href="condo02" class="btn_1 medium"><i class="icon-eye-7"></i>View condo tours (144) </a>
        </p>
        </div>
    </div><!-- End container -->
    
    <div class="white_bg">
			<div class="container margin_60">
				<div class="main_title">
					<h2>Now <span>Popular</span> Train Tours</h2>
					<p>
						현재 가장 예약률이 높은 승차권 순이에요! 
					</p>
				</div>
				<div class="row add_bottom_45">
					<div class="col-lg-4 other_tours">
						<ul>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>서울 <-> 부산<span class="other_tours_price">$42</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>서울 <-> 강릉<span class="other_tours_price">$35</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>서울 <-> 여수<span class="other_tours_price">$20</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>서울 <-> 정동진<span class="other_tours_price">$26</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>서울 <-> 신경주<span class="other_tours_price">$26</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>서울 <-> 광주송정<span class="other_tours_price">$32</span></a>
							</li>
						</ul>
					</div>
					<div class="col-lg-4 other_tours">
						<ul>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>부산 <-> 천안아산(온양온천)<span class="other_tours_price">$48</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>부산 <-> 영등포<span class="other_tours_price">$55</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>부산 <-> 동대구<span class="other_tours_price">$76</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>김천 <-> 동대구	<span class="other_tours_price">$55</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>진주 <-> 서울<span class="other_tours_price">$24</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>진주 <->천안아산(온양온천) <span class="other_tours_price">$24</span></a>
							</li>
						</ul>
					</div>
					<div class="col-lg-4 other_tours">
						<ul>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>여수(엑스포) <-> 용산<span class="other_tours_price">$36</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>여수(엑스포) <-> 천안아산(온양온천)<span class="other_tours_price">$28</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>남원 <-> 용산<span class="other_tours_price">$44</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>청량리 <-> 안동<span class="other_tours_price">$56</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>부발 <-> 충주<span class="other_tours_price">$16</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>행신 <-> 나주<span class="other_tours_price">$26</span></a>
							</li>
						</ul>
					</div>
				</div>
				<!-- End row -->

				<div class="banner colored">
					<h4>ㄱㄴㄷㄹㅁㅂㅅ <span> 이벤트! </span></h4>
					<p>
						한 번도 경험해보지 못한 특가 상품! 지금 당장 이용해보세요!
					</p>
					<a href="single_tour.html" class="btn_1 white">Read more</a>
				</div>
				
				<div class="row">
					<div class="col-lg-3 col-md-6 text-center">
						<p>
							<a href="#"><img src="resources/assets/img/accommodation/hotel/event/event01.jpg" alt="Pic" class="img-fluid rounded"></a>
						</p>
						<h4><span>라마다 앙코르 바이 윈덤 천안호텔</span></h4>
						<p>천안 KTX 천안아산역 차량 10분거리</p>
						<p>113,000원~</p>
					</div>
					<div class="col-lg-3 col-md-6 text-center">
						<p>
							<a href="#"><img src="resources/assets/img/accommodation/hotel/event/event02.png" alt="Pic" class="img-fluid rounded"></a>
						</p>
						<h4><span>신라스테이 여수</span> </h4>
						<p>여수 엑스포역 KTX 차량 4분 거리</p>
						<p>115,000원~</p>
					</div>
					<div class="col-lg-3 col-md-6 text-center">
						<p>
							<a href="#"><img src="resources/assets/img/accommodation/hotel/event/event03.jpg" alt="Pic" class="img-fluid rounded"></a>
						</p>
						<h4><span>베스트 루이스 해밀턴 해운대</span></h4>
						<p>해운대해수욕장 7번출구 800m</p>
						<p>180,000원~</p>
					</div>
					<div class="col-lg-3 col-md-6 text-center">
						<p>
							<a href="#"><img src="resources/assets/img/accommodation/hotel/event/event04.jpg" alt="Pic" class="img-fluid rounded"></a>
						</p>
						<h4><span>군산 호텔 은파팰리스</span> </h4>
						<p>은파관광지 도보 3분</p>
						<p>155,000원~</p>
					</div>
				</div>
				<!-- End row -->
				
			</div>
			<!-- End container -->
		</div>
		<!-- End white_bg -->

		<section class="promo_full">
		
			<div class="promo_full_wp magnific">
			
			
				<div>
					<h3>내일로 두번째 이야기</h3>
					<p>
					 	"전 국민 누구나 즐기는 7일간의 자유 여행!" 	보다 더 자유롭고 편안해진 내일로를 경험해보세요.
					</p>
					<div class="background-video" style="height: 650px;"><i class="icon-play-circled2-1">
						<iframe width="100%" height="100%" src="https://www.youtube.com/embed/DeoukLCWJ-w" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"></iframe>
					</i></div>
				</div>
			</div>
		</section>
		<!-- End section -->


    </main>
	<!-- End main -->
	

<%@include file = "../include/footer.jsp"%>
<%@include file = "../include/script.jsp"%>

	<script>
		//Search bar
		$(function() {
			"use strict";
			$("#searchDropdownBox").change(function() {
				var Search_Str = $(this).val();
				//replace search str in span value
				$("#nav-search-in-content").text(Search_Str);
			});
		});
		
		
		//paging
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			$("form[name=formList]").attr("action", "hotelUsrList").submit();
		}
	</script>
	

  </body>
</html>